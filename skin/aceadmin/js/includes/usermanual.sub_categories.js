CMS.initPageUnbind = function() {
	CMS.commonUnbind();
}
CMS.initPage = function() {
	$('a.setFormValues').on('click', function() {
		itemID = $(this).closest("td").attr('id');
		itemID = itemID.replace("jdata", "")
		var json = $('div#jd' + itemID).html();
		var data = $.parseJSON(json);
		$('input#id_usermanual_subcat').val(data.id_usermanual_subcat);
		$('input#subcat_name').val(data.subcat_name);
		$('input#subcat_description').val(data.subcat_description);
		$('select#id_usermanual_maincat option').each(function() {
			if ($(this).val() == data.id_usermanual_maincat) {
				$("#id_usermanual_maincat").val(data.id_usermanual_maincat);
			}
		});
		if (data.status == 1) {
			$('input#isActive').prop('checked', true);
		} else {
			$('input#isActive').prop('checked', false);
		}
		if (!$('button#dtAddRow').is(":visible")) {
			$('button#dtAddRow').removeClass('hid');
		}
		if (!$(this).hasClass('editItem')) {
			$('div#formActions').addClass('hid');
		}
		CMS.showWidge();
	});
	var details = new Array();
	details[0] = "genericForm"; //active form id
	details[1] = thisURL + thisModule + "/process/add-usermanual-subcategory/"; //post url for add
	details[2] = 'User Manual subcategory was successfully created.'; //success message for add
	details[3] = thisURL + thisModule + "/process/edit-usermanual-subcategory/"; //post url for edit
	details[4] = 'User Manual subcategory was successfully updated.'; //success message for edit
	details[5] = thisURL + thisModule + "/process/delete-usermanual-subcategory/"; //post url for delete
	details[6] = 'User Manual subcategory was successfully deleted.'; //success message for delete
	details[7] = 'id_usermanual_subcat'; //name of id for delete
	details[8] = 'DT_Generic'; //active dataTable id
	CMS.common(details); //include the active data table (for delete function)
};
