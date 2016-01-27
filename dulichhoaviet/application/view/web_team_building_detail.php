<div class="container">
    <div id="article" class="viewpost">
        <?php
        echo "<h1>{$currentPage['name']}</h1>";
		echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'" title="'.$currentMenu['name'].'">'.$currentMenu['name'].'</a></p>';
		
		if($currentPage['code']!=''){
			echo '<p align="center"><iframe src="https://www.youtube.com/embed/'.$currentPage['code'].'?rel=0" frameborder="0" allowfullscreen></iframe></p>';
		}
		
		$data = $c->_model->_web_picture('web_header', $currentPage['id']);
		if(count($data) > 5){
			$str = '';
			foreach($data as $row){
				$str .= '<a class="fancybox-buttons img" data-fancybox-group="button" href="'.IMAGE_URL.$row['img'].'">
					<img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" />
				</a>';
			}
			echo '<div class="photos-list">'.$str.' <p class="clear1"></p> </div>
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
		
        echo $rowDetail['content'];
		
		$arr = array(
			'lang'=>$lang,
			'menu_id'=>$currentMenu['id'],
			'properties'=>2,
			'order'=>'`datetime` DESC',
			'limit'=>5,
		);
        $data = $c->_model->_headerData($arr);
        if(count($data)>1){
            echo '<div class="clear20"></div><hr class="hr" /><div id="otherPost"><div class="titlePost">'.$lang_var['other_post'].'</div>';
            foreach($data as $row){
				if($row['id']!=$currentPage['id'])
                	echo '<li class="itemPost"><a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="linkPost">'.$row['name'].'</a></li>';
            }
            echo '</div>';
        }
        ?>
    </div>

	<?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>