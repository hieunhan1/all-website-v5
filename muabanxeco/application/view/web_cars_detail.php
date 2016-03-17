<div class="container">
    <div id="cars-detail">
    	<div class="viewpost">
			<?php
            echo "<h1>{$currentPage['name']}</h1>";
            echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'" title="'.$currentMenu['name'].'">'.$currentMenu['name'].'</a></p>';
            ?>
            
            <div id="cars-header">
                <?php
                if($currentPage['img']!=''){
                    echo '<p class="img effect"><img src="'.IMAGE_URL.$currentPage['img'].'" alt="'.$currentPage['name'].'" /></p>';
                }
                
                if($rowDetail['more1']!=''){
                    echo '<div class="more">'.$rowDetail['more1'].'</div>';
                }
                ?>
                <p class="clear1"></p>
            </div>
            
            <?php
            $data = $c->_model->_web_picture('web_header', $currentPage['id']);
            if(count($data) > 1){
                $str = '';
                foreach($data as $row){
                    $str .= '<a class="fancybox-buttons img" data-fancybox-group="button" href="'.IMAGE_URL.$row['img'].'">
                        <img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" />
                    </a>';
                }
                echo '<div id="cars-photos">'.$str.'</div>
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
            
            <p class="clear1"></p>
            <?php echo $rowDetail['content'];?>
        </div><!--end viewpost-->
        
        <div id="cars-other">
        	<?php
			$i = 0;
			$str = '';
            $arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `price`, `title`',
				'where' => "AND `id`<>'{$currentPage['id']}'",
				'menu_id' => $currentMenu['id'],
				'properties' => 2,
				'order'=>'`datetime` DESC',
				'limit' => 3,
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				$i++;
				if($i%3 != 1) $style='margin2'; else $style='';
				
				if($row['price']==0){
					$price = '';
					$buy = 'Liên hệ';
				}else{
					$price = '<p class="price">'.number_format($row['price'], 0, ',', '.').'đ</p>';
					$buy = 'Mua';
				}
				
				$img = IMAGE_URL_THUMB.$row['img'];
				if($row['img']=='') $img = CONS_IMAGE_DEFAULT;
				
				$str .= '<div class="box width1 '.$style.'">
					<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
					<h3><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
					'.$price.'
					<p class="buy corner5" id-car="'.$row['id'].'" name="'.$row['name'].'">'.$buy.'</p>
				</div>';
			}
			echo '<h4 class="title">Xe cùng loại</h4>
			<div class="list_cars">
				'.$str.'
				<p class="clear1"></p>
			</div>';
			?>
        </div><!--end cars other-->
    </div>
    
	<?php include_once('web_right.php');?>
</div>

<div class="clear30"></div>