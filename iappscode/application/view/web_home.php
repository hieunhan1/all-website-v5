<div class="container">
	<?php
	$arr = array(
		'lang'=>$lang,
		'position_id'=>11,
	);
    $position = $c->_model->_headerData($arr);
	$position = $position[0];
	
	$i=0;
	$arr = array(
		'lang'=>$lang,
		'properties'=>2,
		'menu_id'=>$position['id'],
		'order'=>'`order`, `datetime` DESC',
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		$i++;
		$img = $urlImg[$position['type_id']]['url_img_thumb'].$row['img'];
		if($row['img']=='' || !file_exists('../'.$img)) $img=CONS_IMAGE_DEFAULT;
		if($i%3 != 1) $magin='home-margin'; else $magin='';
		echo '<div class="home-box '.$magin.'">
			<h2><a href="'.$row['name_alias'].'" class="title" title="'.$row['title'].'">'.$row['name'].'</a></h2>
			<div class="img"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['title'].'" /></a></div>
			<div class="info">'.$row['description'].'</div>
			<div class="viewmore"><a href="'.$row['name_alias'].'">'.$language_var['viewmore'].'</a></div>
		</div>';
	}
	?>
</div>

<div id="home-about" class="fontOther">
	<div class="container">
    	<div class="img"><img src="themes/website/img/logo.png" alt="" /></div>
        <?php
        $arr = array(
			'lang'=>$lang,
			'position_id'=>7,
		);
		$position = $c->_model->_headerData($arr);
		$position = $position[0];
		
		$arr = array(
			'lang'=>$lang,
			'properties'=>2,
			'menu_id'=>$position['id'],
		);
		$data = $c->_model->_headerData($arr);
		if(count($data) > 0){
			$row = $c->_model->_content($data[0]['id']);
			echo '<h2>'.$data[0]['name'].'</h2> <div class="info">'.$row['content'].'</div>';
		}
		?>
        <div class="clear1"></div>
    </div>
</div>