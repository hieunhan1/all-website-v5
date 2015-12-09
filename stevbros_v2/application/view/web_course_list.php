<div class="container">
	<?php
	$style = array('style="float:right"', 'style="float:left; margin-right:2%"');
	$arr = array(
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 7,
		'order'=>'`order`',
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		if($row['url']==$currentPage['name_alias']){
			$style = array_reverse($style);
			$content = $c->_model->_content($row['id']);
			if($row['other']==1) $form='<a href="'.$row['url'].'#register" class="btn-all-action btn-business-info">Yêu cầu dịch vụ</a><div class="label-or">hoặc</div>';
			else if($row['other']==2) $form='<a href="'.$row['url'].'#register" class="btn-all-action btn-business-info">Đăng ký</a><div class="label-or">hoặc</div>';
			else $form='';
			echo '<div class="home-daotao">
				<div class="img" '.$style[1].'><img src="'.$urlImg[15]['url_img'].$row['img'].'" alt="'.$row['title'].'" /></div>
				<div class="content" '.$style[0].'>
					<h2 class="h2">'.$row['title'].'</h2>
					<div class="viewpost">'.$content['content'].'</div>
				</div>
				<div class="view-action" '.$style[0].'>'.$form.'<a href="'.$row['url'].'#courses" class="btn-all-action btn-all-course">Xem thêm các khóa học</a></div>
				<div class="clear1"></div>
			</div>';
		}
	}
	?>
    
    <div id="courses">
    	<h2 class="h2-courses" name="courses">Các khóa học</h2>
		<?php
		$i=0;
        $arr = array(
            'lang'=>$lang,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'order'=>'`order`',
        );
        $data = $c->_model->_headerData($arr);
        foreach($data as $row){
			$i++;
            $img = $currentPage['url_img'].$row['img'];
            if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
			if($i%2 == 1) $style='left'; else $style='right';
            echo '<div class="box '.$style.'" id="'.$row['id'].'">
                <div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
				<div class="content">
					<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
					<div class="p">'.$row['description'].'</div>
					<a href="'.$row['name_alias'].'" class="view">'.$language_var['viewmore'].'</a>
				</div>
                <div class="clear1"></div>
            </div>';
        }
        ?>
        <div class="clear1"></div>
    </div>
    
    <div id="opening">
        <div id="frmRegister">
            <h2 class="h2-courses">Yêu cầu dịch vụ<a name="register">&nbsp;</a></h2>
            <div class="info">Stevbros là ủy quyền đào tạo toàn cầu của Viện Quản Lý Dự Án Hoa Kỳ PMI (Global PMI R.E.P)</div>
            <div id="ajaxRegister">
                <div class="loading"><img src="themes/website/img/loader.gif" /></div>
                <div class="error errorContact"></div>
                <div class="message messageContact"></div>
                <div class="p"><input type="text" name="company" placeholder="Tên công ty (nếu có)" class="txt field_item" /><p class="error"></p></div>
                <div class="p"><input type="text" name="name" placeholder="Họ tên" class="txt field_item" check="2" message="<?php echo $language_var['error_name'];?>" /><p class="error"></p></div>
                <div class="p"><input type="text" name="email" placeholder="Email" class="txt field_item" check="email" message="<?php echo $language_var['error_email'];?>" /><p class="error"></p></div>
                <div class="p"><input type="text" name="phone" placeholder="Điện thoại" class="txt field_item" check="phone" message="<?php echo $language_var['error_phone'];?>" /><p class="error"></p></div>
                <div class="p"><textarea type="text" name="message" placeholder="Nội dung yêu cầu" class="txtArea field_item" check="10" message="<?php echo $language_var['error_message'];?>"></textarea><p class="error"></p></div>
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