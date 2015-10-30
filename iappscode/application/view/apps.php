<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apps quản lý facebook</title>
<link rel="stylesheet" type="text/css" href="themes/apps/style.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>

<div id="top" class="fontOther">
	<div class="container">
        <div id="top-left">
            <span class="span allIcon" style="background-position:0px -348px"><?php echo $config['hotline'];?></span>
            <span class="span allIcon" style="background-position:0px -398px"><?php echo $config['email'];?></span>
        </div>
        <div id="top-right">
        	<li class="li border"><?php //echo '<a href="'.$header['link'].'">'.$header['name'].'</a>';?></li>
        </div>
    </div>
    <div class="clear1"></div>
</div>




<?php
echo $viewData;
?>

</body>
</html>
