/*popup*/
function centerPopup() {
    var windowWidth = document.documentElement.clientWidth;
    var windowHeight = document.documentElement.clientHeight;
    var popupWidth = $(".containerPopup").width();
    var popupHeight = $(".containerPopup").height();
	var width = parseInt((windowWidth - popupWidth) / 2);
	var height = parseInt((windowHeight - popupHeight - 200) / 2);
	$(".containerPopup").css({
		"top": height,
		"left": width
	});
}
function loadPopup() {
    $("#adPopup").fadeIn("slow");
}
function closePopup() {
    $("#adPopup").fadeOut("slow");
}
$(".closePopup, #adBgPopup").live("click", function(){
	closePopup("#adPopup");
});
/*end popup*/

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

function check_confirm(name_check,name_message,message_error,condition){
	var str1 = $.trim($(name_check).val());
	var str2 = $.trim($(condition).val());
	if(str1!=str2){
		$(name_message).html(message_error);
		$(name_check).focus();
		return false;
	}else{
		$(name_message).html('');
		return str1;
	}
}

function check_phone(name_check,name_message,message_error){
	var str = $.trim($(name_check).val());
	var re=/^[{0,(,+}][0-9-+()\.\s]{9,18}$/;
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

function check_text_length_ckeditor(name_check, name_message, message_error, condition){
	var str = CKEDITOR.instances[name_check].getData();
	if(str.length < condition){
		$(name_message).html(message_error);
		return false;
	}else{
		$(name_message).html('');
		return str;
	}
}

function checkValidDate(strDate){
	var regex = /^([1-9]\d{3}((0[1-9]|1[012])(0[1-9]|1\d|2[0-8])|(0[13456789]|1[012])(29|30)|(0[13578]|1[02])31)|(([2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00))0229)$/;
    if(!(regex.test(strDate))) return false;
	
	return true;
}

function getDateTime(year, month, date, view){
	$( date + ", " + month + ", " + year ).live("change", function(){
		var valueDate = $(date).val();
		var valueMonth = $(month).val();
		var valueYear = $(year).val();
		var datetime = valueYear + valueMonth + valueDate;
		if( checkValidDate(datetime)==true ){
			datetime = valueYear + '-' + valueMonth + '-' + valueDate;
			$(view).val(datetime);
			return true;
		}else{
			$(view).val('');
			return false;
		}
	});
}

function formLoading(display, error, message){
	if(display==1) display='block'; else display='none';
	$(".frm-loading .loading").css("display", display);
	$(".frm-loading .errorGeneral").html(error);
}

function ajax_field_all(nameSelect){
	var fields = new Object();
	var error;
	$(nameSelect).each(function(i, val){
		var type = $(this).attr('type');
		var name = $(this).attr('name');
		var value = $(this).val();
		
		//kiem tra du lieu
		if(typeof $(this).attr('check')!='undefined'){
			var check = $(this).attr('check');
			var message = $(this).attr('message');
			if(check=='phone'){
				value = check_phone($(this), $(this).parent().children('.error'), message);
				if(value == false) error=true;
			}else if(check=='email'){
				value = check_email($(this), $(this).parent().children('.error'), message);
				if(value == false) error=true;
			}else if(check=='user'){
				value = checks_user($(this), $(this).parent().children('.error'), message);
				if(value == false) error=true;
			}else if(!isNaN(check)){
				if(type!='ckeditor'){
					value = check_text_length($(this), $(this).parent().children('.error'), message, check);
				}else{
					value = check_text_length_ckeditor(name, $(this).parent().children('.error'), message, check);
				}
				if(value == false) error=true;
			}
		}
		
		//lay du lieu và field
		if(type!='radio' && type!='checkbox' && type!='ckeditor'){
			fields[name] = value;
		}else if(type=='radio'){
			if(this.checked){
				fields[name] = value;
			}
		}else if(type=='ckeditor'){
			fields[name] = CKEDITOR.instances[name].getData();
		}else if(type=='checkbox'){
			if (this.checked){
				if(typeof fields[name] == 'undefined')
					value = ',' + value + ',';
				else
					value = fields[name] + value + ',';
				
				fields[name] = value;
			}
		}
	});
	
	if(error==true) return false;
	return fields;
}