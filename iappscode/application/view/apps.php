<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apps quản lý facebook</title>
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="themes/apps/style.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>

<div id="top" class="fontOther">
	<div class="container">
        <div id="top-left">
            <span class="span allIcon" style="background-position:0px -100px"><?php echo $config['hotline'];?></span>
            <span class="span allIcon" style="background-position:0px -150px"><?php echo $config['email'];?></span>
        </div>
        <div id="top-right">
        	<?php
            if(isset($header))
				for($i=0; $i<count($header); $i++)
					echo $header[$i];
			?>
        </div>
    </div>
    <div class="clear1"></div>
</div>




<?php
echo $viewData;
?>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_apps.js"></script>
</body>
</html>
