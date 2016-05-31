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

class Usermanual_model extends CI_Model {
	var $error = array();
	var $temp_file_dir = './temp/images/usermanual/';
	var $temp_file_thumb_dir = './temp/images/usermanual/thumb/';
	var $upload_file_dir = './upload/images/usermanual/';
	var $upload_file_thumb_dir = './upload/images/usermanual/thumb/';
	var $temp_dir = './temp/images/usermanual/';
	var $temp_thumb_dir = './temp/images/usermanual/thumb/';
	var $upload_dir = './upload/images/usermanual/';
	var $upload_thumb_dir = './upload/images/usermanual/thumb/';
	function __construct()
	{
		parent::__construct();
		
	}


	function _getSubcat($action)
	{
		$this->db->select('s.*,m.*');
		$this->db->from('usermanual_subcat s');
		$this->db->join('usermanual_maincat m', 's.id_usermanual_maincat = m.id_usermanual_maincat','left');
		if($action){
			$this->db->where('s.id_usermanual_subcat', $action);
		}
		$this->db->order_by('s.date_add','asc');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			$result = $query->result_array();
			$return = array();
			foreach($result as $item){
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$return[] = $item;
			}
			return $return;
		}
		return false;
	}

	function _getAllMainCat(){
		$this->db->order_by('date_add', 'asc');
		$this->db->from('usermanual_maincat');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			$result = $query->result_array();
			$return = array();
			foreach($result as $item){
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$return[] = $item;
			}
			return $return;
		}
		return false;
	}
	function _addSubcategory(){
		$data = $this->input->post('data');
		$data = str_replace("<p><br></p>", "", $data);
		$data['date_add'] = date('Y-m-d H:i:s');
		$query = $this->db->insert('usermanual_subcat', $data);
		return true;
	}
	function _editSubcategory(){
		$data = $this->input->post('data');
		$where = $this->input->post('where');
		$data = str_replace("<p><br></p>", "", $data);
		$this->db->where($where);
		if($this->db->update('usermanual_subcat', $data)){
		return true;
		}
		else {
		$result = array();
		$result['error'] = array();
		$result['error'][] = "Failed to update Subcategory item.";
		return $result;
		}
	}
	function _deleteSubcategory(){
		$deleteid = $this->input->post('id_usermanual_subcat');
			if ($deleteid) {
				$this->load->model('core/dbtm_model', 'dbtm');
				if ($this->dbtm->deleteItem('id_usermanual_subcat', $deleteid, 'usermanual_subcat')) {
					return true;
				}
				else {
					$this->error[] = "Failed to delete subcategory.";
				}
			}
	}
	function _addMainCat(){
		$data = $this->input->post('data');
		$data['date_add'] = date('Y-m-d H:i:s');
		if ($this->db->insert('usermanual_maincat', $data)) {
			return true;
		}
		else {
			return false;
		}
	}
	function _editMainCat(){
		$data = $this->input->post('data');
		$where = $this->input->post('where');
		$data = str_replace("<p><br></p>", "", $data);
		$this->db->where($where);
		if($this->db->update('usermanual_maincat', $data)){
			return true;
		}
		else {
			$result = array();
			$result['error'] = array();
			$result['error'][] = "Failed to update Main Category item.";
			return $result;
		}
	}
	function _deleteMainCat(){
		$deleteid = $this->input->post('id_usermanual_maincat');
			if ($deleteid) {
				$this->load->model('core/dbtm_model', 'dbtm');
				if ($this->dbtm->deleteItem('id_usermanual_maincat', $deleteid, 'usermanual_maincat')) {
					return true;
				}
				else $this->error[] = "Failed to delete Main Category.";
			}
			else { //direct link access
				header('Location: ' . _BASE_URL_);
			}
	}
	function _getAllItem(){
		$this->db->select('i.*,m.*,s.*');
		$this->db->from('usermanual_items i');
		$this->db->join('usermanual_maincat m', 'm.id_usermanual_maincat = i.id_usermanual_item_maincat','left');
		$this->db->join('usermanual_subcat s', 's.id_usermanual_subcat = i.id_usermanual_subcat','left');
		$this->db->order_by('i.date_add','desc');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			$result = $query->result_array();
			$return = array();
			foreach($result as $item){
				$item['image_src_thumb_link'] = base_url() . $this->image_thumb_dir . $item['image_src'];
				$item['image_src_link'] = base_url() . $this->image_dir . $item['image_src'];
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$return[] = $item;
			}
			return $return;
		}
		return false;
	}
	function _getItemMain(){
		$this->db->select('i.*,m.*,s.*');
		$this->db->from('usermanual_items i');
		$this->db->join('usermanual_maincat m', 'm.id_usermanual_maincat = i.id_usermanual_item_maincat','left');
		$this->db->join('usermanual_subcat s', 's.id_usermanual_subcat = i.id_usermanual_subcat','left');
		$this->db->order_by('i.date_add','desc');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			$result = $query->result_array();
			$return = array();
			foreach($result as $item){
				$item['image_src_thumb_link'] = base_url() . $this->image_thumb_dir . $item['image_src'];
				$item['image_src_link'] = base_url() . $this->image_dir . $item['image_src'];
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$return[] = $item;
			}
			return $return;
		}
		return false;
	}
	function _getHelpDetails($action){
		$this->db->select('i.*, us.id_usermanual_subcat, us.subcat_name');
		$this->db->from('usermanual_items i');
		$this->db->where('i.id_usermanual_subcat', $action);
		$this->db->join('usermanual_subcat us', 'i.id_usermanual_subcat = us.id_usermanual_subcat');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			$result = $query->result_array();
			$return = array();
			foreach($result as $item){
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$subcat = $item['subcat_name'];
				$this->template->assign('subcatname', $subcat);
				$return[] = $item;
			}
			return $return;
		}
		return false;	}
	function _getItemSubCat(){
		$this->db->select('ui.id_usermanual_subcat, us.*');
		$this->db->from('usermanual_items ui');
		$this->db->join('usermanual_subcat us', 'ui.id_usermanual_subcat = us.id_usermanual_subcat');
		$query = $this->db->get();
		if ($query->num_rows()) {
			$result = $query->result_array();
			$return = array();
			foreach($result as $item) {
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$return[] = $item;
			}
			return $return;
		}
		return false;
	}
	function _addItem(){
		$data = $this->input->post('data');
		if ($data) {
			$data['date_add'] = date('Y-m-d H:i:s');
			$data = str_replace("<p><br></p>", "", $data);
			$result = $this->db->insert('usermanual_items', $data);
			if ($result) {
				if (!file_exists($this->upload_dir . $data['image_src'])) {
					if (!is_dir($this->upload_dir)) {
						mkdir($this->upload_dir, 0777, TRUE);
					}
					if (!copy($this->temp_dir . $data['image_src'], $this->upload_dir . $data['image_src'])) {
						$result['error'][] = "Failed to copy item to active folder.";
					}
					if (!unlink($this->temp_dir . $data["image_src"])) {
						$result['error'][] = "Failed to delete item to temporary folder.";
					}
					if (!copy($this->temp_thumb_dir . $data['image_src'], $this->upload_thumb_dir . $data['image_src'])) {
						$result['error'][] = "Failed to copy item to active folder.";
					}
					if (!unlink($this->temp_thumb_dir . $data["image_src"])) {
						$result['error'][] = "Failed to delete item to temporary folder.";
					}
				}
				return true;
			}
			else {
				return $result;
			}
		}
		else {
			header('Location: ' . _BASE_URL_);
		}
	}
	function _editItem(){
		$data = $this->input->post('data');
		$where = $this->input->post('where');
		$data = str_replace("<p><br></p>", "", $data);
		$this->db->where($where);
		if($this->db->update('usermanual_items', $data)){
			return true;
		}
		else {
				$result = array();
				$result['error'] = array();
				$result['error'][] = "Failed to update item.";
				return $result;
			}
	}
	function _deleteItem(){
		$deleteid = $this->input->post('id_usermanual_items');
			if ($deleteid) {
				$this->load->model('core/dbtm_model', 'dbtm');
				if ($this->dbtm->deleteItem('id_usermanual_items', $deleteid, 'usermanual_items')) {
					return true;
				}
				else $this->error[] = "Failed to delete an Item.";
			}
			else { //direct link access
				header('Location: ' . _BASE_URL_);
			}
	}

	function _uploadImage($type = false)
	{
		/*
			- type is for category or items 
			ex:
				banner_itm - for item image dimensions will be used
		*/
		$this->load->model('core/uploader_model', 'uploader');
		$this->uploader->_uploadImage($this->temp_dir, $this->temp_thumb_dir, false, false, $type);
	}
	function _uploadCMSImage()
	{
		$this->load->model('core/uploader_model', 'uploader');
		$this->uploader->_uploadCMSImage($this->upload_dir);
	}

	function _multipleActionItem()
	{
		$multiple_id = explode(",", $this->input->post('multiple_id'));
		$action_type = $this->input->post('action_type');
		switch ($action_type) {
		case 'delete':
			foreach($multiple_id as $key => $item) {
				$deleteid = $item;
				if ($deleteid) {
					$this->db->flush_cache();
					$this->load->model('core/dbtm_model', 'dbtm');
					$this->db->where('id_usermanual_items', $deleteid);
					$to_delete = $this->db->get('usermanual');
					$data = $to_delete->row_array();
					if (file_exists($this->upload_dir . $data['image_src'])) {
						if (!unlink($this->upload_dir . $data['image_src'])) {
							$result['error'][] = "Failed to delete image to temporary folder.";
						}
						if (!unlink($this->upload_thumb_dir . $data['image_src'])) {
							$result['error'][] = "Failed to delete thumb image to temporary folder.";
						}
					}
					$result = $this->dbtm->deleteItem('id_usermanual_items', $deleteid, 'usermanual');
					if (!$result) {
						$result = array();
						$result['error'] = array();
						$result['error'][] = "Failed to delete item/s.";
						return $result;
					}
				}
			}
			return true;
			break;
		default:
			$result = array();
			$result['error'] = array();
			$result['error'][] = "Failed to perform action. Please try again.";
			return $result;
			break;
		}
	}
	function pdfUpdate($filename){
		// echo filename;
		// exit(0);
		$data['value'] = $filename;
		$this->db->where('name','latest_pdf_name');
		$this->db->update('config',$data);
		// exit(0);
	}

	function _getPdfName(){
		$this->db->select('value');
		$this->db->from('config');
		$this->db->where('name', 'latest_pdf_name');
		$query = $this->db->get();
		$row = $query->row();
		$return = $row->value;
		return $return;
	}
}

?>