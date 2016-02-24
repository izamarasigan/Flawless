<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Vii Framework
 *
 * @package			ViiFramework (libraries from CodeIgniter)
 * @author			ViiWorks Production Team
 * @copyright		Copyright (c) 2009 - 2011, ViiWorks Inc.
 * @website url 	http://www.viiworks.com/
 * @filesource
 *
 */
class Franchisingmanager_model extends CI_Model

{
	function __construct()
	{
		parent::__construct();
	}
	function _getContacts()
	{
		
		$this->db->select('*');
		$this->db->from('franchising');
		//$this->db->join('branch_item b', 'a.id_branch = b.id_branch_item', 'left');
		//$this->db->join('treatments c', 'a.treatment = c.id_treatment', 'left');
		$this->db->order_by('date_add', 'desc');
		$query = $this->db->get();
		
		/* $this->db->order_by('date_add', 'desc');
		$query = $this->db->get('appointment', $where); */
		if ($query->num_rows() > 0) {
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
	function notifySender($data)
	{
		$to = $data['email'];
		$subject = $this->config_model->get('SITE_NAME') . ':: Thank you for contacting us.';
		$this->email_model->sendEmail($to, $subject, 'Message', false, false, $data);
	}
	function _reply()
	{
		$this->load->model('core/email_model', 'email_model');
		$this->load->model('core/config_model', 'config_model');
		$data = $this->input->post('data');
		$body = $this->config_model->get('CONTACT_EMAIL_BODY_ADMIN');
		$emailVars = array(
			'%name%' => $data['name'],
			'%email%' => $data['email'],
			'%subject%' => $data['subject'],
			'%message%' => $data['message'],
			'%site_name%' => $this->config_model->get('SITE_NAME')
		);
		$preparedBody = $this->email_model->prepareEmailBody($body, $emailVars);
		$this->template->assign('emailcontent', $preparedBody);
		if (_PRODUCTION_) {
			if ($data['email']) {
				$this->notifySender($data);
			}
			else {
				return false;
			}
		}
		else {
			return false;
		}
		$data['json'] = json_encode($data);
		return $data;
	}
}
/* End of file pages_model.php */
/* Location: ./application/modules/Pages/Pages_model.php */
