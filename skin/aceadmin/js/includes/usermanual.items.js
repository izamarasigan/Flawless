CMS.initPageUnbind = function() {
	CMS.commonUnbind();
	$('button.addReset').unbind();
}

CMS.initPage = function() {
	var textedit = ['item_description']; /* place the fields that needs to have text editor */
	$('a.setFormValues').on('click', function() {
		itemID = $(this).closest("td").attr('id');
		itemID = itemID.replace("jdata", "")
		var json = $('div#jd' + itemID).text();
		var data = $.parseJSON(json);
		$('[name="where[id_usermanual_items]"]').val(data.id_usermanual_items);
		$('input#item_name').val(data.item_name);
		$('textarea#item_description').val(data.item_description);
	
		$('select#id_usermanual_subcat option').each(function() {
			if ($(this).val() == data.id_usermanual_subcat) {
				$('#subcat_selection').removeClass('hid');
				$('#maincat_selection').addClass('hid');
				$('#id_usermanual_subcat').attr('required','');	
				$('#id_usermanual_item_maincat').removeAttr('required');
				$('#category_selection').val('subcat');
				$("#id_usermanual_subcat").val(data.id_usermanual_subcat);
			}
		});
		$('select#id_usermanual_item_maincat option').each(function() {
			if ($(this).val() == data.id_usermanual_item_maincat) {
				$('#maincat_selection').removeClass('hid');
				$('#subcat_selection').addClass('hid');
				$('#id_usermanual_item_maincat').attr('required','');
				$('#id_usermanual_subcat').removeAttr('required');
				$('#category_selection').val('maincat');
				$("#id_usermanual_item_maincat").val(data.id_usermanual_item_maincat);
			}
		});

		if (!$(this).hasClass('editItem')) {
			$('div#formActions').addClass('hid');
			$('.content_display').destroy();
			$.each(textedit, function(index, value) {
				$('#' + value).summernote();
			});
			$('div.note-editable').attr('contenteditable', 'false');
		} else {
			$('.content_display').destroy();
			CMS.runSummernote(textedit);
			$('div.note-editable').attr('contenteditable', 'true');
		}

		var txt = document.createElement("textarea");
		CMS.showWidge();
	});
	$('button#dtAddRow').on('click', function() {
		$('.content_display').val('');
		$('.content_display').code('');
		$('.content_display').destroy();
		CMS.runSummernote(textedit);
		$('div.note-editable').attr('contenteditable', 'true');;
	});
	$('button#btnEditForm').on('click', function() {
		$('.content_display').destroy();
		CMS.runSummernote(textedit);
		$('div.note-editable').attr('contenteditable', 'true');
	});
	$('#submit').on('click', function() { /* event if submit button is clicked */
		$.each(textedit, function(index, value) {
			$('#' + value).val($('#' + value).code());
		});
	});

	$('#category_selection').change(function() {
			var catselection = $('#category_selection').val();

			if (catselection == 'maincat'){
				$('#maincat_selection').removeClass('hid');
				$('#subcat_selection').addClass('hid');
				$('#id_usermanual_item_maincat').attr('required','');
				$('#id_usermanual_subcat').removeAttr('required');	
			}
			else if(catselection == 'subcat'){
				$('#subcat_selection').removeClass('hid');
				$('#maincat_selection').addClass('hid');
				$('#id_usermanual_subcat').attr('required','');	
				$('#id_usermanual_item_maincat').removeAttr('required');				
			}
			
	});
	
	var details = new Array();
	details[0] = "genericForm"; //active form id
	details[1] = thisURL + thisModule + "/process/addItem/"; //this won't be used
	details[2] = 'Item was successfully added.'; //this won't be used
	details[3] = thisURL + thisModule + "/process/editItem/"; //post url for replying to contact message
	details[4] = 'Edit Item was successfully sent.'; //success message for edit
	details[5] = thisURL + thisModule + "/process/deleteItem/"; //post url for delete
	details[6] = 'Item was successfully deleted.'; //success message for delete
	details[7] = 'id_usermanual_items'; //name of id for delete
	details[8] = 'DT_Generic'; //active dataTable id
	CMS.common(details); //include the active data table (for delete function)
}

function runSummernote(textedit) {
	$.each(textedit, function(index, value) {
		$('#' + value).summernote({
			onblur: function(e) {
				$("#" + value).val($('#' + value).code());
			},
			onImageUpload: function(files, editor, $editable) {
				send2(files[0], editor, $editable);
			}
		});
	});
}

function disableMod() {
	enableModule = false;
	changeStatus();
}

function enableMod() {
	enableModule = true;
	changeStatus();
}

function showActions() {
	var vals = $('.selected-items:checkbox:checked').map(function() {
		return this.value;
	}).get();
	if (vals != '') {
		$('#multiActions').removeAttr("style");
	} else {
		$('#multiActions').attr('style', 'display:none');
	}
}
$("#ckbCheckAll").click(function() {
	$(".selected-items").prop('checked', $(this).prop('checked'));
	showActions();
});
$('.selected-items').change(function() {
	showActions();
});

