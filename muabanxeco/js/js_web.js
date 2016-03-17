/*
function browserName(){
	var Browser = navigator.userAgent;
	if (Browser.indexOf('MSIE') >= 0){
		Browser = 'MSIE';
	}else if (Browser.indexOf('Firefox') >= 0){
		Browser = 'Firefox';
	}else if (Browser.indexOf('Chrome') >= 0){
		Browser = 'Chrome';
	}else if (Browser.indexOf('Safari') >= 0){
		Browser = 'Safari';
	}else if (Browser.indexOf('Opera') >= 0){
		Browser = 'Opera';
	}else{
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

function isInt(num){
	if(parseInt(num)==num) return true;
	else return false;
}
*/

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
	
	/*view mobile*/
	function viewMobile650(){
		var width = parseInt($(window).width());
		if(width<=550){
			$("#menuMobile").show();
			var main = '';
			
			main+= $("#nav").html();
			
			var close1 = '<div class="closeMobile" style="top:0"></div>';
			$("#viewMobile").html(close1 + main);
		}else{
			$("#menuMobile").hide();
			$("#nav").show();
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
	/*end view mobile*/
	
	
	
	/**********************************/
	/*************OTHER****************/
	/**********************************/
	/*function autoTourImgSize(){
		$(".tour-list .box").each(function(i, val){
			var height = parseInt( $(this).children(".img").height() );
			var img_height = parseInt( $(this).children(".img").children("a").children("img").height() );
			if(img_height > height){
				var marginTop = parseInt( (img_height - height) / 2 );
				marginTop = '-' + marginTop + 'px';
				$(this).children(".img").children("a").children("img").css("margin-top", marginTop);
			}
			
			var width = parseInt( $(this).children(".img").width() );
			$(this).children(".viewmore").css("width", width);
		});
	}
	autoTourImgSize();
	$(".tour-list .box").mouseover(function(){
		$(this).children(".viewmore").show();
	});
	$(".tour-list .box").mouseout(function(){
		$(this).children(".viewmore").hide();
	});*/
	
	function autoMouseViewmoreSize(){
		$(".mouseViewmore").each(function(i, val){
			var height = parseInt( $(this).height() );
			var width = parseInt( $(this).width() );
			$(this).children(".viewmore").css({"width":width, "height":height, "line-height": height + 'px'});
		});
	}
	autoMouseViewmoreSize();
	$(".mouseViewmore").mouseover(function(){
		$(this).children(".viewmore").show();
	});
	$(".mouseViewmore").mouseout(function(){
		$(this).children(".viewmore").hide();
	});
	
	//why choose us
	$("#whychooseus .tab .content").hide();
	$("#whychooseus .tab .content:first").show();
	$("#whychooseus .tab .h3").click(function(){
		$("#whychooseus .tab .content").hide(200);
		$(this).parent().children(".content").show(200);
	});
	
});