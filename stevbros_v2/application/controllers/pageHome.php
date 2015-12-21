<?php
class pageHome extends controlGerenal{
	public $_lang;
	public function __construct($lang){
		parent::__construct();
		$this->_lang = $lang;
	}
	
	public function currentHome(){
		$typeId = 1; //type 1 home page
		$arr = array(
			'lang' => $this->_lang,
			'type_id' => $typeId,
			'limit' => 1,
		);
		$row = $this->_model->_headerData($arr);
		$row = $row[0];
		$typeMenu = $this->webType($typeId);
		if($row['img']=='')
			$img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
		else
			$img = CONS_BASE_URL.'/'.$typeMenu['url_img'].$row['img'];
		
		$arr = array(
			'id'=>$row['id'],
			'name'=>strip_tags($row['name']),
			'title'=>strip_tags($row['title']),
			'description'=>strip_tags($row['description']),
			'tags'=>strip_tags($row['tags']),
			'url'=>$row['url'],
			'img'=>$img,
			'lang'=>strip_tags($row['lang']),
			'typeID'=>$typeMenu['id'],
			'typeName'=>$typeMenu['name'],
			'url_img'=>$typeMenu['url_img'],
			'url_img_thumb'=>$typeMenu['url_img_thumb'],
			'rootID'=>$row['id'],
		);
		return $arr;
	}
}

include_once('cache/cachebegin.php');

if(!isset($lang)) $lang = CONS_DEFAULT_LANG;

$c = new pageHome($lang);
$config = $c->config($lang);
$lang_var = $c->_model->_language_var($lang);
$currentPage = $c->currentHome();
$tagHead = $c->tagHead($currentPage['title'], $currentPage['description'], $currentPage['tags'], $currentPage['img'], $currentPage['url']);

$urlImg = $c->webType();

$logo = $c->logo($lang);
$logoStevbros = $logo[0];
$logoPMI = $logo[1];
$logoStevbrosWhite = $logo[2];

$viewData = ob_start();
include_once('view/web_home.php');
$viewData = ob_get_clean();

include_once('view/web.php');

include_once('cache/cacheend.php');