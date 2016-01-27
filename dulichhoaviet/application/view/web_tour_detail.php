<?php
if($currentPage['img']!='') $img=IMAGE_URL.$currentPage['img']; else $img=CONS_IMAGE_DEFAULT;
?>
<div class="container" style="position:relative">
    <div id="tour-detail" class="viewpost">
    	<div class="tour-header">
            <h1><?php echo $currentPage['name'];?></h1>
            <p class="img effect"><img src="<?php echo $img;?>" alt="<?php echo $currentPage['name'];?>" /></p>
            <div class="more">
                <?php
                if($currentPage['price']!=0){
					$price = '<b class="price">'.number_format($currentPage['price'], 0, ',', '.').'đ'.'</b>';
				}else $price = 'Liên hệ: <b class="price">'.$config['hotline'].'</b>';
				echo '<p style="margin:0 0 15px 0">'.$price.'</p>';
				?>
                <p style="margin:0">Mã tour: <b><?php echo $currentPage['code'];?></b></p>
                <p>Thời gian: <b><?php echo $currentPage['duration'];?></b></p>
                <p>Phương tiện:<b>
                    <?php
                    $means = '';
                    $str = explode(',', $currentPage['means']);
                    for($i=1; $i<count($str)-1; $i++){
                        $means .= $cons_means[$i]['name'].', ';
                    }
                    $means = trim($means, ', ');
					echo $means;
                    ?></b>
                </p>
                <p>Khách sạn: <b><?php echo $cons_hotel[$currentPage['hotel']]['name'];?></b></p>
                <p>Khởi hành: <b><?php echo $currentPage['depart'];?></b></p>
                <p>Điểm đến: <b><?php echo $currentPage['destination'];?></b></p>
            </div>
            <div class="order tour-list">
            	<div class="box" style="clear:both; width:100%; border:none !important; box-shadow:none !important; background:none">
                	<p class="img imgHeight2 effect hidden"><a><img src="<?php echo $img;?>" alt="" /></a></p>
					<p class="point bgtransparent1 hidden"><span class="allIcon icon"></span><?php echo $currentPage['destination'];?></p>
					<div class="content">
						<h3 class="h3 hidden"><a class="color1"><?php echo $currentPage['name'];?></a></h3>
						<p class="duration hidden"><span class="allIcon icon"></span><?php echo $currentPage['duration'];?></p>
						<p class="means hidden">Phương tiện: <?php echo $means;?></p>
						<p class="clear10 hidden"></p>
						<p class="info hidden"><?php echo $currentPage['description'];?></p>
						<p class="price hidden"><?php echo $price;?></p>
                        <span class="tourOrder adBtnSmall bgColorOranges corner5" id-tour="<?php echo $currentPage['id'];?>">Đặt tour</span>
						<p class="clear10 hidden"></p>
					</div>
                </div>
            </div>
			<?php
            if($currentPage['schedule']!='') echo '<h3><b>Lịch trình:</b> '.$currentPage['schedule'].'</h3>';
            if($rowDetail['more1']!='') echo '<h2 style="font-weight:bold">Giới thiệu điểm du lịch:</h2>'.$rowDetail['more1'];
            ?>
        </div>
        <a name="content"></a>
        <div class="tour-content">
			<?php
            if($rowDetail['content']!='')
                echo '<div class="tab"> <h2 class="title"><a href="'.$currentPage['name_alias'].'#content">Chương trình</a></h2> <div class="content">'.$rowDetail['content'].'</div></div>';
            
            if($rowDetail['more2']!='')
                echo '<div class="tab"> <h2 class="title"><a href="'.$currentPage['name_alias'].'#content">Bảng giá</a></h2> <div class="content">'.$rowDetail['more2'].'</div></div>';
            
            if($rowDetail['more3']!='')
                echo '<div class="tab"> <h2 class="title"><a href="'.$currentPage['name_alias'].'#content">Quy định</a></h2> <div class="content">'.$rowDetail['more3'].'</div></div>';
				
			$data = $c->_model->_web_picture('web_header', $currentPage['id']);
			if(count($data) > 1){
				$str = '';
				foreach($data as $row){
					$str .= '<a class="fancybox-buttons img" data-fancybox-group="button" href="'.IMAGE_URL.$row['img'].'">
						<img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" />
					</a>';
				}
				echo '<div class="tab">
					<h2 class="title"><a href="'.$currentPage['name_alias'].'#content">Hình ảnh</a></h2>
					<div class="content">'.$str.'</div>
				</div>
				
				<script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
				<script type="text/javascript" src="js/extension/source/helpers/jquery.fancybox-buttons.js"></script>
				<script type="text/javascript" src="js/extension/lib/jquery.mousewheel-3.0.6.pack.js"></script>
				<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css" media="screen" />
				<link rel="stylesheet" type="text/css" href="js/extension/source/helpers/jquery.fancybox-buttons.css" />
				<script type="text/javascript">
				$(document).ready(function() {
					$(".fancybox").fancybox();
					$(".fancybox-buttons").fancybox({
						openEffect  : "none",
						closeEffect : "none",
						prevEffect : "none",
						nextEffect : "none",
						closeBtn  : false,
						helpers : {
							title : {
								type : "inside"
							},
							buttons	: {}
						},
						afterLoad : function() {
							this.title = "Image " + (this.index + 1) + " of " + this.group.length + (this.title ? " - " + this.title : "");
						}
					});
				});
				</script>';
			}
            ?>
        </div>
        <p class="clear10"></p>
        <div class="ajax" style="clear:both"></div>
        <div class="clear1"></div>
    </div>
	<?php include_once('web_left.php');?>
</div>
<div class="clear30"></div>

<script type="text/javascript">
$(document).ready(function(e) {
    $("#tour-detail .tab .content").hide();
	
	$("#tour-detail .tab .title:first").addClass("active");
	var content = $("#tour-detail .tab .content:first").html();
	$("#tour-detail .ajax").html(content);
	
	$("#tour-detail .tab .title").click(function(){
		$("#tour-detail .tab .title").removeClass("active");
		$(this).addClass("active");
		
		var content = $(this).parent().children(".content").html();
		$("#tour-detail .ajax").html('<p class="clear1"></p>' + content);
	});
	
	
	var height = parseInt( $("#tour-detail .tour-header").height() );
	var width = parseInt( $("#tour-detail").width() );
	$(window).bind('scroll', function () {
		if ($(window).scrollTop() > height) {
			$("#tour-detail .tour-content").css({width:width});
			$("#tour-detail .tour-content").addClass('tour-content-fix');
		} else {
			$("#tour-detail .tour-content").css({width:"auto"});
			$("#tour-detail .tour-content").removeClass('tour-content-fix');
		}
	});
});
</script>