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
<link rel="stylesheet" type="text/css" href="themes/website/style480.css" media="screen and (min-width:210px) and (max-width:480px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style768.css" media="screen and (min-width:480px) and (max-width:768px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style1024.css" media="screen and (min-width:768px) and (max-width:1024px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:1024px)" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<?php
$arr = array(
	1=>array('#287e7a', '#e48d3d', '#1a4d4a'),
	2=>array('#97b09b', '#807759', '#688a6d'),
	3=>array('#ea5b23', '#15305b', '#a93a10'),
);
$i = date('H')%4;
if($i!=0){
	$color = $arr[$i];
	echo '<style>
	#nav li ul a:hover {background-color:'.$color[0].'}
	#top{background-color:'.$color[0].'}
	#header{background-color:'.$color[1].'}
	#menuH{background-color:'.$color[1].' !important}
	#header #menuH .li:hover{border-bottom:solid 4px '.$color[0].'}
	#header #menuH .active{border-bottom:solid 4px '.$color[0].'}
	#highlights{background-color:'.$color[0].'}
	#whychooseus .tab .h3:hover{background-color:'.$color[0].'; border:solid 1px '.$color[0].'}
	#whychooseus .tab .active{background-color:'.$color[0].'; border:solid 1px '.$color[0].'}
	#opening .header{background-color:'.$color[0].'}
	#contact-frm .btn{background-color:'.$color[0].'}
	#phantrang a:hover{background-color:'.$color[0].'}
	#phantrang .current{background-color:'.$color[0].'}
	#opinion .box:hover{background-color:'.$color[0].'}
	#opinion .box .view{background-color:'.$color[0].'; border-bottom:solid 3px '.$color[2].'}
	.btn-business-info{background-color:'.$color[0].'; border-bottom:solid 3px '.$color[2].'}
	#frmRegister .btn{background-color:'.$color[0].'; border-bottom:solid 3px '.$color[2].'}
	.register{background-color:'.$color[0].'; border-bottom:solid 3px '.$color[2].'}
	</style>';
}

include_once('web_header.php'); flush();

echo $viewData;

include_once('web_footer.php');
?>
<div id="highlights"><a href="<?php echo CONS_BASE_URL;?>/online">Luyện thi PMP mỗi ngày</a></div>

<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</body>
</html>