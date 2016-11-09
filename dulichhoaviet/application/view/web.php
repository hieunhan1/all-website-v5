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
<link rel="alternate" href="<?php echo CONS_BASE_URL; if($currentPage['type']['id'] !=1) echo '/'.$currentPage['name_alias']; ?>" hreflang="vi-vn" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<!--Insert CSS-->
<link rel="stylesheet" type="text/css" href="themes/website/general.css" />
<link rel="stylesheet" type="text/css" href="themes/website/style568.css" media="screen and (min-width:210px) and (max-width:567px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style768.css" media="screen and (min-width:568px) and (max-width:767px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style1000.css" media="screen and (min-width:768px) and (max-width:999px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style1200.css" media="screen and (min-width:1000px) and (max-width:1280px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:1280px)" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</head>

<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-41223360-2', 'auto');
  ga('send', 'pageview');
</script>
<?php
include_once('web_header.php'); flush();
echo $viewData;
include_once('web_footer.php');
include_once('web_tour_order.php');
include_once('web_support.php');
?>

<script lang="javascript">(function() {var pname = ( (document.title !='')? document.title : document.querySelector('h1').innerHTML );var ga = document.createElement('script'); ga.type = 'text/javascript';ga.src = '//live.vnpgroup.net/js/web_client_box.php?hash=fbdfad28b8ee8e858b98dc8bce1f2e75&data=eyJzc29faWQiOjQyNzAyMjAsImhhc2giOiIzMjljODJkNjBiMTcwOGE2Mjg4ZjNlYjYzZDI1M2EzMSJ9&pname='+pname;var s = document.getElementsByTagName('script');s[0].parentNode.insertBefore(ga, s[0]);})();</script>	

</body>
</html>