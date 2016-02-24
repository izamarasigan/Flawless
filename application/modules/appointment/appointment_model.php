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
class Appointment_model extends CI_Model

{
	function __construct()
	{
		parent::__construct();
		$this->load->model('core/email_model', 'email_model');
		$this->load->model('core/config_model', 'config_model');
	}
	function getTreatments($id_treatment)
	{
		$this->db->select('i.*');
		$this->db->from('treatments i');
		$this->db->where('i.status', 1);
		if($id_treatment){
			$this->db->where('i.id_treatment', $id_treatment);
		}
		$this->db->order_by('i.treatment_name ASC');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			$result = $query->result_array();
			if($id_treatment){
				return $result[0];
			}
			return $result;
		}
		return false;
	}
	function getBranch($id_branch)
	{
		$this->db->select('i.*');
		$this->db->from('branch_item i');
		$this->db->where('i.status', 1);
		if($id_branch){
			$this->db->where('i.id_branch_item', $id_branch);
		}
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			$result = $query->result_array();
			if($id_branch){
				return $result[0];
			}
			return $result;
		}
		return false;
	}
	function addContact()
	{
		$data = $this->input->post('data');
		$arr_app = explode(" ",$data['time_appointment']);
		$arr_app[3] = ' ';
		$data['time_appointment'] = implode("",$arr_app);
		$data['time_appointment'] = date("G:i", strtotime($data['time_appointment']));
		$data['date_add'] = date('Y-m-d H:i:s');
		if ($this->db->insert('appointment', $data)) {
			
			$treatment = $this->getTreatments($data['treatment']);
			$data['treatment_name'] = $treatment['treatment_name'];
			
			$branch = $this->getBranch($data['id_branch']);
			$data['branch_name'] = $branch['branch_name'];
			$this->notifyStaff($data);
			
			if ($data['email']) {
				$this->notifySender($data);
				return true;
			}
		}
		else {
			return false;
		}
	}
	function notifyStaff($data)
	{
		$to = $this->config_model->get('CONTACT_EMAIL');
		$cc = $this->config_model->get('CONTACT_EMAIL_CC');
		$replyTo = $data['email'];
		$fromName = $data['name'];
		if ($data['subject']) {
			$data['subject'] = '[' . $data['subject'] . ']';
		}
		$subject = $this->config_model->get('SITE_NAME') . ' :: New Appointment Request ' . $data['subject'];
		$this->email_model->sendEmail($to, $subject, 'Message', false, 'appointment-admin.html', $data, $replyTo, $fromName, $cc);
		// (to, subject, message, attachment, template, data, replyTo, fromName)
	}
	function notifySender($data)
	{
		$to = $data['email'];
		$replyTo = $this->config_model->get('CONTACT_EMAIL');
		$fromName = $this->config_model->get('SITE_NAME');
		$subject = $this->config_model->get('SITE_NAME') . ' :: Thank you for your interest in out services';
		$this->email_model->sendEmail($to, $subject, 'Message', false, 'appointment-sender.html', $data, $replyTo, $fromName, false);
	}
}
/* End of file pages_model.php */
/* Location: ./application/modules/Pages/Pages_model.php */
?>