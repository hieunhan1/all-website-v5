<?php
$viewFBLogin=''; $scriptFB=''; $postFollow='';
if(count($checkAppsUser)!=0){
	$userFB = $checkAppsUser['fb_id'];
	if($checkAppsUser['type']==1){
		$scriptFB = 'getUserInfo();';
	}else{
		$scriptFB = 'getFanpage();';
	}
	
	$data = $c->_mApps->_viewAppsFeedFollow($_SESSION['userID']);
	foreach($data as $row) $postFollow.=$row['feed_id'].',';
}else{
	$userFB = 'me';
	$viewFBLogin = '<div id="view-fb-login">
		<p class="h2">Vui lòng chọn 1 trong 2 lựa chọn sau:</p>
		<p class="error">**Lưu ý: Chỉ chọn facebook cá nhân hoặc trang fanpage để quản lý, khi đã chọn bạn không thể thay đổi.</p>
		<p class="clear20"></p>
		<div id="fb-login" class="allIcon" onclick="Login();">Kết nối đến facebook của bạn (quản lý trang cá nhân)</div>
		<p class="or">hoặc</p>
		<p id="fb-link-fanpage">
			<input type="text" name="fb-link-fanpage" placeholder="Nhập địa chỉ trang fanpage muốn quản lý" class="txt" />
			<input type="button" name="btnSearchFanpage" value="Tìm" class="btn" />
		</p>
		<p class="clear10"></p>
	</div>';
}
?>
<div id="fb-id" style="display:none"><?php echo $userFB;?></div>
<div id="fb-message" class="message" style="margin-bottom:20px"></div>
<div id="fb-error" class="error" style="margin-bottom:20px"></div>
<div id="fb-message-follow"></div>
<div id="fb-feed-follow" style="display:none"><?php echo $postFollow;?></div>

<?php echo $viewFBLogin;?>

<div class="clear1"></div>
<div id="fb-feeds"></div>