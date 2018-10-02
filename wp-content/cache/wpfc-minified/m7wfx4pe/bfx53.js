// source --> https://roswellit.com/wp-content/plugins/simple-google-recaptcha/main.js?ver=4.9.5 
function sgr() {
	var recaptcha = document.getElementsByClassName("g-recaptcha");
	for (var i = 0; i < recaptcha.length; i++) {
		grecaptcha.render(recaptcha.item(i), {"sitekey" : sgr_recaptcha.site_key});
	}
};