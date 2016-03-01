<div class="container">
    <div id="project-detail" class="viewpost width-main">
    	<?php echo "<h1>{$currentPage['title']}</h1>"; ?>
        <div id="project-tab">
        	<div class="tab" number="1">Thông tin</div>
        	<div class="tab" number="2">Vị trí</div>
        	<div class="tab" number="3">Tiện ích</div>
        	<div class="tab" number="4">Mặt bằng</div>
        	<div class="tab" number="5">Hình ảnh</div>
        	<div class="tab" number="6">Giao dịch</div>
        </div>
        
        <div id="project-content">
        	<div class="content content1"><?php echo $rowDetail['content']; ?></div>
            <div class="content content2"><?php echo $rowDetail['more1']; ?></div>
            <div class="content content3"><?php echo $rowDetail['more2']; ?></div>
            <div class="content content4"><?php echo $rowDetail['more3']; ?></div>
            <div class="content content5">
            	<?php
                $data = $c->_model->_web_picture('web_header', $currentPage['id']);
				if(count($data) > 0){
					$str = '';
					foreach($data as $row){
						$str .= '<a class="fancybox-buttons img" data-fancybox-group="button" href="'.IMAGE_URL.$row['img'].'">
							<img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" />
						</a>';
					}
					echo '<div class="photos-list">'.$str.'</div> <div class="clear1"></div>
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
            <div class="content content6"><?php echo $rowDetail['more4']; ?></div>
        </div>
        
        <div class="clear30"></div>
        
        <?php
        $arr = array(
			'menu_id'=>$currentMenu['id'],
			'properties'=>2,
			'order'=>'`datetime` DESC',
			'limit'=>3,
		);
        $data = $c->_model->_headerData($arr);
        if(count($data)>1){
			$i=0;
			echo '<h4 id="project-other">Dự án khác</h4>
			<div class="project-list">';
			foreach($data as $row){
                $img = IMAGE_URL.$row['img'];
                if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
                $i++;
				if($i%3 != 1) $margin='margin'; else $margin='';
				echo '<div class="box width3 '.$margin.'">
					<div class="img" style="margin:0"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
					<h3 class="title" style="margin-bottom:0"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
				</div>';
            }
			echo '</div>';
		}
		?>
    </div>
    	
	<?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>

<script type="text/javascript">
	$(document).ready(function(e) {
        $("#project-content .content:first").show();
		$("#project-tab .tab:first").addClass("active");
		
		$("#project-tab .tab").click(function(){
			$("#project-tab .tab").removeClass("active");
			$(this).addClass("active");
			
			var number = $(this).attr("number");
			$("#project-content .content").hide(200);
			$("#project-content .content" + number).show(200);
		});
    });
</script>