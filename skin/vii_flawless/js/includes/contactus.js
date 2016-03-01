function validateCaptcha(base_url) {
	challengeField = $("input#recaptcha_challenge_field").val();
	responseField = $("input#recaptcha_response_field").val();
	var stat = $.ajax({
		type: "POST",
		url: base_url + "contactus/verify_captcha",
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

$('#selectProvince').on("change", function(e) {
	var selected_province = $(this).val();
	if(selected_province == 'All'){
		$('.gmap-desc').addClass( "active" ); //show all gmap
		$('.address-branch').show(); //show all branch
	}
	else{
		$('.gmap-desc').removeClass( "active" ); //remove all active gmap
		$('.gmap-desc').addClass( "inactive" ); //hide all gmap
		$('.address-branch').hide(); //hide all branch
		$('.'+selected_province).show(); //show selected city
		$('.gmap-desc.hid-'+selected_province).addClass( "active" ); //show selected gmap
		$('.gmap-desc.hid-'+selected_province).removeClass( "inactive" ); //show selected gmap	
	}
	initialize();
});

jQuery(function($) {
    // Asynchronously Load the map API 
    var script = document.createElement('script');
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
    document.body.appendChild(script);
});


function initialize() {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
        
    var markers = [];
    // Info Window Content
    var infoWindowContent = [];
	$(".gmap-desc.active").each(function() {
		var mark = $.parseJSON($(this).val());
		if(mark['branch_lat'] && mark['branch_lon']){
			var mark_push = [mark['branch_name'], parseFloat(mark['branch_lat']), parseFloat(mark['branch_lon'])];
			if(mark['image_src']){
				var mark_info = ['<div class="info_content">' + '<h3> ' + mark['branch_name'] + '</h3><img src="'+base_url+'upload/images/branch/'+mark['image_src']+'" style="width: 100%;"/>' + '<p> ' + mark['branch_address'] + '</p><p> ' + mark['branch_phone'] + '</p></div>'];
			}
			else{
				var mark_info = ['<div class="info_content">' + '<h3> ' + mark['branch_name'] + '</h3> <p> ' + mark['branch_address'] + '</p> <p> ' + mark['branch_phone'] + '</p></div>'];
			}
			
			markers.push(mark_push);
			infoWindowContent.push(mark_info);
		}
	});
    // Multiple Markers
                        
        
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][0]
        });
        
        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    }
    
}