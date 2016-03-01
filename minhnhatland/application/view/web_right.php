<div id="right" class="width-extra">
	<?php
	//menu right
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `url`, `img`, `title`',
		'properties' => 1,
		'position_id' => 5,
		'type_id' => 3,
		'order' => '`_order`',
	);
	$data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		echo '<div class="box-project"> <p class="clear20"><span class="iconGif iconTop"></span></p>';
		foreach($data as $row){
			echo '<h3 class="h3 corner5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>';
		}
		echo '</div>';
	}
	
	//event page
    $arr = array(
		'select' => '`id`, `name`, `url`, `img`, `title`',
		'properties' => 2,
		'position_id' => 18,
		'order' => '`_order`',
	);
	$data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		$str = '';
		foreach($data as $row){
			if($row['url']!='') $url=$row['url']; else $url='javascript:;';
			$str .= '<p class="img"><a href="'.$url.'" title="'.$row['name'].'"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></a></p>';
		}
		echo '<div class="box box-event corner5"><span class="iconGif iconHot"></span>'.$str.'</div>';
	}
	
	//bai viet moi
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `url`, `img`, `title`',
		'properties' => 1,
		'position_id' => 5,
		'type_id' => 2,
		'order' => '`_order`',
	);
	$data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		echo '<div class="box-news"> <p class="clear20"><span class="iconGif iconNew"></span></p>';
		foreach($data as $row){
			echo '<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>';
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `url`, `img`, `title`',
				'properties' => 2,
				'menu_id' => $row['id'],
				'order' => '`datetime` DESC',
			);
			$data2 = $c->_model->_headerData($arr);
			foreach($data2 as $row2){
				echo '<div class="item">
					<p class="img"><a href="'.$row2['name_alias'].'"><img src="'.IMAGE_URL_THUMB.$row2['img'].'" alt="'.$row2['name'].'" /></a></p>
					<h4 class="h4"><a href="'.$row2['name_alias'].'" title="'.$row2['title'].'">'.$row2['name'].'</a></h4>
				</div>';
			}
		}
		echo '</div>';
	}
	?>
    
    
</div>