<div id="status">
	<img src="LoginWithFacebook.png" style="cursor:pointer;" onClick="Login()"/>
	<input type="button" value="Logout" onclick="Logout();" />
</div>

<div id="message">Logs:</div>

<div id="fb-feeds"></div>

<div id="fb-root"></div>

<script type="text/javascript">
(function(d){
	var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	if (d.getElementById(id)) {return;}
	js = d.createElement('script'); js.id = id; js.async = true;
	js.src = '//connect.facebook.net/en_US/all.js';
	ref.parentNode.insertBefore(js, ref);
}(document));
</script>

<script type="text/javascript">
$(document).ready(function() {
	window.fbAsyncInit = function() {
		FB.init({
			appId      : '1634378060168126', // App ID
			channelUrl : 'http://www.iappscode.com/face-apps-manager/', // Channel File
			status     : true, // check login status
			cookie     : true, // enable cookies to allow the server to access the session
			xfbml      : true  // parse XFBML
		});
		
		FB.Event.subscribe('auth.authResponseChange', function(response){
			if (response.status === 'connected'){
				$("#message").html('Connected to Facebook'); //SUCCESS
			} else if (response.status === 'not_authorized'){
				$("#message").html('Failed to Connect'); //FAILED
			} else {
				$("#message").html('Logged Out'); //UNKNOWN ERROR
			}
		});	
		
	};
});
</script>

<script type="text/javascript">
$(document).ready(function() {
	$(".fb-total-like").live("click", function(){
		var id = $(this).parents(".fb-feed").attr("id");
		var graphAPI = id + '/likes?fields=id,name,pic_square,link&limit=2000000';
		FB.api(graphAPI, function(response) {
			var likes = response.data;
			var str = '';
			for(var i in likes){
				str += viewLike(likes[i].id, likes[i].name, likes[i].link, likes[i].pic_square);
			}
			
			$("#" + id + " .fb-feed-ajax").html(str);
			return true;
		});
	});
	
	$(".fb-total-comment").live("click", function(){
		var id = $(this).parents(".fb-feed").attr("id");
		var graphAPI = id + '/comments?fields=id,like_count,message,comment_count,from&limit=2000000';
		FB.api(graphAPI, function(response) {
			var comments = response.data;
			var str = '';
			for(var i in comments){
				str += viewComment(comments[i].id, comments[i].from.name, comments[i].from.id, comments[i].message);
			}
			
			$("#" + id + " .fb-feed-ajax").html(str);
			return true;
		});
	});
});
</script>

<script type="text/javascript">
function Login(){
	FB.login(function(response) {
		if (response.authResponse) {
			getUserInfo();
		} else {
			console.log('User cancelled login or did not fully authorize.');
		}
	},{scope: 'email, user_photos, user_videos, user_posts, user_likes, user_friends'});
}

function viewUserInfo(id, name, link, email, totalFriend, totalFeed){
	var str='<div class="fb-user" id="' + id + '">';
		str +='<a href="' + link + '" target="_blank">';
		str +='<div class="fb-picture"><img src="https://graph.facebook.com/' + id + '/picture?type=large" /></div>';
		str +='<div class="fb-name">' + name + '</div>';
		str +='</a>';
		str +='<div class="fb-email">Email: ' + email + '</div>';
		str +='<div class="fb-total-friend">Total friend: ' + totalFriend + '</div>';
		str +='<div class="fb-total-post">Total post: '+totalFeed+'</div>';
		str +='<div class="clear1"></div></div>';
	return str;
}

function viewFeed(id, link, message, story, picture, name, description, like, comment, share){
	var str = '<div class="fb-feed" id="' + id + '">';
		str += '<div class="fb-story">' + story + '</div>';
		str += '<div class="fb-message">' + message + '</div>';
		str += '<div class="fb-picture"><a href="' + link + '" target="_blank"><img src="' + picture + '" /></a></div>';
		str += '<div class="fb-name">' + name + '</div>';
		str += '<div class="fb-description">' + description + '</div>';
		str += '<div class="clear20"></div><div class="fb-total">';
		str += '<div class="fb-total-like fb-total-ac">Like: ' + like + '</div>';
		str += '<div class="fb-total-comment fb-total-ac">Comment: ' + comment + '</div>';
		str += '<div class="fb-total-share">Share: ' + share + '</div>';
		str += '</div><!--end fb-total-->';
		str += '<div class="fb-feed-ajax"></div>';
		str += '<div class="clear1"></div> </div><!--end fb-feed-->';
	return str;
}

function viewLike(id, name, link, picture){
	var str = '<div class="fb-item" id="' + id + '">';
		str += '<a href="' + link + '" target="_blank">';
		str += '<div class="fb-item-picture"><img src="' + picture + '" /></div>';
		str += '<div class="fb-item-name">' + name + '</div>';
		str += '</a></div>';
	return str;
}

function viewComment(id, name, idU, message){
	var link = 'https://www.facebook.com/app_scoped_user_id/' + idU + '/';
	var pic = 'https://graph.facebook.com/'+ idU +'/picture';
	var str = '<div class="fb-item-cm" id="' + id + '">';
		str += '<div class="fb-item-picture"><a href="' + link + '" target="_blank"><img src="'+ pic +'" /></a></div>';
		str += '<div class="fb-item-message"><a href="' + link + '" target="_blank">' + name + '</a> ' + message + '</div>';
		str += '<div class="clear1"></div> </div>';
	return str;
}

function getUserInfo() {
	var graphAPI = 'me/?fields=id,name,email,friends,link,feed.limit(2000000){id,message,story,picture,name,description,link,shares,message_tags,likes.limit(2000000){id},comments.limit(2000000){id,like_count,message,comment_count}}';
	FB.api(graphAPI, function(response) {
		var totalPost = response.friends.summary.total_count;
		var feed = response.feed.data;
		var str='';
			str += viewUserInfo(response.id, response.name, response.link, response.email, totalPost, feed.length);
			for(var i in feed ){
				console.log(feed);
				var message='', story='', picture='', name='', description='', like=0, comment=0, share=0;
				if(typeof feed[i].message != 'undefined') message=feed[i].message;
				if(typeof feed[i].story != 'undefined') story=feed[i].story;
				if(typeof feed[i].picture != 'undefined') picture=feed[i].picture;
				if(typeof feed[i].name != 'undefined') name=feed[i].name;
				if(typeof feed[i].description != 'undefined') description=feed[i].description;
				if(typeof feed[i].shares != 'undefined') share=feed[i].shares.count;
				if(typeof feed[i].comments != 'undefined') comment=feed[i].comments.data.length;
				if(typeof feed[i].likes != 'undefined') like = feed[i].likes.data.length;
				str += viewFeed(feed[i].id, feed[i].link, message, story, picture, name, description, like, comment, share);
			}
		$("#fb-feeds").html(str);  
    });
}

function Logout(){
	FB.logout(function(){document.location.reload();});
}
</script>