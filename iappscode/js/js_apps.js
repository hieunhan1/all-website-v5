function Login(user){
	FB.login(function(response) {
		if (response.authResponse) {
			$("#view-fb-login").hide(100);
			getUserInfo();
		} else {
			console.log('User cancelled login or did not fully authorize.');
		}
	},{scope: 'public_profile, email, user_birthday, user_photos, user_videos, user_posts, user_likes, user_friends'});
}

function Logout(){
	FB.logout(function(){document.location.reload();});
}

function heightAuto(){
	var left = parseInt($("#left").height());
    var right = parseInt($("#right").height());
	if(left < right) $("#left").height(right);
	return true;
}

function getUserInfo() {
	if( !$("#fb-feeds").length ) return false;
	
	user = $("#fb-id").html();
	var graphAPI = user + '/?fields=id,name,email,birthday,gender,friends,link,feed.limit(200){id,message,story,picture,name,description,link,shares,message_tags,likes.limit(2000000){id},comments.limit(2000000){id,like_count,message,comment_count}}';
	FB.api(graphAPI, function(response) {
		var totalPost = response.friends.summary.total_count;
		var feed = response.feed.data;
		var str='';
			str += viewUserInfo(user, response.id, response.name, response.birthday, response.gender, response.link, response.email, totalPost, feed.length);
			for(var i in feed ){
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
		heightAuto();
	});
}

function getUserFanpage(linkFB) {
	var graphAPI = linkFB + '/?fields=id,name,link';
	FB.api(graphAPI, function(response) {
		var str='';
		if(typeof response.id != 'undefined')
			str += viewUserFanpage(response.id, response.name, response.link, 1);
		else
			str += viewUserFanpage(response.id, 'Không tìm thấy fanpage này', 'javascript:;', 0);
			
		$("#fb-feeds").html(str);  
	});
}

function getFeedFollow(id) {
	var graphAPI = id + '/?fields=id,message,likes{id},comments{id}';
	FB.api(graphAPI, function(response) {
		console.log(response);
		return true;
	});
}

function viewUserInfo(user, id, name, birthday, gender, link, email, totalFriend, totalFeed){
	var str='<div class="fb-user" id="' + id + '">';
		str +='<a href="' + link + '" target="_blank">';
		str +='<div class="fb-picture"><img src="https://graph.facebook.com/' + id + '/picture?type=large" /></div>';
		str +='<div class="fb-name">' + name + '</div>';
		str +='</a>';
		//str +='<div class="fb-info">Giới tính: ' + gender + '</div>';
		str +='<div class="fb-info">Sinh nhật: ' + birthday + '</div>';
		str +='<div class="fb-info">Email: ' + email + '</div>';
		str +='<div class="fb-total-friend">Bạn bè: ' + totalFriend + '</div>';
		str +='<div class="fb-total-post">Bài đăng: '+totalFeed+'</div>';
		str +='<div class="clear1"></div></div>';
	if(user=='me'){
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsUser:1, id:id, name:name, email:email, gender:gender, birthday:birthday},
			cache:false,
			success: function(data) {
				if(data=='') return false;
				$("#fb-message").html(data);
			}
		});
	}
	
	return str;
}

