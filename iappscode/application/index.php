<?php
session_start();
ob_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');

include_once('config/config.php');

function tachUrl($url){
	$arr = array();
	$urlArr = explode('/', $url);
	switch($urlArr[0]){
		case CONS_LINK_HOME :
			$arr['control'] = CONS_FILE_HOME;
			return $arr;
		case CONS_LINK_AJAX	:
			$arr['control'] = CONS_FILE_AJAX;
			return $arr;
		case CONS_LINK_ADMIN :
			$arr['control'] = CONS_FILE_ADMIN;
			if(!isset($urlArr[1]) || $urlArr[1]=='') $arr['link'] = 'home'; else $arr['link'] = $urlArr[1];
			return $arr;
		case CONS_LINK_MANAGER_APPS :
			$arr['control'] = CONS_FILE_MANAGER_APPS;
			if(!isset($urlArr[1]) || $urlArr[1]=='') $arr['link'] = 'fanpage'; else $arr['link'] = $urlArr[1];
			return $arr;
		default : 
			$regex='/(.*)*.html$/';
			if(!preg_match($regex, $url)){
				$arr['control'] = CONS_FILE_PAGE;
				$arr['link'] = $urlArr[0];
				if(!isset($urlArr[1])) $arr['page']=1; else $arr['page']=$urlArr[1];
			}else{
				$arr['control'] = CONS_FILE_DETAIL;
				$arr['link'] = $urlArr[0];
				$arr['page'] = str_replace('.html', '', $urlArr[1]);
			}
			return $arr;
	}
}

$url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
$url = str_replace(CONS_BASE_URL.'/', '', $url);
$arrUrl = tachUrl($url);

$fileController = "controllers/{$arrUrl['control']}.php";
if(file_exists($fileController))
	include_once($fileController);
else
	echo ERROR_NOT_FOUND_CONTROLLER.$fileController;

function __autoload($class) {
	$fileControl = "controllers/{$class}.php";
	$fileModel = "models/{$class}.php";
	if(file_exists($fileControl)) include_once($fileControl); 
	if(file_exists($fileModel)) include_once($fileModel); 
}