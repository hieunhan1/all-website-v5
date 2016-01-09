function browserName(){
   var Browser = navigator.userAgent;
   if (Browser.indexOf('MSIE') >= 0){
    Browser = 'MSIE';
   }
   else if (Browser.indexOf('Firefox') >= 0){
    Browser = 'Firefox';
   }
   else if (Browser.indexOf('Chrome') >= 0){
    Browser = 'Chrome';
   }
   else if (Browser.indexOf('Safari') >= 0){
    Browser = 'Safari';
   }
   else if (Browser.indexOf('Opera') >= 0){
      Browser = 'Opera';
   }
   else{
    Browser = 'UNKNOWN';
   }
   return Browser;
}

function browserVersion(){
   var index;
   var version = 0;
   var name = browserName();
   var info = navigator.userAgent;
   index = info.indexOf(name) + name.length + 1;
   version = parseFloat(info.substring(index,index + 3));
   return version;
}

function facebook_share(link_share){
	if(link_share=='') link_share = location.href;
	myWindow=window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(link_share),'','width=600,height=450');
	myWindow.focus();
	return false;
}

function SearchGoogle(id_txt_search){
	var key = document.getElementById(id_txt_search).value;
	var site = document.domain;
	var qs = key + "+site:" + site;
	var url = "http://www.google.com.vn/#sclient=psy-ab&hl=vi&site=&source=hp&q=" + qs + "&pbx=1&oq=" + qs + "&aq=f&aqi=&aql=1&gs_sm=e";
	window.open(url, "_blank");
	return false;
}

function SearchWebsite(id_txt_search){
	var key = document.getElementById(id_txt_search).value;
	var site = document.domain;
	var url = 'http://' + site + '/search/?txt=' + key;
	window.location = url;
	return true;
}

function sroll_top(){
	$("html, body").animate({ scrollTop: 0 }, 500);
	return false;
}

function isInt(num){
	if(parseInt(num)==num) return true;
	else return false;
}

$(document).ready(function($){
	$("#txtSearch").keydown(function(e){
		if(e.keyCode==13) SearchWebsite("txtSearch");
	});
	$("input[name=btnSearch]").click(function(){
		SearchGoogle("txtSearch");
	});
	
	$("#run_top").click(function(){
		sroll_top();
	});
	
	//why choose us
	$("#whychooseus .tab .content").hide();
	$("#whychooseus .tab .content:first").show();
	$("#whychooseus .tab .h3").click(function(){
		$("#whychooseus .tab .content").hide(200);
		$(this).parent().children(".content").show(200);
	});
	
	/*$(".register").html('Yêu cầu dịch vụ');
	$(".register").click(function(){
		var url = $(location).attr('pathname');
		$(this).attr("href", url + "#request-for-service");
		
		$("input[name=name]").focus();
		return true;
	});//btn register chuyen link*/
	
	/*$("input[name=btnRegister]").click(function(){
		var fields = ajax_field_all(".field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectRegister'] = '1';
		fields['type'] = '2';
		
		$(".loading").show();
		$(".errorContact").html('');
		$(".messageContact").html('');
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				//console.log(data);
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var error = data.error;
				var message = data.message;
				setTimeout(function(){
					if(error=='0'){
						$("#ajaxRegister").html(message);
						return true;
					}else if(error=='1'){
						$(".errorContact").html(message);
						$(".loading").hide();
						return false;
					}
				},500);
			}
		});
	});//register*/
	
	if($(".pdf").length){
		var link = $(".pdf a").attr("href");
		var name = $(".pdf a").html();
		
		var data = '<iframe src="ajax/?viewPDF=' +link+ '"></iframe>';
		$(".pdf").html(data);
		return true;
	}
	
	$("#opinion .view, #right .itemRight .name").click(function(){
		var id = $(this).parents(".box").attr("id_o");
		
		$.ajax({ 	
			url: 'ajax',
			type:'POST',
			data:{opinionDetail:id},
			cache:false,
			success: function(data) {
				//console.log(data);
				$("#popup .content").html(data);
				$("#popup").show(200);
				return true;
			}
		});
	});
	
	$(".closePP").click(function(){
		$("#popup").hide(200);
		return true;
	});
	
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
	checks_box_item('.checkBox', '.listValueMenu');
	
	//view mobile
	function viewMobile650(){
		var width = parseInt($(window).width());
		if(width<=650){
			$("#menuMobile").show();
			var main = '';
			if( $(".home-header .main .menu").length ){
				main = $(".home-header .main .menu").html();
				$(".home-header .main .menu").hide();
			}else{
				main = $("#header .main .menu").html();
				$("#header .main .menu").hide();
			}
			
			var close1 = '<div class="closeMobile" style="top:0"></div>';
			$("#viewMobile").html(close1 + main);
		}else{
			$("#menuMobile").hide();
			$(".home-header .main .menu").show();
			$("#header .main .menu").show();
			$("#viewMobile").html('');
		}
	}
	viewMobile650();
	$(window).bind("resize", function(){
		viewMobile650();
	});
	$("#btnMobile").live("click", function(){
		$("#viewMobile").show(100);
	});
	$(".closeMobile").live("click", function(){
		$("#viewMobile").hide(100);
	});
	//end view mobile
	
});