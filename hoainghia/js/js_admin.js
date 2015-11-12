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
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|–|_|-/g, dau_thaythe);
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

$(document).ready(function(e) {
	var url_img_css = 'themes/admin/img/';
	var url_link_ajax = 'ajax/';
	var table = $("#tableName").html();
	
	$(".row").click(function(){
		$(".row").css("background-color","#FFF");
		$(this).css("background-color","#FF9");
	});
	
	/*ajax_number_item*/
	function ajax_number_item(){
		$(".ajax_thongtin").each(function(i, val){
			var table = $(this).attr('id');
			$.ajax({ 	
				url: url_link_ajax,
				type:'POST',
				data:{ajaxNumberItem:1, table:table},
				cache:false,
				success: function(data) {
					$("#" + table).html(" (" + data + ")");
				}
			});
		});
		return true;
	}
	ajax_number_item();
	/*end ajax_number_item*/
	
	/*status delete changeAlias*/
	$(".status_one").click(function(){
		var id = $(this).parent().parent().attr('id');
		var name = $(this).parent().parent().attr('name');
		var status = $(this).attr('status');
		var urlImg = '';
		var message = '';
		if(status=='1'){
			message = 'Bạn có muốn ẩn `' + name + '`?';
			status = 0;
			urlImg = url_img_css + 'anhien_0.gif';
		}else{
			message = 'Bạn có muốn hiện `' + name + '`?';
			status = 1;
			urlImg = url_img_css + 'anhien_1.gif';
		}
		if(confirm(message)){
			$.ajax({
				url: url_link_ajax,
				type:'POST',
				data:{status_one:status, table:table, id:id},
				cache:false,
				success: function() {
					$('#' + id + ' .status_one').attr('status', status);
					$('#' + id + ' .status_one img').attr('src', urlImg);
				}
			});
		}
	});
	$(".delete_one").click(function(){
		var id = $(this).parent().parent().attr('id');
		var name = $(this).parent().parent().attr('name');
		var message	= 'Bạn có muốn xóa `' + name + '`?';
		if(confirm(message)){
			$.ajax({
				url: url_link_ajax,
				type:'POST',
				data:{delete_one:id, table:table},
				cache:false,
				success: function(data) { //$("#ajax").html(data);
					$('#' + id).hide();
				}
			});
		}
	});
	$(".change").click(function(){
		$(".enable").attr("disabled", false);
		return true;
	});
	/*end status delete changeAlias*/
	
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
			url: url_link_ajax,
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
	$("#name_alias").dblclick(function(){ checkAlias(); });
	$("#name_alias").blur(function(){ checkAlias(); });
	
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
	$("#name").blur(function(){
		checkAlias();
		title_auto('#title', '#name');
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
	checks_box_item('.checkboxItem', '.valueChecksBox'); //class, id
	checks_box_item('.checkBoxPosition', '.valueCheckBoxPosition');
	checks_box_item('.checkBoxMenuID', '.valueCheckBoxMenuID');
	checks_box_item('.checkboxView', '.valueRuleView');
	checks_box_item('.checkboxAction', '.valueRuleAction');
	/*end checks box*/
	
	/*upload images*/
	function original_default(){
		if(!$('input[name=original_check]').length) return false;
		var original = $('input[name=original_check]:checked').val();
		$('input[name=original]').val(original);
		return true;
	}
	original_default();
	$('input[name=original_check]').click(function(){
		var original = $(this).val();
		$('input[name=original]').val(original);
		return true;
	});
	
	function autoSelectImg(){
		if(!$("#arr_img").length){
			$(".copylink").hide();
			$("#imageUpload .item").addClass("active");
			$(".imageSelect").hide(100);
			var name = $("#imageUpload .item").attr("name");
			$(".imgAdmin").val(name);
		}
		return true;
	}
	autoSelectImg();
	$('#imagePhoto').die('click').live('change', function(){ 
		if(!$("#arr_img").length) $("#imageUpload").html('');
		
		$("#imageForm").ajaxForm({target: '#imageUpload', 
			beforeSubmit:function(){
				console.log('ttest');
				$("#imageloadstatus").show();
				$("#imageloadbutton").hide();
			},
			success:function(){ 
				console.log('test');
				$("#imageloadstatus").hide();
				$("#imageloadbutton").show();
				autoSelectImg();
				autoHeaderInsert();
			},
			error:function(){ 
				console.log('xtest');
				$("#imageloadstatus").hide();
				$("#imageloadbutton").show();
			}
		}).submit();
		return true;
	});
	
	$(".imageSelect").live("click", function(){
		var name = $(this).parent().attr("name");
		$(".imgAdmin").val(name);//chon anh dai dien
		
		$("#imageUpload .item").removeClass("active");
		$(".imageSelect").show();
		
		$(this).parent().addClass("active");
		$(this).hide();
		
		return true;
	});
	
	$(".imageDelete").live("click", function(){
		var table = $("input[name=imageUpload]").val();
		var name = $(this).parent().attr("name");
		var message = "Bạn có muốn xóa hình này?";
		var arr_img = $("input[name=arr_img]").val();
		var img = $("input[name=img]").val();
		if(confirm(message)){
			$(this).parent().hide();
			$.ajax({
				url: 'ajax/',
				type:'POST',
				data:{imageDelete:table, name:name},
				cache:false,
				success: function(data){ //$("body").html(data);
					if(arr_img){
						arr_img = arr_img.replace(name + ',', '');
						$("input[name=arr_img]").val(arr_img);
					}
					if(name==img) $("input[name=img]").val('');
					autoHeaderInsert();
				}
			});
		}
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
		var str = $(this).parent().attr("link");
		$('.js-copydata').html(str);
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
	function viewDataAction(){
		$("#dataAction").html('<span class="process">Đang xử lý..</span>');
		$("#dataAction").show(100);
		$("#dataActionBG").show(100);
		return true;
	}
	function endDataAction(str){
		setTimeout(function(){ $("#dataAction").html(str); }, 500);
		setTimeout(function(){
			$("#dataAction").hide(100);
			$("#dataActionBG").hide(100);
		}, 1200);
		return true;
	}
	function autoHeaderInsert(){
		var id = $("input[name=id]").val();
		var name = $.trim($("input[name=name]").val());
		var name_alias = $("input[name=name_alias]").val();
		var url = $("input[name=url]").val();
		var img = $("input[name=img]").val();
		var title = $("input[name=title]").val();
		var description = $("textarea[name=description]").val();
		var tags = $("input[name=tags]").val();
		var code = $("input[name=code]").val();
		var order = $("input[name=order]").val();
		var datetime = $("input[name=datetime]").val();
		var lang = $("input[name=lang]").val();
		var status = $("input[name=status]:checked").val();
		var parent = $("select[name=parent]").val();
		var menu_id = $("#menu_id").val();
		var position_id = $("#position_id").val();
		
		var type_id = '0'
		if($("input[name=type_id]:checked").length) type_id = $("input[name=type_id]:checked").val();
		else type_id = $("input[name=type_id]").val();
		var properties = ''
		if($("input[name=properties]:checked").length) properties = $("input[name=properties]:checked").val();
		else properties = $("input[name=properties]").val();
		
		if(name==''){
			alert('Vui lòng nhập dữ liệu');
			$("input[name=name]").focus();
			return false;
		}
		viewDataAction();
		
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{autoHeaderInsert:1, id:id, name:name, name_alias:name_alias, url:url, img:img, title:title, description:description, tags:tags, code:code, order:order, datetime:datetime, lang:lang, status:status, parent:parent, menu_id:menu_id, position_id:position_id, type_id:type_id, properties:properties},
			cache:false,
			success: function(data){ //$("#ajax").html(data);
				if(data!='0'){
					$("input[name=id]").val(data);
					if($("#idContent").length) autoContentInsert();
					endDataAction('<span class="message">Lưu thành công</span>');
					var hostname = $(location).attr('hostname');
					var pathname = $(location).attr('pathname');
					var strSearch = $(location).attr('search');
					var number = strSearch.indexOf("&id=") + 4;
					strSearch = strSearch.slice(0, number);
					window.history.pushState(null, 'Title', 'http://' + hostname + pathname + strSearch + data);
				}else endDataAction('<span class="error">Lỗi. Vui lòng kiểm tra lại</span>');
				return true;
			}
		});
	}
	
	function autoContentInsert(){
		var id = '';
		var arr_img = '';
		var content = '';
		var more = '';
		var price_cost = '';
		var price = '';
		var header_id = '';
		if($("#idContent").length) id = $("#idContent").val();
		if($("#arr_img").length) arr_img = $("#arr_img").val();
		if($("#content").length) content = CKEDITOR.instances["content"].getData();
		if($("#more").length) more = CKEDITOR.instances["more"].getData();
		if($("#price_cost").length) price_cost = $("#price_cost").val();
		if($("#price").length) price = $("#price").val();
		if($("#id").length) header_id = $("#id").val();
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{autoContentInsert:1, id:id, arr_img:arr_img, content:content, more:more, price_cost:price_cost, price:price, header_id:header_id},
			cache:false,
			success: function(data){
				$("#idContent").val(data);
				return true;
			}
		});
	}
	
	$(".imageSelect").live("click", function(){
		autoHeaderInsert();
	});
	$("#btnSubmitAjax").live("click", function(){
		autoHeaderInsert();
		$(this).val("Đã lưu"); $(this).addClass("saved");
	});
	/*end auto insert data*/
	
	/*sendmail*/
	$("#sendmail").click(function(){
		var id = $("#id").val();
		var idNV = $("#nhanvien_lienhe").val();
		var table = $(this).attr("table");
		$(this).attr("disabled", true);
		$.ajax({
			url: url_link_ajax,
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
	function listDistrict(){
		var city_id = $("#city_id").val();
		var district_id = $("#district_id").val();
		$.ajax({
			url: url_link_ajax,
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
	});
	
	function searchID(id, table){
		if(id=='') return false;
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{searchID:id, table:table},
			cache:false,
			success: function(data) {
				if(data!='') $(".value_name").val(data);
				else{
					$(".value_name").val('');
					alert("Không tìm thấy dữ liệu");
				}
				return true;
			}
		});
	}
	function searchName(name, table){
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{searchName:name, table:table},
			cache:false,
			success: function(data) {
				if(data!='') $("#value_view").html(data);
				else alert("Không tìm thấy dữ liệu");
				return true;
			}
		});
	}
	$(".value_id").blur(function(){
		var id = $(this).val();
		var table = $("#value_view").attr("table");
		searchID(id, table);
		return true;
	});
	
	$(".value_search").click(function(){
		var name = $.trim($(".value_name").val());
		var table = $("#value_view").attr("table");
		if(name!='') searchName(name, table);
		return true;
	});
	$(".value_data").live("click", function(){
		var id = $(this).attr("id");
		var name = $(this).html();
		$(".value_id").val(id);
		$(".value_name").val(name);
		$(".value_data").hide(100);
		return true;
	});
});