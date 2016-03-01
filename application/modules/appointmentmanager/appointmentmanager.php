<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
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
class Appointmentmanager extends MX_Controller

{
	var $error = array();
	function __construct()
	{
		parent::__construct();
		$this->load->model('appointmentmanager_model', 'appointment');
	}
	function index()
	{
		$contacts = $this->appointment->_getContacts();
		if ($contacts) {
			$this->template->assign('contacts', $contacts);
		}
	}
	function settings()
	{
		$this->load->helper('string');
		$this->load->library('encrypt');
		$this->load->model('settings/settings_model', 'settings');
		$fields = array(
			'appointment_email',
			'appointment_email_cc'
		);
		foreach($fields as $value) {
			$item = $this->settings->get(strtoupper($value));
			if (strpos($value, 'password') || strpos($value, 'pass')) {
				$item = $this->encrypt->decode($item);
			}
			$this->template->assign($value, $item);
		}
	}
	function process()
	{
		$action = $this->uri->segment(4);
		switch ($action) {
		case 'reply':
			$data = $this->input->post('data');
			if ($data) {
				if ($this->appointment->_reply()) {
					$result = true;
				}
				else {
					$this->error[] = "Failed to reply to contact message.";
					$result['error'] = $this->error;
				}
			}
			else { //direct link access
				header('Location: ' . _BASE_URL_);
			}
			break;
		case 'delete-message':
			$deleteid = $this->input->post('id_contact_us');
			if ($deleteid) {
				$this->load->model('core/dbtm_model', 'dbtm');
				if ($this->dbtm->deleteItem('id_contact_us', $deleteid, 'franchising')) {
					$result = true;
				}
				else $this->error[] = "Failed to delete subscriber.";
			}
			else { //direct link access
				header('Location: ' . _BASE_URL_);
			}
			break;

		case 'upd-settings':
			$data = $this->input->post('data');
			if ($data) {
				$this->load->model('core/dbtm_model', 'dbtm');
				
				foreach($data as $name => $value) {
					$data2 = array();
					$data2['whr_name'] = $name;
					$data2['clmn_value'] = $value;
					$params['table'] = 'config';
					$params['post_data'] = $data2;
					$result = $this->dbtm->update($params);
					unset($data2);
				}
				// $result = true;
			}
			else { //direct link access
				header('Location: ' . _BASE_URL_);
			}
			break;

		default:
			break;
		}
		if ($result) {
			if (count($this->error)) {
				$result['error'] = $this->error;
			}
			else {
				echo json_encode($result);
			}
		}
		else {
			echo 'false';
		}
		exit(0);
	}
}
/* End of file Pages.php */
/* Location: application/modules/Pages/Pages.php */
