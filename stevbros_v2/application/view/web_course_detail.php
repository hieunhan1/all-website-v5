<div class="container">
    <div id="course-detail" class="viewpost">
    	<div class="header">
        	<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
        	<h1><?php echo $currentPage['title'];?></h1>
            <?php //echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'">'.$currentMenu['name'].'</a></p>';?>
            <h2><?php echo $currentPage['description'];?></h2>
            <div style="height:10px;"></div>
            <span class="action corner5 request_for_service" header_id="<?php echo $currentPage['id'];?>"><?php echo $lang_var['request_for_service'];?></span>
            <div class="clear1"></div>
        </div>
        
        <?php
		echo '<div class="content">
			<h2 class="title corner10">Mục tiêu</h2>
			<div class="info viewpost">'.$rowDetail['more'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Đối tượng</h2>
			<div class="info viewpost">'.$rowDetail['more2'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Nội dung khóa học</h2>
			<div class="info viewpost">'.$rowDetail['content'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Chứng chỉ</h2>
			<div class="info viewpost">'.$rowDetail['more3'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Quy trình yêu cầu và triển khai khoá học cho doanh nghiệp</h2>
			<div class="info viewpost">'.$rowDetail['more4'].'</div>
			<p style="text-align:center"><span class="action corner5 request_for_service" header_id="'.$currentPage['id'].'">'.$lang_var['request_for_service'].'</span></p>
		</div>';
		?>
    </div>
    
    <?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>

<?php include_once('web_course_request.php');?>

<script type="text/javascript">
$(document).ready(function(e) {
   /* $(".content .info:first").show();
	$(".content .title").click(function(){
		$(".content .info").hide(100);
		$(this).parent().children(".info").show(100);
	});*/
});
</script>