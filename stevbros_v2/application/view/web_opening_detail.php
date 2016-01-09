<?php
$arr = array(
	'menu_id' => $currentPage['id'],
	'properties' => 2,
	'type_id' => 3,
	'limit' => 1,
);
$data = $c->_model->_headerData($arr);
$course = $data[0];

$rowDetail = $c->_model->_content($course['id']);

$khaigiang = '';
$dataKG = $c->_model->_listOpening($currentPage['id']);
foreach($dataKG as $rowKG){
	$khaigiang .= '<div class="box"><b>Khai giảng: '.date('d/m/Y',$rowKG['date_opening']).'</b>
		<span class="btnSchedule adBtnSmall bgColorOranges corner5" style="padding:5px 15px">Lịch&nbsp;học</span>
		<span class="btnDetail adBtnSmall bgColorGray corner5" style="padding:5px 15px">Chi&nbsp;tiết&nbsp;khóa&nbsp;học</span>
		<span class="request_for_service adBtnSmall bgColorBlue corner5" header_id="'.$course['id'].'" date_trienkhai='.date('Y-m-d',$rowKG['date_opening']).' style="padding:5px 15px">Đăng&nbsp;ký</span>
		<div class="schedule" style="display:none"><div class="viewpost">'.$rowKG['schedule'].'</div></div>
	</div>';
}
?>
<div class="container">
    <div id="course-detail" class="viewpost course-opening">
    	<div class="header">
        	<h1><?php echo $course['title'];?></h1>
            <div class="viewpost left"><?php echo $course['description'];?></div>
            <div class="right"><?php echo $khaigiang;?></div>
            <div class="clear1"></div>
            <?php if($course['code']!='') echo '<p style="text-align:center"><iframe src="https://www.youtube.com/embed/'.$course['code'].'?rel=0" width="500" height="300"></iframe></p>';?>
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
			<h2 class="title corner10">Chứng chỉ</h2>
			<div class="info viewpost">'.$rowDetail['more3'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Câu hỏi thường gặp</h2>
			<div class="info viewpost">'.$rowDetail['more5'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Quy trình tham dự khóa học</h2>
			<div class="info viewpost">'.$rowDetail['more4'].'</div>
		</div>';
		
		echo '<div class="content">
			<h2 class="title corner10">Lịch khai giảng</h2>
			<div class="info viewpost">'.$khaigiang.'</div>
		</div>';
		?>
    </div>
</div>
<div class="clear30"></div>

<?php echo '<div id="chitietKhoaHoc" style="display:none"><div class="viewpost">'.$rowDetail['content'].'</div></div>';?>

<?php include_once('web_opening_request.php');?>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".btnDetail").click(function(){
		var data = $("#chitietKhoaHoc").html();
		$("#popup .content").html(data);
		$("#popup").show(200);
		sroll_top();
	});
	
	$(".btnSchedule").click(function(){
		var data = $(this).parent().children(".schedule").html();
		$("#popup .content").html(data);
		$("#popup").show(200);
		sroll_top();
	});
});
</script>

