<div class="container">
	<div id="left" style="height:auto; border-right:solid 1px #CCC">
    	<div class="clear30"></div>
        <?php
        $menu = array();
        $menu[] = array('name'=>'Liên kết đến fanpage', 'link'=>'fanpage', 'bgPosition'=>'background-position:0px -292px');
        $menu[] = array('name'=>'Bài viết theo dõi', 'link'=>'follow', 'bgPosition'=>'background-position:0px -292px');
        $menu[] = array('name'=>'Thông tin chung', 'link'=>'general', 'bgPosition'=>'background-position:0px -319px');
        $menu[] = array('name'=>'Thông tin tài khoản', 'link'=>'account', 'bgPosition'=>'background-position:0px -344px');
        $menu[] = array('name'=>'Thanh toán, gia hạn', 'link'=>'payment', 'bgPosition'=>'background-position:0px -369px');
        $menu[] = array('name'=>'Hướng dẫn', 'link'=>'guide', 'bgPosition'=>'background-position:0px -394px');
        $menu[] = array('name'=>'Thông báo', 'link'=>'notice', 'bgPosition'=>'background-position:0px -420px');
		
		$title=''; $include='';
		foreach($menu as $row){
			if($arrUrl['link']!=$row['link']) $active='';
			else{
				$active='active';
				$title = $row['name'];
				$include = $row['link'];
			}
			echo '<div class="left-item allIcon" style="'.$row['bgPosition'].'"><a href="'.CONS_LINK_MANAGER_APPS.'/'.$row['link'].'" class="link '.$active.'">'.$row['name'].'</a></div>';
		}
		
		?>
        <div class="clear30"></div>
    </div>
    <div id="right" style="height:auto">
    	<div class="clear30"></div>
    	<h2 class="title"><?php echo $title;?></h2>
        <div class="content"><?php include_once("apps_manager_{$include}.php");?></div>
    </div>
</div>

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
$(document).ready(function(e) {
    window.fbAsyncInit = function() {
		FB.init({
			appId      : '1634378060168126', // App ID
			channelUrl : 'http://www.iappscode.com/manager', // Channel File
			status     : true, // check login status
			cookie     : true, // enable cookies to allow the server to access the session
			xfbml      : true  // parse XFBML
		});
		
		FB.Event.subscribe('auth.authResponseChange', function(response){
			if (response.status === 'connected'){
				//$("#fb-message").html('Connected to Facebook'); //SUCCESS
				<?php echo $scriptFB; ?>
				//getFeedFollow('478505599008414_137127649812879');
			} else if (response.status === 'not_authorized'){
				$("#fb-error").html('Failed to Connect'); //FAILED
			} else {
				$("#fb-error").html('Logged Out'); //UNKNOWN ERROR
			}
		});
	};
});
</script>