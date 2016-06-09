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
class Pdf_model extends CI_Model

{
	function __construct()
	{
		parent::__construct();
	}

	function billsummary($data, $filename = '', $stream = true)
	{
		require_once ("dompdf/dompdf_config.inc.php");

		spl_autoload_register('DOMPDF_autoload');
		$this->template->assign("data", $data);
		$this->template->assign("order", $data['order']);
		$dompdf = new DOMPDF();
		$dompdf->set_paper(array(
			0,
			0,
			8.5 * 72,
			11 * 72
		) , "portrait");
		$html = $this->template->fetch('skin/default/pdf_template/pdf_template_ordersummary.html');
		if ($data) $dompdf->load_html($html);
		$dompdf->render();

		// add the header

		$canvas = $dompdf->get_canvas();
		$font = Font_Metrics::get_font("helvetica", "bold");

		// the same call as in my previous example

		$canvas->page_text(20, 5, "Page {PAGE_NUM} of {PAGE_COUNT}", $font, 12, array(
			0,
			0,
			0
		));
		if ($stream) {
			$dompdf->stream($filename, array(
				'Attachment' => 0
			));
		}
		else {
			return $dompdf->output();
		}

		exit(0);
	}
	
	function usermanual_summary($data, $filename = '', $stream = true)
	{
		require_once ("dompdf/dompdf_config.inc.php");

		spl_autoload_register('DOMPDF_autoload');
		$this->template->assign("output", $data);
		$dompdf = new DOMPDF();
		$dompdf->set_paper(array(
			0,
			0,
			8.5 * 72,

			11 * 72
		) , "portrait");
		$html = $this->template->fetch('skin/default/pdf_template/pdf_template_usermanual.html');
		if ($data) $dompdf->load_html($html);
		$dompdf->render();

		// add the header

		$canvas = $dompdf->get_canvas();
		$font = Font_Metrics::get_font("helvetica", "bold");

		// the same call as in my previous example

		$canvas->page_text(20, 5, "Page {PAGE_NUM} of {PAGE_COUNT}", $font, 12, array(
			0,
			0,
			0
		));
		if ($stream) {
			$dompdf->stream($filename, array(
				'Attachment' => 0
			));
		}
		else {
			return $dompdf->output();

		}

		exit(0);
	}
	function pdf_usermanual($data, $filename = '', $stream = true)
	{
		require_once ("dompdf/dompdf_config.inc.php");

		spl_autoload_register('DOMPDF_autoload');
		$this->template->assign("output", $data);
		$dompdf = new DOMPDF();
		$dompdf->set_paper(array(
			0,
			0,
			8.5 * 72,
			11 * 72
		) , "portrait");
		$html = $this->template->fetch('skin/default/pdf_template/pdf_template_usermanual.html');
		if ($data) $dompdf->load_html($html);
		$dompdf->render();
		// add the header

		$canvas = $dompdf->get_canvas();
		$font = Font_Metrics::get_font("helvetica", "bold");

		// the same call as in my previous example

		$canvas->page_text(20, 5, "Page {PAGE_NUM} of {PAGE_COUNT}", $font, 12, array(
			0,
			0,
			0
		));
		$pdf = $dompdf->output();
		$file_location = _PDF_LOCATION_.$filename.".pdf";
		file_put_contents($file_location, $pdf);

	}

}

?>