<div class="container">
    <div id="product-detail" class="width-main">
    	<div class="viewpost">
			<?php
            echo "<h1>{$currentPage['name']}</h1>";
            echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'" title="'.$currentMenu['name'].'">'.$currentMenu['name'].'</a></p>';
            ?>
            
            <div id="product-header">
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
            <?php echo $rowDetail['content'];?>
            <p class="clear10"></p>
        </div><!--end viewpost-->
        <hr />
        <div id="product-other">
        	<?php
			$i = 0;
			$str = '';
            $arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `price`, `title`, `description`',
				'where' => "AND `id`<>'{$currentPage['id']}'",
				'menu_id' => $currentMenu['id'],
				'properties' => 2,
				'order'=>'`datetime` DESC',
				'limit' => 3,
			);
			$data = $c->_model->_headerData($arr);
			if(count($data) > 0){
				foreach($data as $row){
					$img = IMAGE_URL_THUMB.$row['img'];
					if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
					$i++;
					if($i%3 != 1) $margin='margin'; else $margin='';
					$str .= '<div class="box width3 '.$margin.'">
						<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
						<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
						<p class="info">'.$row['description'].'</p>
					</div>';
				}
				echo '<h4 class="title-other">Sản phẩm cùng loại</h4>
				<div class="product-list">
					'.$str.'
					<p class="clear1"></p>
				</div>';
			}
			?>
        </div><!--end product other-->
    </div>
    
	<?php include_once('web_right.php');?>
</div>

<div class="clear30"></div>