<?php
class pageHome extends controlGerenal{
	public function currentHome($lang){
		$typeId = 1; //type 1 home page
		$arr = array(
			'lang' => $lang,
			'type_id' => $typeId,
			'limit' => 1,
		);
		$row = $this->_model->_headerData($arr);
		$row = $row[0];
		$typeMenu = $this->webType($typeId);
		if($row['img']=='')
			$img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
		else
			$img = CONS_BASE_URL.'/'.IMAGE_URL.$row['img'];
		
		$arr = array(
			'id'=>$row['id'],
			'name'=>strip_tags($row['name']),
			'title'=>strip_tags($row['title']),
			'description'=>strip_tags($row['description']),
			'tags'=>$row['tags'],
			'url'=>$row['url'],
			'img'=>$img,
			'lang'=>$row['lang'],
			'type'=>array('id'=>$typeMenu['id'], 'name'=>$typeMenu['name']),
			'root'=>array('id' => $row['id']),
		);
		return $arr;
	}
}

if(!isset($lang)){
	$lang = CONS_DEFAULT_LANG;
}
$c = new pageHome();

//$cache = $c->cacheBegin();
//if($cache==true) return true;

$config = $c->_model->_config($lang);
$lang_var = $c->_model->_language_var($lang);
$currentPage = $c->currentHome($lang);
$tagHead = $c->tagHead($currentPage['title'], $currentPage['description'], $currentPage['tags'], $currentPage['img'], $currentPage['url']);

$viewData = ob_start();
include_once('view/web_home.php');
$viewData = ob_get_clean();

include_once('view/web.php');

//$c->cacheEnd(); /*luu cache*/