<?php
$c = new controlGerenal;

$lang = 'vi';
$config = $c->config($lang);
$language_var = $c->_model->_language_var($lang);

$urlImg = $c->webType();

$link = $arrUrl['link'];

/*
if($currentPage['properties']==1) $fileView = "web_{$currentPage['type']}_list.php";
else if($currentPage['properties']==2){
	$menu = $c->headerMenu($currentPage['menu_id']);
	$rowDetail = $c->_model->_content($currentPage['id']);
	if(count($rowDetail)==0){
		$error = ERROR_NOT_FOUND_PAGE.$arrUrl['page'];
		include_once('view/web_error.php');
		return false;
	}
	$fileView = "web_{$currentPage['type']}_detail.php";
}

$tagHead = $c->tagHead($currentPage['title'].$namePage, $currentPage['description'].$namePage, $currentPage['tags'], $currentPage['img'], $currentPage['url']);*/


$viewData = ob_start();
if(!isset($_SESSION['userID'])){
	include_once("view/apps_login.php");
}else{
	if($arrUrl['link']=='logout'){
		$cU = new controlUsers;
		$cU->logout_user(CONS_BASE_URL.'/'.CONS_LINK_MANAGER_APPS);
		return true;
	}
	$header = array(
		'<li class="li">Chào: '.$_SESSION['userName'].'</li>',
		'<li class="li border"><a href="'.CONS_LINK_MANAGER_APPS.'/logout" id="appsLogout">Đăng xuất</a></li>',
	);
	include_once("view/apps_manager.php");
}
$viewData = ob_get_clean();

include_once('view/apps.php');