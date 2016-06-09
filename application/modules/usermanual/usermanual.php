<?php  if (!defined("BASEPATH")) exit("No direct script access allowed");
/**49.144.15.14
 * Vii Framework
 *
 * @package			ViiFramework (libraries from CodeIgniter)
 * @author			ViiWorks Production Team
 * @copyright		Copyright (c) 2009 - 2011, ViiWorks Inc.
 * @website url 	http://www.viiworks.com/
 * @filesource
 *
 */
class Usermanual extends MX_Controller {
	function __construct()
	{
		parent::__construct();
		session_start();
		ini_set('memory_limit', "900M");
		$this->load->model('usermanual_model','usermanual');
		$this->load->helper('download');
		$this->load->helper('date');
		$this->load->helper('url');
	}
	function index(){
		$this->template->assign('images_path', base_url() . 'upload/images/usermanual/');
		$getAllMainCat = $this->usermanual->_getAllMainCat();
		$this->template->assign('main_cat' , $getAllMainCat);
		$getAllItem = $this->usermanual->_getAllItem();
		$this->template->assign('allItem' , $getAllItem);
		$subcat_list=$this->usermanual->_getSubcat();
		if ($subcat_list) {
			$this->template->assign('subcat_list', $subcat_list);
		}
		$usermanual = FCPATH._PDF_LOCATION_.'User Manual.pdf';
		$this->template->assign('pdffile',$usermanual);

		$pdfName = $this->usermanual->_getPdfName();
		$this->template->assign('pdfName',$pdfName);

		$directory = FCPATH._PDF_LOCATION_;
		$files = glob($directory . $pdfName.'.pdf');		
		if (!$files){
			$_SESSION['updates'] = 1;
		}
	}
	function sub_categories(){
		$subcat_list=$this->usermanual->_getSubcat();
		if ($subcat_list) {
			$this->template->assign('subcat_list', $subcat_list);
		}
		$maincat_list = $this->usermanual->_getAllMainCat();
		if($maincat_list){
		$this->template->assign('maincat_list' , $maincat_list);
		}
	}
	function main_categories(){
		$getAllMainCat = $this->usermanual->_getAllMainCat();
		$this->template->assign('main_cat' , $getAllMainCat);
	}
	function items(){
		$getAllItem = $this->usermanual->_getAllItem();
		$this->template->assign('allItem' , $getAllItem);
		$subcat_list=$this->usermanual->_getSubcat();
		if ($subcat_list) {
			$this->template->assign('subcat_list', $subcat_list);
		}
		$maincat_list = $this->usermanual->_getAllMainCat();
		if($maincat_list){
		$this->template->assign('maincat_list' , $maincat_list);
		}
	}
	function view(){
		$action = $this->uri->segment(4);
		$result = $this->usermanual->_getHelpDetails($action);
		$this->template->assign('item_list' , $result);
	}
	function process(){
		$_SESSION['updates'] = 1;
		$action = $this->uri->segment(4);
		switch ($action) {
			case 'addMainCat':
				$result = $this->usermanual->_addMainCat();
				break;
			case 'editMaincat':
				$result = $this->usermanual->_editMainCat();
				break;
			case 'deleteMainCat':
				$result = $this->usermanual->_deleteMainCat();
				break;
			case 'addItem':
				$result = $this->usermanual->_addItem();
				break;
			case 'editItem':
				$result = $this->usermanual->_editItem();
				break;
			case 'deleteItem':
				$result = $this->usermanual->_deleteItem();
				break;
			case 'add-usermanual-subcategory':
				$result = $this->usermanual->_addSubcategory();
				break;
			case 'edit-usermanual-subcategory':
				$result = $this->usermanual->_editSubcategory();
				break;
			case 'delete-usermanual-subcategory':
				$result = $this->usermanual->_deleteSubcategory();
				break;
			case 'upload-image':
				$type = $this->input->get('type');
				$result = $this->usermanual->_uploadImage($type);
				break;
			case 'upload-cms-image':
				$result = $this->usermanual->_uploadCMSImage();
				break;
			case 'multiple-item-action':
				$result = $this->usermanual->_multipleActionItem();
				break;
			default:
				break;
		}
			if ($result) {
				echo json_encode($result);
			}
			else echo 'false';
			exit(0);
	}
	function generatePdf(){
		// echo 'asdf';
		unset($_SESSION['updates']);
		$datestring = "%m%d%y";
		$item_list = $this->usermanual->_getAllItem();
		$subcat_list=$this->usermanual->_getSubcat();
		$maincat_list = $this->usermanual->_getAllMainCat();
		foreach($maincat_list as $key => $item){
			$data[]['maincat_name']= $item['maincat_name'];
			$count=0;
			foreach($item_list as $key3 => $item2){
				if($item2['id_usermanual_item_maincat'] == $item['id_usermanual_maincat']){
					$data[$key]['items'][$count]['item_name']= $item2['item_name'];
					$data[$key]['items'][$count]['item_description']= $item2['item_description'];
					$count++;
				}
			}
			foreach($subcat_list as $key1 => $item1){
				if($item['id_usermanual_maincat'] == $item1['id_usermanual_maincat']){
					$data[$key][]['subcat_name']= $item1['subcat_name'];
					$count1=0;
					foreach($item_list as $key2 => $item2){
						if($item1['id_usermanual_subcat'] == $item2['id_usermanual_subcat']){
							$data[$key][$key1]['items'][$count1]['item_name']= $item2['item_name'];
							$data[$key][$key1]['items'][$count1]['item_description']= $item2['item_description'];
							$count1++;
						}
					}
				}
			}
		}
		$this->load->model('core/pdf_model', 'pdf');
		// $filename = "User_Manual";
		$filename = "User_Manual_".mdate($datestring);
		$this->template->assign('pdfName',$filename);
		if ($data) {
			$this->pdf->pdf_usermanual($data, $filename);
		}
		$update_pdf_filename = $this->usermanual->pdfUpdate($filename);
	}
}
?>