function viewUserFanpage(id, name, link, viewSubmit){
	var str='<div class="fb-user" id="' + id + '">';
	str +='<a href="' + link + '" target="_blank">';
	str +='<div class="fb-picture"><img src="https://graph.facebook.com/' + id + '/picture?type=large" /></div>';
	str +='<div class="fb-name">' + name + '</div>';
	str +='</a>';
	
	if(viewSubmit==1){
		str +='<div class="fb-info">Link: ' + link + '</div><div style="height:20px"></div>';
		str +='<div class="fb-info"><span id="submitFanpage" fb-id="' + id + '">Tôi muốn quản lý trang này</span></div>';
	}
	
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
		str += '<div class="fb-follow">Theo dõi</div>';
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


$(document).ready(function(e) {
	
	/*login, register*/
	$("#btnAppsLogin").click(function(){
		var username = check_email("#appsUser","#appsUserMessage","Email chưa đúng");
		var password = check_text_length("#appsPass","#appsPassMessage","Mật khẩu phải hơn 6 ký tự", 6);
		if(username==false || password==false) return false;
		$("#appsError").html('');
		$(".fieldLogin").attr("disabled", true);
		$(".fieldLogin").addClass("disabled");
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsLogin:1, username:username, password:password},
			cache:false,
			success: function(data) {
				if(data=='1'){
					location.reload();
				}else{
					setTimeout(function(){
						$("#appsError").html(data);
						$(".fieldLogin").attr("disabled", false);
						$(".fieldLogin").removeClass("disabled");
					}, 1500);
				}
				return true;
			}
		});
	});
	$("#appsLogout").click(function(){
		if(confirm("Bạn có muốn đăng xuất?")==false) return false;
		else return true;
	});
	
	$("#registerTrial").click(function(){
		$("#frmLogin").hide(100);
		$("#frmRegister").show(100);
	});
	$(".backLogin").click(function(){
		$("#frmRegister").hide(100);
		$("#registerSuccess").hide(100);
		$("#frmLogin").show(100);
	});
	
	$("#btnAppsRegister").click(function(){
		var pass = check_text_length("#appsRegisterPass","#appsRegisterPassMessage","Mật khẩu phải hơn 6 ký tự", 6);
		var pass2 = check_confirm("#appsRegisterPass2","#appsRegisterPass2Message","Mật khẩu nhắc lại chưa đúng", "#appsRegisterPass");
		var email = check_email("#appsEmail","#appsEmailMessage","Email chưa đúng");
		var address = check_text_length("#appsAddress","#appsAddressMessage","Nhập địa chỉ",5);
		var phone = check_phone("#appsPhone","#appsPhoneMessage","Điện thoại chưa đúng");
		var name = check_text_length("#appsName","#appsNameMessage","Nhập họ tên",2);
		if(name==false || email==false || phone==false || address==false || pass==false || pass2==false) return false;
		$("#appsRegisterError").html('');
		$(".fieldRegister").attr("disabled", true);
		$(".fieldRegister").addClass("disabled");
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsRegister:1, name:name, email:email, phone:phone, address:address, pass:pass},
			cache:false,
			success: function(data) {
				if(data==''){
					$("#registerSuccess b").html(email);
					$("#frmRegister").hide(100);
					$("#registerTrial").hide(100);
					$("#registerSuccess").show(100);
				}else{
					setTimeout(function(){
						$("#appsRegisterError").html(data);
						$(".fieldRegister").attr("disabled", false);
						$(".fieldRegister").removeClass("disabled");
					}, 1500);
				}
				return true;
			}
		});
	});
	/*end login, register*/
	
	/*fb apps*/
	$("input[name=btnSearchFanpage]").click(function(){
		var linkFB = $("input[name=fb-link-fanpage]").val();
		
		linkFB = linkFB.split('facebook.com/');
		if(linkFB.length==2){
			linkFB = linkFB[1];
			linkFB = linkFB.split('/');
			linkFB = linkFB[0];
		}else{
			linkFB = linkFB[0];
		}
		getUserFanpage(linkFB);
		return true;
	});
	
	$("#submitFanpage").live("click", function(){
		var id = $(this).attr('fb-id');
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsUserFanpage:2, id:id},
			cache:false,
			success: function(data) {
				if(data=='') return false;
				$("#fb-message").html(data);
			}
		});
	});
	
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
	
	$(".fb-follow").live("click", function(){
		var id = $(this).parents(".fb-feed").attr("id");
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsFeedFollow:id},
			cache:false,
			success: function(data) {
				alert(data);
			}
		});
		return true;
	});
	/*end fb apps*/

});