<?php
$cUser = new controlUsers;

$message_error='';

if(isset($_GET['logout'])) $cUser->logout_admin();

if(isset($_POST['btnSubmit'])){
	$message_error = $cUser->changePassword();
}
?>
<form action="" method="post" name="infomation">
<table width="400" border="0" cellpadding="5" cellspacing="0" style="margin:10px 0 330px 50px">
	<tr>
    	<td colspan="2" align="left" style="line-height:180%"><?php echo $message_error; ?>&nbsp;</td>
    </tr>
    <tr>
    	<th width="126" align="right">Mật khẩu cũ:</th>
    	<td><input type="password" name="password" value="" class="adInput" /></td>
    </tr>
	<tr>
    	<th align="right">Mật khẩu mới:</th>
    	<td><input type="password" name="password_new" value="" class="adInput" /></td>
    </tr>
	<tr>
    	<th align="right">Mật khẩu nhắc lại:</th>
    	<td><input type="password" name="password_repeat" value="" class="adInput" /></td>
    </tr>
	<tr>
    	<th>&nbsp;</th>
    	<td><input type="submit" name="btnSubmit" value="Đổi mật khẩu" class="adBtnLarge bgColorBlue1" /></td>
    </tr>
</table>
</form>