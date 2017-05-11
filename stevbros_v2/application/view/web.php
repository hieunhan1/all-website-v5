<!DOCTYPE html>
<html>
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="content-language" content="vi" />
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
<link rel="alternate" href="<?php echo CONS_BASE_URL; if($currentPage['type']['id'] !=1) echo '/'.$currentPage['name_alias'];?>" hreflang="vi-vn" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="themes/website/general.css" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
</head>

<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-42222366-2', 'auto');
  ga('send', 'pageview');
</script>
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
			<div class="img" style="background-image:url('.IMAGE_URL.$row['img'].')"></div>
		</div>';
	}
}

echo $viewData;

include_once('web_footer.php');
?>
</body>
</html>