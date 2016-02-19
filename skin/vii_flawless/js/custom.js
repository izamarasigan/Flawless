var google_ua = $('span#google_ua').html();
(function(i, s, o, g, r, a, m) {
	i['GoogleAnalyticsObject'] = r;
	i[r] = i[r] || function() {
		(i[r].q = i[r].q || []).push(arguments)
	}, i[r].l = 1 * new Date();
	a = s.createElement(o),
		m = s.getElementsByTagName(o)[0];
	a.async = 1;
	a.src = g;
	m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
ga('create', google_ua, 'auto');
ga('send', 'pageview');

var chat_active = $('span#chat_active').html();
if(chat_active){
	var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
	(function(){
	var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
	s1.async=true;
	s1.src='https://embed.tawk.to/56c66722f26a9a725340ba9f/default';
	s1.charset='UTF-8';
	s1.setAttribute('crossorigin','*');
	s0.parentNode.insertBefore(s1,s0);
	})();
}


/* Notification alert */
var CMS = {};
CMS.showNotification = function(type, message) {
	if (type == 'success') {
		notif_boostrap_type = 'success';
		if (!message) {
			message = 'You successfully read this important alert message';
		}
		notif_msg = '<strong>Well done!</strong> ' + message;
	} else if (type == 'info') {
		notif_boostrap_type = 'info';
		if (!message) {
			message = "This alert needs your attention, but it's not super important.";
		}
		notif_msg = '<strong>Heads up!</strong> ' + message;
	} else if (type == 'error') {
		notif_boostrap_type = 'danger';
		if (!message) {
			message = "Change a few things up and try submitting again.";
		}
		notif_msg = '<strong>Oh snap!</strong> ' + message;
	} else if (type == 'warning') {
		notif_boostrap_type = 'warning';
		if (!message) {
			message = "System network error. Please contact administrator. ";
		}
		notif_msg = '<strong>Warning!</strong> ' + message;
	} else {
		notif_boostrap_type = 'default';
		if (!message) {
			message = "This is default notification.";
		}
		notif_msg = '<strong>Default!</strong> ' + message;
	}
	_toastr(notif_msg,"top-right",type,false);
}


/* ------ */

