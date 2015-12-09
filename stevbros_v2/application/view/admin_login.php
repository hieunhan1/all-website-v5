<!DOCTYPE html>
<html>
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quản trị website</title>
<meta name="robots" content="nofollow" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="themes/admin2/ad-general.css">
<link rel="stylesheet" type="text/css" href="themes/admin2/ad-style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
</head>

<body>
<div id="wrapper" style="height:100%; position:absolute; background-color:#222">
	<form name="form1" method="post" action="">
	<div id="adLogin">
    	<h1 class="h1 iconLogin">Webmaster</h1>
        <h2 class="h2">© Copyright</h2>
        <div class="frm">
        	<div class="title iconLogin">Please Enter Your Information</div>
            <div class="adError" style="font-weight:bold; margin-bottom:10px"><?php echo $error; ?></div>
            <div class="txt">
            	<input type="text" name="username" id="username" class="adInput iconLogin" placeholder="Username" style="background-position:310px -42px" />
                <p id="username_message" class="adError"></p>
           	</div>
            <div class="txt">
            	<input type="password" name="password" id="password" class="adInput iconLogin" placeholder="Password" style="background-position:310px -92px" />
                <p id="password_message" class="adError"></p>
           	</div>
            <div class="left">
                <div class="squaredFour">
                    <input type="checkbox" name="remember" value="1" id="squaredFour" />
                    <label for="squaredFour"></label>
                </div>
                Remember Me
            </div>
            <div class="right">
            	<input type="submit" name="btnLogin" value="Login" id="btnLogin" class="adBtnSmall bgColorBlue1 iconLogin" />
            </div>
            <div class="clear1"></div>
        </div>
    </div>
    </form>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnLogin").click(function(){
		$("#adLogin .adError:first").html('');
		var username = checks_user("#username","#username_message","Tài khoản đăng nhập chưa đúng");
		var password = check_text_length("#password","#password_message","Mật khẩu phải hơn 6 ký tự",6);
		if(username == false) return false;
		else if(password == false) return false;
		else return true;
	});
});
</script>
</body>
</html>