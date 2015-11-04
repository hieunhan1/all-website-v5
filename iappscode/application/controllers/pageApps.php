<?php
class pageApps extends controlGerenal{
	public $_mApps;
	public function __construct(){
		parent::__construct();
		$this->_mApps = new modelApps;
	}
}

$c = new pageApps;

$lang = 'vi';
$config = $c->config($lang);
$language_var = $c->_model->_language_var($lang);

$viewData = ob_start();
if(!isset($_SESSION['userID'])){
	include_once("view/apps_login.php");
}else{ //user manager
	if($arrUrl['link']=='logout'){
		$cU = new controlUsers;
		$cU->logout_user(CONS_BASE_URL.'/'.CONS_LINK_MANAGER_APPS);
		return true;
	}
	
	$header = array(
		'<li class="li">Chào: '.$_SESSION['userName'].'</li>',
		'<li class="li border"><a href="'.CONS_LINK_MANAGER_APPS.'/logout" id="appsLogout">Đăng xuất</a></li>',
	);
	
	$checkAppsUser = $c->_mApps->_checksAppsUserManager($_SESSION['userID']);
	
	include_once("view/apps_manager.php");
}// end user manager
$viewData = ob_get_clean();

include_once('view/apps.php');