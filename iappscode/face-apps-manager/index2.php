<?php
/*
define('CONS_APP_NAME', 'appsstatistics');
define('CONS_APP_LINK', 'https://apps.facebook.com/appsstatistics/');
define('CONS_APP_ID', '1634378060168126');
define('CONS_APP_SECRET', 'b19b299b94a0cf682cd8048748822e1f');

include_once("phpsdk/facebook.php");
$facebook = new Facebook(array(
	"appId"	=> CONS_APP_ID,
	"secret"=> CONS_APP_SECRET,
));*/
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apps Facebook</title>
</head>

<body>
<div id="fb-root"></div>

<script>
// Only works after `FB.init` is called
function myFacebookLogin() {
	FB.login(function(){
		// Note: The call will only work if you accept the permission request
		FB.api('/me/feed', 'post', {message: 'Hello, world!'});
	}, {scope: 'publish_actions'});
}
</script>
<button onclick="myFacebookLogin()">Login with Facebook</button>



<script>
function fbLoginStatus(){
	FB.getLoginStatus (function (response) {
		if (response.status === 'connected' ) {
			// the user is logged in and has authenticated your
			// app, and response.authResponse supplies
			// the user's ID, a valid access token, a signed
			// request, and the time the access token
			// and signed request each expire
			var uid = response.authResponse .userID;
			var accessToken = response.authResponse .accessToken ;
		} else if (response.status === 'not_authorized' ) {
			// the user is logged in to Facebook,
			// but has not authenticated your app
		} else {
			// the user isn't logged in to Facebook.
		}
	});
}

function fbLogin(){
	FB.login(function (response) {
		if (response.authResponse ) {
			console .log('Welcome! Fetching your information.... ' );
			FB .api('/me', function (response) {
				console .log('Good to see you, ' + response.name + '.');
			});
		} else {
			console .log('User cancelled login or did not fully authorize.' );
		}
	});
}
</script>


<script>
window.fbAsyncInit = function() {
	FB.init({
		appId : '1634378060168126',
		status : true, // check login status
		cookie : true, // enable cookies to allow the server to access the session
		xfbml : true, // parse XFBML
		channelUrl : 'https://apps.facebook.com/appsstatistics/', // channel.html file
		oauth : true, // enable OAuth 2.0
		version : 'v2.4',
	});
};

// Load the SDK asynchronously
(function (d, s, id) {
	var js, fjs = d.getElementsByTagName (s)[0];
	if (d.getElementById (id)) {
		return;
	}
	js = d.createElement (s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/all.js";
	fjs.parentNode .insertBefore (js, fjs);
}(document, 'script', 'facebook-jssdk' ));
</script>




<?php
/*$user = $facebook->getUser();
if($user){
	
	$me = $facebook->api('/me');
	$id = $me["id"];
	echo "Chào bạn: {$id}";
	
	echo '<pre>';
	print_r($me);
	echo '</pre>';
	//echo "{$me['name']}";
}else{
	$loginUrl = $facebook->getLoginUrl(
		array(
			"display" => "popup",
			"scope" => "public_profile, email, user_friends, user_likes, read_custom_friendlists",
			"redirect_uri" => CONS_APP_LINK,
		)
	);
	
	echo "<a href='{$loginUrl}' target='_top'>Login</a>";
}
*/

/*echo '<pre>';
print_r($_SERVER);
echo '</pre>';*/
?>




</body>
</html>