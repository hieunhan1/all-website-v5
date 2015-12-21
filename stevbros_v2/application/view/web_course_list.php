<div class="container">
	<?php $content = $c->_model->_content($currentPage['id']);?>
    <div class="main-course">
		<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
		<div class="content">
			<h2 class="h2"><?php echo $currentPage['title'];?></h2>
			<div class="viewpost"><?php echo $content['content'];?></div>
		</div>
		<div class="action">
			<a href="<?php echo $currentPage['name_alias'];?>#request-for-service" class="btn business">Yêu cầu dịch vụ</a>
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
					<a href="'.$row['name_alias'].'" class="view">'.$lang_var['viewmore'].'</a>
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
            <h2 class="h2-courses">Yêu cầu dịch vụ</h2>
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