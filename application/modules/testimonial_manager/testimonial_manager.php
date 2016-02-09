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
class Testimonial_manager extends MX_Controller

{
	function __construct()
	{
		parent::__construct();
		$this->load->model('testimonial_manager_model', 'testimonial_manager');
	}
	function index()
	{
		$blog = $this->testimonial_manager->_getItems();
		$this->template->assign('blog', $blog);
		$this->template->assign('images_path', base_url() . 'upload/images/testimonial/');
	}
	
	function process()
	{
		$action = $this->uri->segment(4);
		switch ($action) {
		case 'add-item':
			$result = $this->testimonial_manager->_addItem();
			break;

		case 'edit-item':
			$result = $this->testimonial_manager->_editItem();
			break;

		case 'delete-item':
			$result = $this->testimonial_manager->_deleteItem();
			break;
			
		case 'multiple-item-action':
			$result = $this->testimonial_manager->_multipleActionItem();
			break;

		case 'upload-cms-image':
			$result = $this->testimonial_manager->_uploadCMSImage();
			break;

		case 'upload-image':
			$type = $this->input->get('type');
			$result = $this->testimonial_manager->_uploadImage($type);
			break;

		case 'change-status':
			$result = $this->testimonial_manager->_changeStatus();
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