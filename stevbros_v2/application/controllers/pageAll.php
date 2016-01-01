<?php
$c = new controlGerenal;
$currentPage = $c->currentPage($arrUrl['link']);
if($currentPage['id']==''){
	$lang = $arrUrl['link'];
	$checksLang = $c->_model->_language($lang);
	if(count($checksLang) != 0){
		include_once('pageHome.php');
		return true;
	}
	$error = ERROR_NOT_FOUND_PAGE.$arrUrl['link'];
	include_once('view/web_error.php');
	return false;
}

$lang = $currentPage['lang'];
$config = $c->_model->_config($lang);
$lang_var = $c->_model->_language_var($lang);

if($currentPage['properties']==1) $fileView = "web_{$currentPage['type']}_list.php";
else if($currentPage['properties']==2){
	$currentMenu = $c->headerMenu($currentPage['menu_id']);
	$rowDetail = $c->_model->_content($currentPage['id']);
	if(count($rowDetail)==0){
		$error = ERROR_NOT_FOUND_PAGE.$arrUrl['page'];
		include_once('view/web_error.php');
		return false;
	}
	$fileView = "web_{$currentPage['type']}_detail.php";
}

if($arrUrl['page']==1) $namePage=''; else $namePage=' - Page '.$arrUrl['page'];

$tagHead = $c->tagHead($currentPage['title'].$namePage, $currentPage['description'].$namePage, $currentPage['tags'], $currentPage['img'], $currentPage['url']);

/*view*/
$viewData = ob_start();
if(file_exists("view/{$fileView}"))
	include_once("view/{$fileView}");
else{
	$error = ERROR_NOT_FOUND_FILE.$fileView;
	include_once('view/web_error.php');
	return false;
}
$viewData = ob_get_clean();
/*end view*/

$logo = $c->logo($lang);
$logoStevbros = $logo[0];
$logoPMI = $logo[1];
$logoStevbrosWhite = $logo[2];

include_once('view/web.php');