<div class="container">
	<?php $content = $c->_model->_content($currentPage['id']);?>
    <div class="main-course">
		<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
		<div class="content">
			<h2 class="h2"><?php echo $currentPage['title'];?></h2>
			<div class="viewpost"><?php echo $content['content'];?></div>
		</div>
		<div class="action">
			<a href="<?php echo $currentPage['name_alias'];?>#request-for-service" class="btn business"><?php echo $lang_var['request_for_service'];?></a>
			<span class="label-or">hoặc</span>
			<a href="<?php echo $currentPage['name_alias'];?>#all-courses" class="btn all-course">Xem thêm các khóa học</a>
		</div>
		<div class="clear1"></div>
        <a name="all-courses">&nbsp;</a>
	</div>
    
    <div id="courses">
    	<h2 class="h2-courses">Các khóa học</h2>
		<?php
		$i=0;
        $arr = array(
            'lang'=>$lang,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'order'=>'`_order`',
        );
        $data = $c->_model->_headerData($arr);
        foreach($data as $row){
			$i++;
            $img = IMAGE_URL.$row['img'];
            if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
			if($i%2 == 1) $style='left'; else $style='right';
            echo '<div class="box '.$style.'" id="'.$row['id'].'">
                <div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
				<div class="content">
					<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['title'].'</h3></a>
					<div class="p">'.$row['description'].'</div>
					<a href="'.$row['name_alias'].'" class="view adBtnSmall bgColorWhite corner5">'.$lang_var['viewmore'].'</a>
				</div>
                <div class="clear1"></div>
            </div>';
        }
        ?>
        <div class="clear1"></div>
        <a name="request-for-service">&nbsp;</a>
    </div>
    
    <div id="opening">
        <div id="frmRegister">
            <h2 class="h2-courses"><?php echo $lang_var['request_for_service'];?></h2>
            <div class="info">Stevbros là ủy quyền đào tạo toàn cầu của Viện Quản Lý Dự Án Hoa Kỳ PMI (Global PMI R.E.P)</div>
            <div id="ajaxRegister">
                <div class="loading"><img src="themes/website/img/loader.gif" /></div>
                <div class="error errorContact"></div>
                <div class="message messageContact"></div>
                <div class="p"><input type="text" name="company" placeholder="Tên công ty (nếu có)" class="txt field_item" /><p class="error"></p></div>
                <div class="p"><input type="text" name="name" placeholder="Họ tên" class="txt field_item" check="2" message="<?php echo $lang_var['error_name'];?>" /><p class="error"></p></div>
                <div class="p"><input type="text" name="email" placeholder="Email" class="txt field_item" check="email" message="<?php echo $lang_var['error_email'];?>" /><p class="error"></p></div>
                <div class="p"><input type="text" name="phone" placeholder="Điện thoại" class="txt field_item" check="phone" message="<?php echo $lang_var['error_phone'];?>" /><p class="error"></p></div>
                <div class="p"><textarea type="text" name="message" placeholder="Nội dung yêu cầu" class="txtArea field_item" check="10" message="<?php echo $lang_var['error_message'];?>"></textarea><p class="error"></p></div>
                <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
            	<input type="hidden" name="ip_address" class="field_item" value="<?php echo $_SERVER['REMOTE_ADDR'];?>" />
				<input type="hidden" name="header_id" class="field_item" value="<?php echo $currentPage['id'];?>" />
                <div class="p"><input type="button" name="btnRegister" value="Gửi" class="btn" /></div>
            </div>
        </div>
        <div class="clear30"></div>
        
        <?php
        $data = $c->_model->_listOpening($currentPage['id']);
		if(count($data) > 0){
		?>
            <h2 class="h2-courses">Lịch khai giảng</h2>
            <div class="row header">
                <div class="column column1">STT</div>
                <div class="column column2">Tên khóa học</div>
                <div class="column column3">Thời lượng</div>
                <div class="column column4">Ngày khai giảng</div>
                <div class="clear1"></div>
            </div>
            <?php
			$i=0;
			foreach($data as $row){
				$i++;
				echo '<div class="row">
					<div class="column column1"> &nbsp; '.$i.'.</div>
					<div class="column column2" title="Xem chi tiết khóa học" id_c="'.$row['header_id'].'">'.$row['name'].'</div>
					<div class="column column3">'.$row['duration'].'</div>
					<div class="column column4">'.$row['opening'].'</div>
					<div class="clear1"></div>
				</div>';
			}
			?>
            <div class="clear30"></div>
        <?php }?>
    </div>
    
</div>
<div class="clear20"></div>

