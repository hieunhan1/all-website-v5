<?php
$postFollow='';
if(!isset($_GET['feed_id'])){
	$scriptFB = 'connectFeedFollow();';
	$data = $c->_mApps->_viewAppsFeedFollow($_SESSION['userID']);
	foreach($data as $row) $postFollow.=$row['feed_id'].',';
}else{
	$scriptFB = "getFeedFollow('{$_GET['feed_id']}');";
}


?>

<div id="fb-message" class="message" style="margin-bottom:20px"></div>
<div id="fb-error" class="error" style="margin-bottom:20px"></div>
<div id="fb-feed-follow" style="display:none"><?php echo $postFollow;?></div>

<div class="clear1"></div>
<div id="fb-feeds"></div>