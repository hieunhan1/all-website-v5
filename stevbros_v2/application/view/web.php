<!DOCTYPE html>
<html>
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $tagHead['title'];?></title>
<meta name="description" content="<?php echo $tagHead['des'];?>" />
<meta name="keywords" content="<?php echo $tagHead['key'];?>" />
<meta name="robots" content="<?php echo $tagHead['robots'];?>" />
<meta property="og:title" content="<?php echo $tagHead['title'];?>" />
<meta property="og:description" content="<?php echo $tagHead['des'];?>" />
<meta property="og:url" content="<?php echo $tagHead['url'];?>" />
<meta property="og:image" content="<?php echo $tagHead['img'];?>" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<!--Insert CSS-->
<link rel="stylesheet" type="text/css" href="themes/website/general.css" />
<link rel="stylesheet" type="text/css" href="themes/website/style480.css" media="screen and (min-width:210px) and (max-width:480px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style768.css" media="screen and (min-width:480px) and (max-width:768px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style1024.css" media="screen and (min-width:768px) and (max-width:1024px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:1024px)" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
</head>

<body>
<?php
if($currentPage['typeID']!=1){
	include_once('web_header.php');
	
	$arr = array(
		'parent' => 0,
		'type_id' => 16,
		'menu_id'=>$currentPage['rootID'],
	);
	$data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		$row = $data[0];
		if(!isset($currentMenu)) $id=$currentPage['id']; else $id=$currentMenu['id'];
		$navigator = $c->viewNavigator($lang, $id);
		echo '<div id="slider-page">
			'.$navigator.'
			<div class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></div>
		</div>';
	}
}

echo $viewData;

include_once('web_footer.php');
?>
</body>
</html>