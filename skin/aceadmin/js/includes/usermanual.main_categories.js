CMS.initPageUnbind = function() {
	CMS.commonUnbind();
	CMS.showHideFieldsU();
	$('.showDeleteBtn').unbind();
	$('.hideDeleteBtn').unbind();
	$('.btnReply').unbind();
}
CMS.initPage = function() {
	$('a.setFormValues').on('click', function() {
		itemID = $(this).closest("td").attr('id');
		itemID = itemID.replace("jdata", "")
		var json = $('div#jd' + itemID).html();
		var data = $.parseJSON(json);
		// var dateString = data.date_add;
		// var reggie = /(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})/;
		// var dateArray = reggie.exec(dateString);
		// var dateObject = new Date(
		// 	(+dateArray[1]), (+dateArray[2]) - 1, // Careful, month starts at 0!
		// 	(+dateArray[3]), (+dateArray[4]), (+dateArray[5]), (+dateArray[6]));
		// dateString = dateObject.toLocaleDateString() + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + dateObject.toLocaleTimeString();
		// $('div#date_add').html(dateString);
		// $('div#reservationFirstname').html(data.firstname);
		// $('div#reservationLastname').html(data.lastname);
		// $('div#reservationEmail').html(data.email);
		// $('div#reservationMobile').html(data.mobile);
		// $('input#inputEmail').val(data.email);
		// if ($('input#inputSubject').val() != '') {
		// 	$('input#inputSubject').val('');
		// }
		// if ($('textarea#inputMessage').val() != '') {
		// 	$('textarea#inputMessage').val('');
		// }
		// if (!$(this).hasClass('editItem')) {
		// 	$('div#formActions').addClass('hid');
		// }
		// $('div#reservationEvent').html(data.event);
		$('input#id_usermanual_maincat').val(data.id_usermanual_maincat);
		$('input#maincat_name').val(data.maincat_name);
		$('input#maincat_description').val(data.maincat_description);
		CMS.showWidge();
	});
	$('.showDeleteBtn').on('click', function() {
		if (!$('button#btnDelete').is(":visible")) {
			$('button#btnDelete').removeClass('hid');
		}
	});
	$('.hideDeleteBtn').on('click', function() {
		if ($('button#btnDelete').is(":visible")) {
			$('button#btnDelete').addClass('hid');
		}
	});
	$('#btnEditForm').click(function() {
		$('.content_display').destroy();
		CMS.runSummernote(textedit);
		$('div.note-editable').attr('contenteditable', 'true');
	});
	$('.btnReply').on('click', function() {
		$('div.divNotEdit').hide();	
		$('div.divEdit').show();
	});
	$('#submit').on('click', function() {
		$.each(textedit, function(index, value) { /* check if submit button is clicked */
			$('#' + value).val($('#' + value).code());
		});
	});

	var details = new Array();
	details[0] = "genericForm"; //active form id
	details[1] = thisURL + thisModule + "/process/addMainCat/"; //this won't be used
	details[2] = 'Event was successfully added.'; //this won't be used
	details[3] = thisURL + thisModule + "/process/editMaincat/"; //post url for replying to contact message
	details[4] = 'Edit Event was successfully sent.'; //success message for edit
	details[5] = thisURL + thisModule + "/process/deleteMainCat/"; //post url for delete
	details[6] = 'Event was successfully deleted.'; //success message for delete
	details[7] = 'id_usermanual_maincat'; //name of id for delete
	details[8] = 'DT_Generic'; //active dataTable id
	CMS.common(details); //include the active data table (for delete function)
	CMS.showHideFields();
}