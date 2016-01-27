<?php
include_once('configUpload.php');
define('CONS_BASE_URL', 'http://localhost/all_v5/dulichhoaviet');/*domain*/
define('CONS_HOST', 'localhost');
define('CONS_USER_DB', 'root');
define('CONS_PASS_DB', '');
define('CONS_NAME_DB', 'dulichhoaviet');
define('CONS_DEFAULT_LANG', 'vi');

/*cache*/
define('CONS_CACHE_URL_FILE', 'cache/');
define('CONS_CACHE_TIME', 3600*12);
define('CONS_CACHE_EXT', 'ch');

/*SEND MAIL*/
define('CONS_HOST_SMTP_SERVER', 'localhost');
define('CONS_SEND_MAIL_ACCOUNT', 'no-reply@iappscode.com');
define('CONS_SEND_MAIL_PASSWORD', 'no-reply#123*');
define('CONS_SEND_MAIL_FROM', 'admin@iappscode.com');
define('CONS_SEND_MAIL_FROM_NAME', 'Admin');
define('CONS_RECEIVE_MAIL_ACCOUNT', 'hieunhan112@gmail.com');
define('CONS_RECEIVE_MAIL_NAME', 'No name');

/*CONTROL LINK*/
define('CONS_LINK_HOME', '');
define('CONS_LINK_AJAX', 'ajax');
define('CONS_LINK_ADMIN', 'cp_admin');
define('CONS_LINK_MANAGER_APPS', 'manager');

/*CONTROL FILE*/
define('CONS_FILE_HOME', 'pageHome');
define('CONS_FILE_AJAX', 'pageAjax');
define('CONS_FILE_ADMIN', 'pageAdmin');
define('CONS_FILE_PAGE', 'pageAll');
define('CONS_FILE_MANAGER_APPS', 'pageApps');

/*WEBSITE*/
define('ERROR_NOT_FOUND_CONTROLLER', 'Not found controller: ');
define('ERROR_NOT_FOUND_FILE', 'Not found file: ');
define('ERROR_NOT_FOUND_PAGE', 'Not found page: ');
define('CONS_IMAGE_DEFAULT','themes/website/img/no-image.jpg');

/*ERROR*/
define('CONS_400','error/400');
define('CONS_404','error/404');
define('CONS_500','error/500');

/*var general*/
$cons_means = array();
$cons_means[] = array('id'=>0, 'name'=>'No');
$cons_means[] = array('id'=>1, 'name'=>'Ô tô');
$cons_means[] = array('id'=>2, 'name'=>'Máy bay');
$cons_means[] = array('id'=>3, 'name'=>'Tàu biển');

$cons_hotel = array();
$cons_hotel[] = array('id'=>0, 'name'=>'Tiêu chuẩn');
$cons_hotel[] = array('id'=>1, 'name'=>'1 sao');
$cons_hotel[] = array('id'=>2, 'name'=>'2 sao');
$cons_hotel[] = array('id'=>3, 'name'=>'3 sao');
$cons_hotel[] = array('id'=>4, 'name'=>'4 sao');
$cons_hotel[] = array('id'=>5, 'name'=>'5 sao');