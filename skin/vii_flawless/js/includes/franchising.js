$("#franchising-form").submit(function(event) {

	var id_form = $(this).attr("id");
	if (!$('#' + id_form).validationEngine('validate')) {
		$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
		$('#' + id_form + " #contactusSectionBtns").show();
		CMS.showNotification("error", "Please fill out the required fields.", "contactusSectionNotif");
		return false;
	}
	$('#' + id_form + " #franchisingFormBtns").hide();
	$('#' + id_form + " #contactusSectionLoading").removeAttr("style");
	event.preventDefault();
	$.post(base_url + "franchising/process/add-contact", $('#' + id_form).serialize(), function(data) {
		if (data != 'false') {
			$('#' + id_form)[0].reset();
			$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
			$('#' + id_form + " #franchisingFormBtns").show();
			CMS.showNotification("success", "You have successfully submitted your Franchise Registration Form. Please check your email for the registration updates.", "contactusSectionNotif");
			return false;
		} else {
			$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
			$('#' + id_form + " #franchisingFormBtns").show();
			CMS.showNotification("error", "Network system error. Please try again.", "contactusSectionNotif");
			return false;
		}
	});
});