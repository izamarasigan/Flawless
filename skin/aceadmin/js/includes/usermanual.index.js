CMS.initPageUnbind = function() {
	CMS.commonUnbind();
	CMS.showHideFieldsU();
	$('.showDeleteBtn').unbind();
	$('.hideDeleteBtn').unbind();
	$('.btnReply').unbind();
}
CMS.initPage = function() {

	// $("a.uploadpdf").attr('disabled', false);
	$('a.setViewValues').on('click', function() {
		itemID = $(this).closest("div").attr('id');
		itemID = itemID.replace("jdata", "")
		var json = $('div#jd' + itemID).html();
		var data = $.parseJSON(json);
		$('input#id_usermanual_maincat').val(data.id_usermanual_maincat);
		$('#item_name').html(data.item_name);
		var decoded = $('<div/>').html(data.item_description).text();
		$('#item_description').html(decoded);
		CMS.showWidge();
	});
	console.log(thisURL);
	$(document).on('click', '#download_pdf', function () {
		$.post(thisURL + thisModule + '/download_pdf', {'test': 'test'},  function(data) {
			// alert('test');
		});
	});
	
	$(document).on('click', '#generate_pdf', function () {
		console.log(thisURL + thisModule);
		var millisecondsBeforeRefresh = 5000;
		$("button#generate_pdf").addClass('hid');
		$(".loader").removeClass('hid');
        CMS.showNotification("success", "Generating PDF! It May Took Awhile! Please Wait Patiently!");
        var msg = "<strong>Success!</strong> Generating PDF. Please Wait Patiently!";

		$.post(thisURL + thisModule + '/generatePdf', {'test': 'test'},  function(data) {
			if (data != 'false') {
				$("button#download_pdf").removeClass('hid');
				$(".loader").addClass('hid');
				CMS.showNotification("success", "Generating PDF is done! Thanks for waiting!");
			} else {
				CMS.showNotification("error", "Generating PDF is failed.");
			}			
		});
		window.location.reload(true);
	});
	$('a.setViewValues1').on('click', function() {
		itemID = $(this).closest("div").attr('id');
		itemID = itemID.replace("jdata", "")
		var json = $('div#jd' + itemID).html();
		var data = $.parseJSON(json);
		$('input#id_usermanual_maincat').val(data.id_usermanual_maincat);
		$('#item_name').html(data.item_name);
		var decoded = $('<div/>').html(data.item_description).text();
		$('#item_description').html(decoded);
		CMS.showHelpWidge();
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

	$("a.uploadpdf").attr('disabled', false);



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
}/* javascript exclusively for this module */


function viewPDF(filename){
	// alert(filename);
    var downloadLink = document.createElement("a");
    var path = "../../upload/pdf";
    downloadLink.href = path+'/'+filename;
    window.open(downloadLink.href,"document", "", "");
   
}