$(document).ready(function(e) {
	$("#btnAppsLogin").click(function(){
		var username = check_email("#appsUser","#appsUserMessage","Email chưa đúng");
		var password = check_text_length("#appsPass","#appsPassMessage","Mật khẩu phải hơn 6 ký tự", 6);
		if(username==false || password==false) return false;
		$("#appsError").html('');
		$(".fieldLogin").attr("disabled", true);
		$(".fieldLogin").addClass("disabled");
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsLogin:1, username:username, password:password},
			cache:false,
			success: function(data) {
				if(data=='1'){
					location.reload();
				}else{
					setTimeout(function(){
						$("#appsError").html(data);
						$(".fieldLogin").attr("disabled", false);
						$(".fieldLogin").removeClass("disabled");
					}, 1500);
				}
				return true;
			}
		});
	});
	$("#appsLogout").click(function(){
		if(confirm("Bạn có muốn đăng xuất?")==false) return false;
		else return true;
	});
	
	$("#registerTrial").click(function(){
		$("#frmLogin").hide(100);
		$("#frmRegister").show(100);
	});
	$(".backLogin").click(function(){
		$("#frmRegister").hide(100);
		$("#registerSuccess").hide(100);
		$("#frmLogin").show(100);
	});
	
	$("#btnAppsRegister").click(function(){
		var pass = check_text_length("#appsRegisterPass","#appsRegisterPassMessage","Mật khẩu phải hơn 6 ký tự", 6);
		var pass2 = check_confirm("#appsRegisterPass2","#appsRegisterPass2Message","Mật khẩu nhắc lại chưa đúng", "#appsRegisterPass");
		var email = check_email("#appsEmail","#appsEmailMessage","Email chưa đúng");
		var address = check_text_length("#appsAddress","#appsAddressMessage","Nhập địa chỉ",5);
		var phone = check_phone("#appsPhone","#appsPhoneMessage","Điện thoại chưa đúng");
		var name = check_text_length("#appsName","#appsNameMessage","Nhập họ tên",2);
		if(name==false || email==false || phone==false || address==false || pass==false || pass2==false) return false;
		$("#appsRegisterError").html('');
		$(".fieldRegister").attr("disabled", true);
		$(".fieldRegister").addClass("disabled");
		$.ajax({
			url: 'ajax',
			type:'POST',
			data:{appsRegister:1, name:name, email:email, phone:phone, address:address, pass:pass},
			cache:false,
			success: function(data) {
				if(data==''){
					$("#registerSuccess b").html(email);
					$("#frmRegister").hide(100);
					$("#registerTrial").hide(100);
					$("#registerSuccess").show(100);
				}else{
					setTimeout(function(){
						$("#appsRegisterError").html(data);
						$(".fieldRegister").attr("disabled", false);
						$(".fieldRegister").removeClass("disabled");
					}, 1500);
				}
				return true;
			}
		});
	});
});