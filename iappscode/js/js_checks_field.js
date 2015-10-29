var popupStatus = 0;
function loadPopup() {
    if(popupStatus==0) {
        $("#backgroundPopup").css({"opacity": "0.5"});
        $("#backgroundPopup").fadeIn("slow");
        $("#popupContact").fadeIn("slow");
        popupStatus = 1;
    }
}
function disablePopup() {
    if(popupStatus==1) {
        $("#backgroundPopup").fadeOut("slow");
        $("#popupContact").fadeOut("slow");
        popupStatus = 0;
    }
}
function centerPopup(position) {
    var windowWidth = document.documentElement.clientWidth;
    var windowHeight = document.documentElement.clientHeight;
    var popupHeight = $("#popupContact").height();
    var popupWidth = $("#popupContact").width();
	if(position==1){
		$("#popupContact").css({
			"position": position,
			"top": windowHeight/2-popupHeight/2,
			"left": windowWidth/2-popupWidth/2
		});
	}else{
		$("#popupContact").css({
			"position": position,
			"top": "50px",
			"left": windowWidth/2-popupWidth/2
		});
	}
    $("#backgroundPopup").css({"height": windowHeight});
}
/* end popup */

function check_text_length(name_check,name_message,message_error,condition){
	var str = $.trim($(name_check).val());
	if(str.length < condition){
		$(name_message).html(message_error);
		$(name_check).focus();
		return false;
	}else{
		$(name_message).html('');
		return str;
	}
}

function check_email(name_check,name_message,message_error){
	var email = $.trim($(name_check).val());
	var re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(!re.test(email)){
		$(name_message).html(message_error);
		$(name_check).focus();
		return false;
	}else{
		$(name_message).html('');
		return email;
	}
}

function check_email_nl(name_check,name_message,message_error,condition){
	var str = $.trim($(name_check).val());
	var str2 = $.trim($(condition).val());
	if(str!=str2 || str2==''){
		$(name_message).html(message_error);
		$(condition).focus();
		return false;
	}else{
		$(name_message).html('');
		return str2;
	}
}

function check_phone(name_check,name_message,message_error){
	var str = $.trim($(name_check).val());
	var re=/^[{0,(,+}][0-9-+()\.\s]{8,18}$/;
	if(!re.test(str)){
		$(name_message).html(message_error);
		$(name_check).focus();
		return false;
	}else{
		$(name_message).html('');
		return str;
	}
}

function check_number(name_check,name_message,message_error){
	var str = $.trim($(name_check).val());
	if(isNaN(str) || str==''){
		$(name_message).html(message_error);
		$(name_check).focus();
		return false;
	}else{
		$(name_message).html('');
		return str;
	}
}

function checks_user(name_check,name_message,message_error){
	var str = $.trim($(name_check).val());
	var re = /^\w+([\.-]?\w+){3,20}$/;
	if(!re.test(str)){
		$(name_message).html(message_error);
		$(name_check).focus();
		return false;
	}else{
		$(name_message).html('');
		return str;
	}
}
