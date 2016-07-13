<div class="container">
    <div id="service-detail">
    	<div class="viewpost">
			<?php
            echo "<h1>{$currentPage['name']}</h1>";
            echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'" title="'.$currentMenu['name'].'">'.$currentMenu['name'].'</a></p>';
            echo $rowDetail['content'];
            ?>
            <p class="clear1"></p>
        </div>
        
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
			echo '<div id="service-other" class="width-main"><h3 class="title corner5">'.$lang_var['other_service'].'</h3>';
			$i=0;
			foreach($data as $row){
				$i++;
				if($i%3 !=1 ) $margin='margin'; else $margin='';
				echo '<div class="box corner5 '.$margin.'">
					<p class="img"><a href="'.$row['name_alias'].'"><img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" /></a></p>
					<h5 class="h5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h5>
				</div>';
			}
			echo '</div>';
		}
		?>
    </div>
    
    <?php include_once('web_articles_right.php');?>
    <div class="clear30"></div>
</div>
