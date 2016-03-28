<!DOCTYPE html>
<html>
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="vi" />
<title><?php echo $tagHead['title'];?></title>
<meta name="description" content="<?php echo $tagHead['des'];?>" />
<meta name="keywords" content="<?php echo $tagHead['key'];?>" />
<meta name="robots" content="<?php echo $tagHead['robots'];?>" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="alternate" href="<?php echo CONS_BASE_URL; if($currentPage['type']['id'] !=1) echo '/'.$currentPage['name_alias'];?>" hreflang="vi-vn" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<!--Insert CSS-->
<link rel="stylesheet" type="text/css" href="themes/website/general.css" />
<link rel="stylesheet" type="text/css" href="themes/website/style3.css" media="screen and (min-width:210px) and (max-width:449px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style2.css" media="screen and (min-width:450px) and (max-width:768px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style1.css" media="screen and (min-width:768px) and (max-width:1000px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:1000px)" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</head>

<body>
<?php
include_once('web_header.php'); flush();
echo $viewData;
include_once('web_footer.php');
?>

</body>
</html>