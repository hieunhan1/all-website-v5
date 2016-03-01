<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Thông tin liên hệ</title>
<meta name="title" content="Thông tin liên hệ" />
<meta name="robots" content="NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="icon/x-icon" href="../themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="../themes/website/general.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/js_checks_field.js"></script>
<style>
body{color:#555; font-size:14px; font-family:Arial, Helvetica, sans-serif}

.clear1{clear:both; height:1px}
.error{color:#F00; font-style:italic}
.message{color:#00F}
#wrapper{width:100%; max-width:750px; margin:auto}

.h1{color:#C00; font-size:220%; font-weight:100; text-transform:uppercase; text-align:center; margin:20px 0}

.table{width:100%; clear:both}
.table .active{background-color:#FF9}
.table .line{line-height:33px; height:33px; overflow:hidden}
.table .row{clear:both; border-bottom:solid 1px #CCC}
.table .row:hover{background-color:#FFC}
.table .header{font-weight:bold; font-size:110%; color:#00F}
.table .order{width:8%; float:left; text-align:center}
.table .name{width:35%; float:left; font-weight:bold}
.table .date{width:20%; float:left}
.table .status{width:25%; float:left; font-size:90%}
.table .view{width:auto; float:right; line-height:23px; text-align:center; font-size:80%; color:#FFF; margin:5px 0; padding:0 10px; background-color:#F90; cursor:pointer}
.table .view:hover{background-color:#CA6500}

.ajax{line-height:180%}
</style>
</head>
<body>

<div id="wrapper">
    <h1 class="h1">Thông tin khách hàng liên hệ</h1>
    <div class="table">
        <div class="row">
            <div class="order line header">STT</div>
            <div class="name line header">Họ tên</div>
            <div class="date line header">Ngày liên hệ</div>
            <div class="status line header" style="font-size:110%">Trạng thái</div>
            <div class="clear1"></div>
        </div>
        <?php
		$i=0;
        foreach($data as $row){
			$i++;
			if($row['status']==1) $status='Đã xem';
			else $status='<span class="error">Chưa xem</span>';
			echo '<div class="row">
				<div class="order line">'.$i.'</div>
				<div class="name line">'.$row['name'].'</div>
				<div class="date line">'.date('H:i, d M', $row['datetime']).'</div>
				<div class="status line">'.$status.'</div>
				<div class="view corner3" id-contact="'.$row['id'].'">View more</div>
				<div class="clear1"></div>
			</div>';
		}
		?>
    </div>
</div>

<div id="popup">
	<div id="popupContent" style="background-color:#FFF"><div class="process"></div></div>
    <div id="popupBG"></div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".table .row").click(function(){
		$(".table .row").removeClass("active");
		$(this).addClass("active");
	});
	
	$(".table .row .view").live("click", function(){
		var id = $(this).attr("id-contact");
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: {viewContactDetail:1, id:id},
			cache:false,
			success: function(data){
				console.log(data);
				data = $.parseJSON(data);
				console.log(data);
				var str = '<div class="ajax">';
					str+= '<p>Họ tên: <b>' + data.name + '</b>';
					if(typeof data.course!='undefined') str+=' đăng ký học <b>"' + data.course + '"</b>';
					str+= '</p>';
					str+= '<p><em>Điện thoại:</em> <b>' + data.phone + '</b></p>';
					if(data.email!='') str+='<p><em>Email:</em> ' + data.email + '</p>';
					if(data.address!='') str+='<p><em>Địa chỉ:</em> ' + data.address + '</p>';
					if(data.message!='') str+='<p><em>Lời nhắn:</em> ' + data.message + '</p>';
					str+= '<p style="text-align:right; margin:20px 0 10px 0"><span class="adBtnSmall bgColorGray corner5 popupClose">Close</span></p>';
					str+= '</div>';
				popupLoad(str);
				
				$(".table .active .status").html('Đã xem');
			}
		});
	});
});
</script>

</body>
</html>