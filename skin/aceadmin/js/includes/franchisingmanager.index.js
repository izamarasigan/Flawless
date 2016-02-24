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
		
		
		$('div#contactDate').html(data.date_add);
		$('div#contactName').html(data.name);
		$('div#contactEmail').html(data.email);
		$('div#contactPhone').html(data.phone);
		$('div#contactLandline').html(data.landline);
		$('div#contactAddress').html(data.address);
		$('div#contactExistingFranchise').html(data.existing_franchise);
		$('div#contactMessage').html(data.message);
		if (!$(this).hasClass('editItem')) {
			$('div#formActions').addClass('hid');
		}
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
	$('.btnReply').on('click', function() {
		$('div.divNotEdit').hide();
		$('div.divEdit').show();
	});
	var details = new Array();
	details[0] = "genericForm"; //active form id
	details[1] = thisURL + thisModule + "/process/add-module/"; //this won't be used
	details[2] = 'Module was successfully created.'; //this won't be used
	details[3] = thisURL + thisModule + "/process/reply/"; //post url for replying to contact message
	details[4] = 'Reply was successfully sent.'; //success message for edit
	details[5] = thisURL + thisModule + "/process/delete-message/"; //post url for delete
	details[6] = 'Message was successfully deleted.'; //success message for delete
	details[7] = 'id_contact_us'; //name of id for delete
	details[8] = 'DT_Generic'; //active dataTable id
	CMS.common(details); //include the active data table (for delete function)
	CMS.showHideFields();
}