<style>
.main-course{clear:both; margin-bottom:30px; padding-bottom:30px; border-bottom:dashed 1px #CCC}
.main-course .h2{font-size:200%; font-weight:100; margin:30px 0 20px 0}
.main-course .content{width:43%; float:left}
.main-course .img{width:55%; float:right}
.main-course .img img{max-width:100%}
.main-course .content p{margin-left:10px; padding-left:27px; background:url(img/icon_about_home.jpg) no-repeat 0px 4px}

.main-course .action{text-align:center}
.main-course .btn{width:auto; height:40px; float:left; line-height:40px; font-size:110%; margin-bottom:20px; padding:0 20px; border-radius:3px; cursor:pointer}
.main-course .label-or{width:auto; height:40px; float:left; line-height:40px; margin-bottom:20px; padding:0 15px}
.main-course .business{color:#FFF; background-color:#005aab; border-bottom:solid 3px #003c71}
.main-course .business:hover{text-decoration:none !important; color:#FFF; background-color:#ff9500; border-bottom:solid 3px #b96f00}
.main-course .all-course{text-decoration:none !important; color:#666; background-color:#eaeaea; border-bottom:solid 3px #b0b0b0}
.main-course .all-course:hover{color:#FFF; background-color:#666; border-bottom:solid 3px #4d4d4d}

/*courses*/
.h2-courses{font-size:200%; font-weight:100; padding:20px 0}
.h2-courses a{text-decoration:none; color:#666; border:none; padding:20px 0}
#courses{clear:both; border-bottom:dashed 1px #CCC; margin-bottom:20px}
#courses .left{float:left}
#courses .right{float:right}
#courses .box{width:48%; height:320px}
#courses .box .img{width:44%; height:260px; float:left; overflow:hidden; text-align:center; margin-right:25px}
#courses .box .img img{max-width:100%}
#courses .box .img .active{max-width:130%; margin-left:-30%; margin-top:-10%}
#courses .box .content{width:50%; float:right}
#courses .box .date{color:#999; font-style:italic; margin-bottom:8px}
#courses .box .link{color:#333}
#courses .box .h3{line-height:150%; font-weight:100; font-size:150%; padding:10px 0; border-top:solid 1px #CCC}
#courses .box .p{line-height:180%; margin-bottom:25px}
#courses .box .view{text-transform:uppercase; letter-spacing:1px; word-spacing:2px}

/*frmRegister*/
#frmRegister{clear:both}
#frmRegister .loading{display:none; width:68%; height:420px; text-align:center; position:absolute; z-index:2; background-color:#FFF; opacity: 0.4; filter:alpha(opacity=40); margin:0}
#frmRegister .loading img{width:100px; margin-top:100px}
#frmRegister .errorContact{width:80%; font-weight:bold; margin:auto auto 10px auto}
#frmRegister .messageContact{width:80%; font-size:110%; font-style:italic; margin:auto}
#frmRegister .messageContact .title{color:#06F; font-weight:bold; font-size:140%}
#frmRegister .info{color:#005aab; font-size:150%; font-style:italic; text-align:center; margin-bottom:30px}
#frmRegister .p{width:500px; margin:0 auto 15px auto}
#frmRegister .txt{width:500px; height:30px; line-height:30px; padding:0 10px; border:solid 1px #CCC; border-radius:5px}
#frmRegister .txtArea{width:500px; height:110px; line-height:22px; resize:none; padding:5px 10px; border:solid 1px #CCC; border-radius:5px}
#frmRegister .btn{width:520px; height:40px; line-height:30px; color:#FFF; font-size:130%; letter-spacing:1px; background-color:#005aab; border:none; border-bottom:solid 3px #003c71; border-radius:5px; cursor:pointer}
#frmRegister .btn:hover{background-color:#ff9900; border-bottom:solid 3px #b96f00}

/*opening*/
#opening{clear:both; width:75%; margin:0 auto 30px auto}
#opening .header{color:#FFF; font-weight:bold; background-color:#005aab; border-bottom:none !important}
#opening .row{clear:both; line-height:22px; padding:5px 10px; border-bottom:dashed 1px #CCC}
#opening .row .column{float:left}
#opening .row .column1{width:5%}
#opening .row .column2{width:50%; cursor:pointer}
#opening .row .column3{width:15%}
#opening .row .column4{width:30%}
#opening .row .column5{width:12%; text-align:right}
#opening .active{background-color:#FFA}
/*end page courses*/
</style>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#opening .row").mouseover(function(){
		$(this).addClass("active");
		return true;
	});
	$("#opening .row").mouseout(function(){
		$(this).removeClass("active");
		return true;
	});
	$("#opening .column2").click(function(){
		var id = $(this).attr("id_c");
		var link = $("#" + id + " .img a").attr("href");
		window.location = link;
		return true;
	});
});
</script>