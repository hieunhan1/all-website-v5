<div class="container">
    <div id="service-list">
    	<div class="viewpost">
			<?php
            echo "<h1>{$currentPage['name']}</h1>";
            echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'" title="'.$currentMenu['name'].'">'.$currentMenu['name'].'</a></p>';
            
            echo $rowDetail['content'];
            
            $data = $c->_model->_web_picture('web_header', $currentPage['id']);
            if(count($data) > 2){
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
            ?>
        </div>
        <p class="clear30"></p>
        
        <?php
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `img`, `title`',
			'lang'=>$lang,
			'menu_id'=>$currentMenu['id'],
			'properties'=>2,
			'order'=>'`datetime` DESC',
			'limit'=>3,
			'where' => "AND `id`<>'{$currentPage['id']}'",
		);
		$data = $c->_model->_headerData($arr);
		if(count($data)>0){
			echo '<div id="service-other" class="width-main"><h3 class="title corner5">'.$lang_var['other_photos'].'</h3>';
			$i=0;
			foreach($data as $row){
				$i++;
				if($i%3 !=1 ) $margin='margin'; else $margin='';
				echo '<div class="box corner5 '.$margin.'">
					<p class="img"><a href="'.$row['name_alias'].'"><img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" /></a></p>
					<h5 class="h5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h5>
				</div>';
			}
			echo '<p class="clear1"></p> </div>';
		}
		?>
    </div>

	<?php include_once('web_articles_right.php');?>
</div>
<div class="clear30"></div>