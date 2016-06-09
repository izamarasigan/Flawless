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
			CMS.showNotification("success", "Thank you for booking your treatment at Flawless. Please check your email to confirm your appointment.", "contactusSectionNotif");
			/* if($('.toast-success').is(":visible")){
				$('.toast-success').attr("style", "background:#ed3c95 none repeat scroll 0 0 !important");
			} */
			return false;
		} 
		else {
			$('#' + id_form + " #contactusSectionLoading").attr("style", "display:none");
			$('#' + id_form + " #contactusSectionBtns").show();
			CMS.showNotification("error", "Network system error. Please try again.", "contactusSectionNotif");
			return false;
		}
	});
});
jQuery("#agreement").click(function(){
	if(jQuery(this).is(":checked")){
		jQuery(".notification").css("display", "none");
		jQuery('button[type="submit"]').prop('disabled', false);
	}else{
		jQuery('button[type="submit"]').prop('disabled', true);
		CMS.showNotification("error", " You do not seem to agree with our agreement","contactusSectionNotification");
		
	}
});
function validateCaptcha(base_url) {
	challengeField = $("input#recaptcha_challenge_field").val();
	responseField = $("input#recaptcha_response_field").val();
	var stat = $.ajax({
		type: "POST",
		url: base_url + "bookanappointment/verify_captcha",
		data: "recaptcha_challenge_field=" + challengeField + "&recaptcha_response_field=" + responseField,
		async: false
	}).responseText;
	if (stat === "false") {
		$("#captchaStatus").html(stat).parent().show();
		Recaptcha.reload();
		return false;
	} else {
		$("#status").val('true');
		return true;
	}
}

function checkCaptcha() {
	if (!validateCaptcha(base_url)) {
		$('#alert_recaptcha').show().text('Invalid recaptcha code.');
		$('#recaptcha_response_field').val('');
		return false;
	} else {
		$('#alert_recaptcha').hide().text('');
	}
}
