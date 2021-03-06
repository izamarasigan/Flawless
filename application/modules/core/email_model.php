<?php
class Email_model extends CI_Model

{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->model('core/config_model', 'config_model');
	}
	/*
	Use this function to call for general email sending
	@ $from = email of sender, <blank> or "default" for Administrators email
	@ $fromName = email of sender, <blank> or "default" for Administrators name, "site_name" for Site Name
	@ $template = HTML template
	@ $data = array of variable(s) fetched on template
	Link Gmail to webmail:
	http://www.inmotionhosting.com/support/email/email-client-setup/setting-up-gmail-for-pop3-and-smtp
	*/
	function sendEmail($to, $subject, $message, $attachment = false, $template = false, $data = false, $replyTo = false, $fromName = false)
	{
		$this->load->library('email');
		$this->load->library('encrypt');
		$siteName = $this->config_model->get('SITE_NAME');
		$noreply = true;
		if ($noreply) {
			$fromEmail = 'noreply@viiworksdemo.com';
			$config = Array(
				'protocol' => "smtp",
				'smtp_host' => 'mail.viiworksdemo.com',
				'smtp_port' => '26',
				'smtp_user' => $fromEmail,
				'smtp_pass' => 'w9XTT0wC$MWA',
				'charset' => "utf-8",
				'mailtype' => "html",
				'newline' => "\r\n"
			);
		}
		else {
			$fromEmail = $replyTo;
			$config = Array(
				'protocol' => "mail",
				'charset' => "utf-8",
				'mailtype' => "html",
				'newline' => "\r\n",
				'newline' => "\r\n"
			);
		}
		$this->email->initialize($config);
		$this->email->from($fromEmail, $fromName);
		$this->email->reply_to($replyTo, $fromName);
		$this->email->to($to);
		$this->email->subject($subject);
		if ($attachment) {
			$this->email->attach($attachment);
		}
		if ($data) {
			$this->template->assign('data', $data);
		}
		if ($template) {
			$body = $this->template->fetch('email_templates/' . $template);
			$this->email->message($body);
		}
		else {
			$this->email->message($message);
		}
		$flag = false;
		if ($this->email->send()) {
			$flag = true;
			$this->email->clear(TRUE);
		}
		else {
			echo $this->email->print_debugger();
		}
		return $flag;
	}
	function prepareEmailBody($body, $data)
	{
		foreach($data as $key => $value) {
			while (strpos($body, $key)) {
				$var = strpos($body, $key);
				$body = substr_replace($body, $value, $var, strlen($key));
			}
		}
		return $body;
	}
}
?>