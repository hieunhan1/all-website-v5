// JavaScript Document
/*bien doi alias*/
function change_alias(alias, dau_thaythe){
	var str = alias;
	str= str.toLowerCase();
	str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");
	str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");
	str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i");
	str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");
	str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");
	str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");
	str= str.replace(/đ/g,"d");
	str= str.replace(/!|®|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|–|_|-/g, dau_thaythe);
	str= str.replace(/\\|\$|\||\{|\}|\`/g, dau_thaythe);
	/* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
	str= str.replace(/-+-/g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/ + /g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/^\-+|\-+$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	str= str.replace(/^\ +|\ +$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	return str;
}
function remove_ky_tu_dac_biet(alias, dau_thaythe){
	var str = alias;
	str= str.toLowerCase();
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_|-/g, dau_thaythe);
	str= str.replace(/\\|\$|\||\{|\}|\`/g, dau_thaythe);
	/* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
	str= str.replace(/-+-/g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/ + /g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/^\-+|\-+$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	str= str.replace(/^\ +|\ +$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	return str;
}
function viewDataAction(str){
	$("#dataActionContent").html('<div class="process">' + str + '</div>');
	$("#dataAction").show(200);
	return true;
}
function closeDataAction(){
	$("#dataActionContent").html('<div class="process"></div>');
	$("#dataAction").hide(200);
	return true;
}

$(document).ready(function(e) {
	//fixed width, height
	function autoWidthLeftRight(){
		var h_win = parseInt($(window).height());
		var h_left = parseInt($("#adLeft").height());
		var h_right = parseInt($("#adRight").height());
		
		if(h_win>h_left && h_win>h_right){
			if(h_win-86 > h_right){
				$("#adLeft").height(h_win-86);
				$("#adRight").height(h_win-86);
			}else{
				$("#adLeft").height(h_win-45);
				$("#adRight").height(h_win-45);
			}
		}else if(h_right>h_left){
			$("#adLeft").height(h_right);
			$("#adRight").height(h_right-200);
		}else{
			$("#adLeft").height(h_left);
			$("#adRight").height(h_left-200);
		}
		
		var w_win = $(window).width();
		var w_left = $("#adLeft").width();
		var w_right = parseInt(w_win) - parseInt(w_left) - 30;
		
		$("#adRight").width(w_right);
		$("#adRight .quickView").width(w_right-150);
		$("#adRight .rightHeader").width(w_right);
		//alert(w_win + ' - ' + w_left + ' - ' + w_right);
		//alert(h_win + ' - ' + h_left + ' - ' + h_right);
		return true;
	}
	autoWidthLeftRight();
	$(window).bind("resize", function(){
		autoWidthLeftRight();
		centerPopup();
	});
	
	$(window).bind('scroll', function () {
		autoWidthLeftRight();
		if ($(window).scrollTop() > 45) {
			$('#adHeader').addClass('adHeaderFixed');
			$('#adLeft').addClass('adLeftFixed');
			$('.rightHeader').addClass('adRightFixed');
			$('#search').addClass('searchFixed');
			if($('.rightHeader').length) $("#adRight").css('margin-top', '200px');
			else $("#adRight").css('margin-top', '56px');
		} else {
			$('#adHeader').removeClass('adHeaderFixed');
			$('#adLeft').removeClass('adLeftFixed');
			$('.rightHeader').removeClass('adRightFixed');
			$('#search').removeClass('searchFixed');
			$("#adRight").css('margin-top', '0px');
		}
	});
	//end fixed width, height
	
	//main
	$("#adMain li a").mouseover(function(){
		$(this).children("span:first").addClass("adIconWhite");
		$(this).children("span:first").removeClass("adIconBlack");
	});
	$("#adMain li a").mouseout(function(){
		$(this).children("span:first").addClass("adIconBlack");
		$(this).children("span:first").removeClass("adIconWhite");
	});
	//end main
	
	//quick view
	var adFieldsQuickView = new Object();
	$(".fieldQuickView").each(function(i, val){
		var name = $(this).attr("name");
		var type = $(this).attr("type");
		var info = $(this).html();
		adFieldsQuickView[i] = {name:name, type:type, info:info};
	});
	function viewQuick(fields, data, url){
		var txt=''; var img=''; var des='';
		for (var i in fields){
			var name = fields[i].name;
			var type = fields[i].type;
			var info = fields[i].info;
			if(type=='img'){
				var img = data[name];
				if(img!=''){
					//var urlImg = $("#urlImg").html();
					img = 'public/_thumbs/Images/' + img;
				}else{
					img = 'themes/website/img/no-image.jpg';
				}
				img='<div class="img corner5"><img src="' +img+ '" alt="" /></div>';
			}else if(type=='txt'){
				txt+='<div class="item-view"><b>' +info+ ':</b> ' +data[name]+ '</div>';
			}else if(type=='des'){
				var des='<div class="item-info"><b>' +info+ '</b>: ' +data[name]+ '</div>';
			}
		}
		var str='<div class="item-left">' +img+txt+ '</div>';
		str+='<div class="item-right">' +des;
		str+='<div class="adAction">';
		//str+='<p class="adBtn adView bgColorGreen"><span class="adIconWhite adIconView"></span>Xem</p>';
		//str+='<p class="adBtn adStatus bgColorOranges"><span class="adIconWhite adIconEnable"></span>Status</p>';
		str+='<a href="' +url+ '" class="adBtn adEdit bgColorBlue1"><span class="adIconWhite adIconEdit"></span>Sửa</a>';
		//str+='<a href="javascript:;" class="adBtn adDelete bgColorRed"><span class="adIconWhite adIconDelete"></span>Xóa</a>';
		str+='</div></div>';
		return str;
	}
	$(".adTable .row").click(function(){
		$(".row").removeClass("active");
		$(this).addClass("active");
		
		var data = $(this).children(".adAction").children(".data").html();
		data = data.replace(/\n/g, "");
		data = $.parseJSON(data);
		//console.log(data);
		var url = $(this).children(".adAction").children(".adEdit").attr("href");
		
		var str = viewQuick(adFieldsQuickView, data, url)
		
		$(".quickView").html(str);
	});
	//end quick view
	
	var link_ajax = 'ajax/';
	var table = $("#tableName").html();
	
	//ajax_number_item
	function ajax_number_item(){
		$(".ajax_thongtin").each(function(i, val){
			var id = $(this).attr('id');
			var table = $(this).attr('table');
			var parameter = $(this).attr('parameter');
			if(parameter!=''){
				parameter = parameter.replace('?', '');
			}
			$.ajax({ 	
				url: link_ajax,
				type:'POST',
				data:{ajaxNumberItem:1, table:table, parameter:parameter},
				cache:false,
				success: function(data) {
					if(data!="0"){
						$("#" + id).html(data);
						$("#" + id).css("background-color", "#F00");
					}
					else $("#" + id).hide();
				}
			});
		});
		return true;
	}
	ajax_number_item();
	//end ajax_number_item
	
	//status
	$(".adStatus").live("click", function(){
		var data = $(this).parent().children(".data").html();
		data = $.parseJSON(data);
		var btnStatus = '<span class="adBtnSmall bgColorGreen corner8 btnStatus">Yes</span>';
		var btnCancel = '<span class="adBtnSmall bgColorGray corner8 closePopup">Cancel</span>';
		
		var status = $(this).children("span").attr("class");
		status = status.split(' status');
		status = status[1];
		$(".adStatus").removeClass("statusActive");
		$(this).addClass("statusActive");
		
		var nameStatus;
		if(status=='1'){
			status = 0;
			nameStatus='ẩn';
		}else{
			status = 1;
			nameStatus='hiện';
		}
		var field = '<div id="fieldActive" style="display:none">{"id":"' +data.id+ '", "status":"' +status+ '"}</div>';
		$(".titlePopup").html('Thay đổi trạng thái');
		$(".contentPopup").html('<div class="viewpost">Bạn có muốn <b>' +nameStatus+ '</b>: <em>' +data.name+ '</em>?<div>' + btnStatus + btnCancel + field);
		centerPopup();
		loadPopup();
		
		return true;
	});
	$(".btnStatus").live("click", function(){
		var myObj = new Object();
		var data = $("#fieldActive").html();
		data = $.parseJSON(data);
		myObj['rejectStatus'] = '1';
		myObj['rejectTable'] = table;
		myObj['id'] = data.id;
		myObj['status'] = data.status;
		
		$.ajax({
			url: link_ajax,
			type: 'POST',
			data: myObj,
			cache: false,
			success: function(str) {
				if(str!='')
				$(".statusActive span").removeClass("status0");
				$(".statusActive span").removeClass("status1");
				$(".statusActive span").addClass("status" + data.status);
				closePopup();
				return true;
			}
		});
	});
	//end status
	
	//delete
	$(".adDelete").live("click", function(){
		var data = $(this).parent().children(".data").html();
		data = $.parseJSON(data);
		var btnStatus = '<span class="adBtnSmall bgColorRed corner8 btnDelete">Yes</span>';
		var btnCancel = '<span class="adBtnSmall bgColorGray corner8 closePopup">Cancel</span>';
		
		$(".adDelete").removeClass("statusActive");
		$(this).addClass("statusActive");
		
		var field = '<div id="fieldActive" style="display:none">' +data.id+ '</div>';
		$(".titlePopup").html('Xóa dữ liệu');
		$(".contentPopup").html('<div class="viewpost">Bạn có muốn <b>xóa</b>: <em>' +data.name+ '</em>?<div>' + btnStatus + btnCancel + field);
		centerPopup();
		loadPopup();
		
		return true;
	});
	$(".btnDelete").live("click", function(){
		var id = $("#fieldActive").html();
		$.ajax({
			url: link_ajax,
			type: 'POST',
			data: {rejectDetele:1, table:table, id:id},
			cache: false,
			success: function(str) {
				if(str!='') alert(str);
				$(".statusActive").parents(".row").hide(100);
				closePopup();
				return true;
			}
		});
	});
	//end delete
	
	/*biến đổi, kiểm tra alias, auto title key*/
	function checkAlias(){
		var id = $.trim($("#id").val());
		var name = $.trim($("#name").val());
		if(name=='') return false;
		var aliasCurrent = $.trim($("#name_alias").val());
		var aliasChange = change_alias(name, '-');
		var alias = '';
		if(aliasCurrent=='') alias = aliasChange;
		else alias = aliasCurrent;
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{checkAlias:alias, id:id},
			cache:false,
			success: function(data) {
				$("#name_alias").val(alias);
				if(data=='0') $(".messageAlias").html("");
				else $(".messageAlias").html("Alias này đã tồn tại, vui lòng nhập Alias khác.");
				return true;
			}
		});
	}
	function title_auto(dest, source){
		var title = $(dest).val();
		if(title==''){
			var name = $.trim($(source).val());
			$(dest).val(name);
		}
		return true;
	}
	function tags_auto(dest, source){
		var title = $(dest).val();
		if(title==''){
			var name = remove_ky_tu_dac_biet($.trim($(source).val()), ' ');
			$(dest).val(name);
		}
		return true;
	}
	
	$("#name_alias").dblclick(function(){ checkAlias(); });//bien doi alias
	$("#name_alias").blur(function(){ checkAlias(); });
	$(".adChange").click(function(){ //enable field
		$(this).parent().children("input").attr("disabled", false);
		return true;
	});
	$("#name").blur(function(){
		checkAlias();
		title_auto('#title', '#name');
		title_auto('#img_name', '#name');
		tags_auto('#tags', '#name');
		return true;
	});
	$("#tags").dblclick(function(){ 
		var name = $("#name").val();
		name = remove_ky_tu_dac_biet(name, ' ');
		var tags = $(this).val();
		if(tags!=''){
			var str = tags + ',' + change_alias(name, ' ');
			$(this).val(str);
		}else $(this).val(change_alias(name,' '));
		return true;
	});
	/*end biến đổi, kiểm tra alias, auto title key*/
	
	/*checks box*/
	function checks_box_item(list_check, list_view){
		$(list_check).change(function(){
			var str=",";
			$(list_check + ':checked').each(function(i,val){
				str += $(this).val() + ',';
			});
			$(list_view).attr('value',str);
		});
		return true;
	};
	checks_box_item('.checkBoxMenu', '.listValueMenu');
	checks_box_item('.checkBoxPosition', '.listValuePosition');
	checks_box_item('.checkBoxItem', '.listValueItem');
	/*end checks box*/
	
	/*upload images*/
	function uploadImage(){
		$("#imageForm").ajaxForm({target: '#imageUpload',
			beforeSubmit:function(){
				//console.log();
				$("#imageloadstatus").show();
				$("#imageloadbutton").hide();
			},
			success:function(){ 
				$("#imagePhoto").val('');
				$("#imageloadstatus").hide();
				$("#imageloadbutton").show();
			},
			error:function(){ 
				//console.log(data);
				$("#imageloadstatus").hide();
				$("#imageloadbutton").show();
			}
		}).submit();
		return true;
	}
	
	$('#imagePhoto').die('click').live('change', function(){
		var table_id = $("input[name=table_id]").val();
		if(table_id=='' || table_id=='0'){
			if(autoTableInsert()==false){
				$("#imagePhoto").val('');
				var str = '<b class="adError">Vui lòng nhập dữ liệu trước khi upload.</b>';
				viewDataAction(str);
				return false;
			}
		}
		setTimeout(function(){
			uploadImage();
		}, 500);
	});
	
	$('#uploadWebPicture').die('click').live('change', function(){
		var name = $("#name").val();
		var table_id = $("#table_id").val();
		if(name.length<2 || table_id=='' || table_id=='0'){
			if(autoTableInsert()==false){
				$("#imagePhoto").val('');
				var str = '<b class="adError">Vui lòng nhập dữ liệu trước khi upload.</b>';
				viewDataAction(str);
				return false;
			}
		}
		setTimeout(function(){
			uploadImage();
		}, 500);
	});
	
	$(".imageDelete").live("click", function(){
		var data = $(this).parent().children(".data").html();
		data = $.parseJSON(data);
		$("#imageUpload .item").removeClass("selectImgDel");
		$(this).parent().addClass("selectImgDel");
		//console.log(data);
		
		var str = '<p>Bạn có muốn xóa hình "<b id="imgDel">' + data.img + '</b>"?</p> <p class="clear20"></p>';
			str+= '<p> <span class="adBtnSmall bgColorRed corner5 btnImgDel">Yes</span> <span class="adBtnSmall bgColorGray corner5 closeDataAction">No</span> </p>';
			str+= '<p class="clear1"></p>';
		viewDataAction(str);
		return true;
	});
	
	$(".btnImgDel").live("click", function(){
		var checkImg='';
		var img = $("#img").val();
		var imgDel = $("#imgDel").html();
		if(img != imgDel) checkImg=0;
		else{
			checkImg=1;
			$("#img").val("");
		}
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{imageDelete:1, img:imgDel, check:checkImg},
			cache:false,
			success: function(data){
				data = $.parseJSON(data);
				if(data.error==0){
					$(".selectImgDel").hide();
					var str = '<b class="adMessage">' + data.message + '</b>';
				}else{
					var str = '<b class="adError">' + data.message + '</b>';
				}
				viewDataAction(str);
				return true;
			}
		});
	});
	
	$(".closeDataAction, #dataActionBG").live("click", function(){
		closeDataAction();
	});
	
	$(".imageSelect").live("click", function(){
		$(".imageSelect").show();
		$(this).hide();
		
		$("#imageUpload .item").removeClass("active");
		$(this).parent().addClass("active");
		
		var data = $(this).parent().children(".data").html();
		data = $.parseJSON(data);
		
		$("#img").val(data.img);
		return true;
	});
	/*upload images*/
	
	/*copy link image*/
	function copySuccess(){
		$(".js-message").show(100);
		$(".js-data").hide(100);
		$(".js-btn").hide(100);
		setTimeout(function(){
			$(".js-message").hide(100);
			$(".js-data").show(100);
			$(".js-btn").show(100);
			$("#copyData").hide(100);
		}, 1000);
		return true;
	}
	function copyToClipboard(element){
		var $temp = $('<input type="text" name="copy" />');
		$("body").append($temp);
		$temp.val($(element).text()).select();
		document.execCommand("copy");
		$temp.remove();
		copySuccess();
		return true;
	}
	$(".copylink").live("click", function(){
		var data = $(this).parent().children(".data").html();
		data = $.parseJSON(data);
		$('.js-copydata').html(data.img_url + data.img);
		$("#copyData").show(100);
		
		return true;
	});
	$(".js-copybtn").live("click", function(){
		copyToClipboard('.js-copydata');
	});
	$(".js-copycancel").live("click", function(){
		$("#copyData").hide(100);
		return true;
	});
	/*end copy link image*/
	
	/*auto insert data*/
	
	function endDataActionTableInsert(str){
		setTimeout(function(){
			$("#dataActionContent").html(str);
		}, 500);
		setTimeout(function(){
			if( $("#btnSubmitAjax").length ) $("#btnSubmitAjax").val("Đã lưu");
			$("#dataAction").hide(100);
		}, 1100);
		return true;
	}
	function autoTableInsert(){
		var fields = ajax_field_all(".ad_field");
		if(typeof fields=='boolean') return false;
		viewDataAction('Đang xử lý..');
		
		fields['rejectCreateData'] = '1';
		fields['rejectTable'] = table;
		
		$.ajax({ 	
			url: link_ajax,
			type: 'post',
			data: fields,
			cache: false,
			success: function(data){
				//console.log(data);
				data = $.parseJSON(data);
				var error = parseInt(data.error);
				if(error==0){
					var id = data.id;
					$("input[name=id]").val(id);
					$("#idSecond").html('{"name":"header_id", "value":"' +id+ '"}');
					$("#imageForm input[name=table_id]").val(id);
					autoContentInsert();
					
					var hostname = $(location).attr('hostname');
					var pathname = $(location).attr('pathname');
					var strSearch = $(location).attr('search');
					var number = strSearch.indexOf("&id=") + 4;
					strSearch = strSearch.slice(0, number);
					window.history.pushState(null, 'Title', 'http://' + hostname + pathname + strSearch + id);
					
					endDataActionTableInsert('<span class="message">' + data.message + '</span>');
				}
				return true;
			}
		});
	}
	function autoContentInsert(){
		if(!$('#tableSecond').length || !$('#idFirst').length || !$('#idSecond').length) return false;
		var table=$('#tableSecond').html();
		var idFirst=$('#idFirst').html();
		var idSecond=$('#idSecond').html();
		
		idFirst=$.parseJSON(idFirst);
		idSecond=$.parseJSON(idSecond);
		
		var fields = ajax_field_all(".ad_field_second");
		if(typeof fields=='boolean') return false;
		fields['rejectCreateData'] = '1';
		fields['rejectTable'] = table;
		fields[idFirst.name] = idFirst.value;
		fields[idSecond.name] = idSecond.value;
		
		$.ajax({ 	
			url: link_ajax,
			type: 'post',
			data: fields,
			cache: false,
			success: function(data2){
				data2 = $.parseJSON(data2);//console.log(data2);
				var error = parseInt(data2.error);
				if(error==0){
					var id = data2.id;
					$("#idFirst").html('{"name":"id", "value":"' +id+ '"}');
				}
				return true;
			}
		});
	}
	
	$("#btnSubmitAjax").live("click", function(){
		autoTableInsert();
	});
	
	//check users role
	$("#btnSubmitAjaxRole").live("click", function(){
		var users_id = check_number("#users_id", $("#users_id").parent().children(".error"), 'Nhập Users ID' );
		var admin_id = check_number("#admin_id", $("#admin_id").parent().children(".error"), 'Chọn mục quản trị');
		if(users_id==false || admin_id==false) return false;
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: {checksUsersRole:1, users_id:users_id, admin_id:admin_id},
			cache: false,
			success: function(data){
				data = $.parseJSON(data);
				if(data.error==0){
					autoTableInsert();
				}else if(data.error==1){
					$("input[name=id]").val(data.id);
					
					var hostname = $(location).attr('hostname');
					var pathname = $(location).attr('pathname');
					var strSearch = $(location).attr('search');
					var number = strSearch.indexOf("&id=") + 4;
					strSearch = strSearch.slice(0, number);
					window.history.pushState(null, 'Title', 'http://' + hostname + pathname + strSearch + id);
					
					autoTableInsert();
				}
				return true;
			}
		});
	});
	
	$("#btnViewListRole").click(function(){
		$("#listRole").show(200);
		$("#btnSubmitAjaxRole").hide(100);
		$("#btnSubmitAjaxRoleList").show(100);
	});
	$("#closeListRole").click(function(){
		$("#listRole").hide(200);
		$("#btnSubmitAjaxRoleList").hide(100);
		$("#btnSubmitAjaxRole").show(100);
	});
	function autoInsertRoleList(admin_id, id){
		var fields = ajax_field_all(".insertListRole");
		if(typeof fields=='boolean') return false;
		viewDataAction();
		
		fields['rejectCreateData'] = '1';
		fields['rejectTable'] = 'web_users_role';
		fields['admin_id'] = admin_id;
		fields['id'] = id;
		
		$.ajax({ 	
			url: link_ajax,
			type: 'post',
			data: fields,
			cache: false,
			success: function(data){
				//console.log(data);
				data = $.parseJSON(data);
				endDataActionTableInsert('<span class="message">' + data.message + '</span>');
				return true;
			}
		});
	}
	$("#btnSubmitAjaxRoleList").live("click", function(){
		var users_id = check_number("#users_id", $("#users_id").parent().children(".error"), 'Nhập Users ID' );
		if(users_id==false) return false;
		$(".checkBoxRole:checked").each(function(i, val){
			var admin_id = $(this).val();
			$.ajax({ 	
				url: 'ajax',
				type: 'post',
				data: {checksUsersRole:1, users_id:users_id, admin_id:admin_id},
				cache: false,
				success: function(data){
					data = $.parseJSON(data);
					if(data.error==0){
						autoInsertRoleList(admin_id, 0);
					}else if(data.error==1){
						var id = data.id;
						autoInsertRoleList(admin_id, id);
					}
				}
			});
		});
		setTimeout(function(){
			window.history.back();
		}, 1500);
	});
	//end checks users role
	
	$("#btnViewFrmContent").click(function(){
		var id = $("#id").val();
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{viewFrmContent:1, id:id},
			cache:false,
			success: function(data){
				$("#ajaxViewFrmContent").html(data);
				return true;
			}
		});
	});
	/*end auto insert data*/
	
	/*sendmail*/
	$("#sendmail").click(function(){
		var id = $("#id").val();
		var idNV = $("#nhanvien_lienhe").val();
		var table = $(this).attr("table");
		$(this).attr("disabled", true);
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{sendmail:idNV, id:id, table:table},
			cache:false,
			success: function(data) {
				$("#status2").attr("checked", true);
				$("#messageSendmail").html(data);
				return true;
			}
		});
	});
	/*end sendmail*/
	
	/*other*/
	/*function listDistrict(){
		var city_id = $("#city_id").val();
		var district_id = $("#district_id").val();
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{city_id:city_id, district_id:district_id},
			cache:false,
			success: function(data) {
				$("#district_id").html(data);
				return true;
			}
		});
	}
	listDistrict();
	
	$("#city_id").change(function(){
		listDistrict();
	});*/
	
	function searchID(id, table){
		if(id=='') return false;
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{searchID:id, table:table},
			cache:false,
			success: function(data) {
				if(data!='') $(".value_name").val(data);
				else{
					$(".value_name").val('');
					viewDataAction('<b class="adError">Không tìm thấy dữ liệu</b>');
				}
				return true;
			}
		});
	}
	function searchName(name, table){
		$.ajax({
			url: link_ajax,
			type:'POST',
			data:{searchName:name, table:table},
			cache:false,
			success: function(data) {
				if(data!=''){
					var str = '<p class="title">Dữ liệu tìm thấy:</p>';
					$("#value_view").html(str + data);
				}
				else viewDataAction('<b class="adError">Không tìm thấy dữ liệu</b>');
				return true;
			}
		});
	}
	$(".value_id").live("blur", function(){
		var id = $(this).val();
		var table = $("#value_view").attr("table");
		searchID(id, table);
		return true;
	});
	
	$(".value_search").live("click", function(){
		var name = $.trim($(".value_name").val());
		var table = $("#value_view").attr("table");
		if(name.length < 3){
			var str = '<b class="adError">Từ khóa phải hơn 2 ký tự</b>';
			viewDataAction(str);
			$(".value_name").focus();
			return false;
		}
		searchName(name, table);
		return true;
	});
	$(".value_data").live("click", function(){
		var id = $(this).attr("id");
		var name = $(this).html();
		$(".value_id").val(id);
		$(".value_name").val(name);
		$("#value_view").hide(200);
		return true;
	});
});