<?php
if (!defined("BASEPATH")) exit("No direct script access allowed");
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
class Branch_manager extends MX_Controller

{
	function __construct()
	{
		parent::__construct();
		$this->load->model('branch_manager_model', 'branch_manager');
	}
	function index()
	{
		$blog = $this->branch_manager->_getItems();
		$this->template->assign('provinces', $this->branch_manager->_getProvinces());
		$this->template->assign('blog', $blog);
		$this->template->assign('images_path', base_url() . 'upload/images/branch/');
	}

	// function importBranches(){
	// 	$branches = $this->branch_manager->_getLocations();
	// 	foreach($branches as $item){
	// 		$this->branch_manager->importNow($item);
	// 	}
	// }
	
	function process()
	{
		$action = $this->uri->segment(4);
		switch ($action) {
		

		case 'add-item':
			$result = $this->branch_manager->_addItem();
			break;

		case 'edit-item':
			$result = $this->branch_manager->_editItem();
			break;

		case 'delete-item':
			$result = $this->branch_manager->_deleteItem();
			break;
			
		case 'multiple-item-action':
			$result = $this->branch_manager->_multipleActionItem();
			break;

		case 'upload-cms-image':
			$result = $this->branch_manager->_uploadCMSImage();
			break;

		case 'upload-image':
			$type = $this->input->get('type');
			$result = $this->branch_manager->_uploadImage($type);
			break;

		case 'change-status':
			$result = $this->branch_manager->_changeStatus();
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
}
?>