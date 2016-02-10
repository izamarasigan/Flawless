$(".appointment-form").submit(function(event) {

	var id_form = $(this).attr("id");
	if (!$('#' + id_form).validationEngine('validate')) {
		$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
		$('#' + id_form + " #contactusSectionBtns").show();
		CMS.showNotification("error", "Please fill out the required fields.", "contactusSectionNotif");
		return false;
	}
	$('#' + id_form + " #contactusSectionBtns").hide();
	$('#' + id_form + " #contactusSectionLoading").removeAttr("style");
	event.preventDefault();
	$.post(base_url + "bookanappointment/process/add-contact", $('#' + id_form).serialize(), function(data) {
		if (data != 'false') {
			$('#' + id_form)[0].reset();
			$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
			$('#' + id_form + " #contactusSectionBtns").show();
			CMS.showNotification("success", "Thank you for contacting us!", "contactusSectionNotif");
			return false;
		} else {
			$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
			$('#' + id_form + " #contactusSectionBtns").show();
			CMS.showNotification("error", "Network system error. Please try again.", "contactusSectionNotif");
			return false;
		}
	});
});