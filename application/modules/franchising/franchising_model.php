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
class Franchising_model extends CI_Model

{
	var $image_dir = 'upload/images/branch/';
	var $image_thumb_dir = 'upload/images/branch/thumb/';
	function __construct()
	{
		parent::__construct();
		$this->load->model('core/email_model', 'email_model');
		$this->load->model('core/config_model', 'config_model');
	}
	function _getItems()
	{
		$this->db->select('*');
		$this->db->from('branch_item');
		$this->db->order_by('branch_name',ASC);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			$result = $query->result_array();
			$return = array();
			foreach($result as $item) {
				$item['date'] = date('F d, Y', strtotime($item['date']));
				$item['month'] = date('F', strtotime($item['date']));
				$item['year'] = date('Y', strtotime($item['date']));
				
				if ($item['image_src']) {
					$item['image_src_thumb_link'] = base_url() . $this->image_thumb_dir . $item['image_src'];
					$item['image_src_link'] = base_url() . $this->image_dir . $item['image_src'];
				}
				$item['json'] = htmlentities(json_encode($item) , ENT_QUOTES);
				$return[] = $item;
			}
			return $return;
		}
		return false;
	}
	function addContact()
	{
		$data = $this->input->post('data');
		$data['date_add'] = date('Y-m-d H:i:s');
		if ($this->db->insert('franchising', $data)) {
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
		$to = $this->config_model->get('franchising_email');
		$cc = $this->config_model->get('franchising_email_cc');
		$replyTo = $data['email'];
		$fromName = $data['name'];
		if ($data['subject']) {
			$data['subject'] = '[' . $data['subject'] . ']';
		}
		$subject = $this->config_model->get('SITE_NAME') . ' :: New Registration Request ' . $data['subject'];
		$this->email_model->sendEmail($to, $subject, 'Message', false, 'contact-us-admin.html', $data, $replyTo, $fromName, $cc);
		// (to, subject, message, attachment, template, data, replyTo, fromName)
	}
	function notifySender($data)
	{
		$to = $data['email'];
		$replyTo = $this->config_model->get('CONTACT_EMAIL');
		$fromName = $this->config_model->get('SITE_NAME');
		$subject = $this->config_model->get('SITE_NAME') . ' :: Thank You for your Registration';
		$this->email_model->sendEmail($to, $subject, 'Message', false, 'contact-us-sender.html', $data, $replyTo, $fromName, false);
	}
}
/* End of file pages_model.php */
/* Location: ./application/modules/Pages/Pages_model.php */