<div class="container">
    <div id="about-list">
    <?php
	$row = $c->_model->_content($currentPage['id']);
	echo '<h1 style="color:#333; font-weight:100">'.$currentPage['name'].'</h1>';
	echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentPage['rootAlias'].'">'.$currentPage['rootName'].'</a></p>';
	echo '<div class="viewpost">'.$row['content'].'</div>';
	
	//hinh anh partner
	$data = $c->_model->_web_picture('web_header', $currentPage['id']);
	if(count($data) > 2){
		echo '<div class="partner">';
		foreach($data as $row){
			echo '<div class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="" /></div>';
		}
		echo '<div class="clear1"></div> </div>';
	}
	
	//danh sach giang vien
	$arr = array(
		'lang'=>$lang,
		'menu_id'=>$currentPage['id'],
		'properties'=>2,
		'order'=>'`_order`',
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		$name = explode('-', $row['name']);
		if(isset($name[1])) $degree='<p>'.trim($name[1]).'</p>'; else $degree='';
		echo '<div class="lecturer">
			<div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$row['name_alias'].'" title=""><h3>'.trim($name[0]).'</h3></a>'.$degree.'
		</div>';
	}
    ?>
    <div class="clear30"></div> </div>
    
    <div id="about-left">
    	<?php
        $arr = array(
			'lang' => $lang,
			'parent' => $currentPage['rootID'],
			'properties' => 1,
			'order'=>'`_order`',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			if($row['id']!=$currentPage['id']) $active=''; else $active='active';
			echo '<li class="li '.$active.'"><a href="'.$row['name_alias'].'" class="link" title="'.$row['title'].'">'.$row['name'].'</a></li>';
		}
		?>
    </div>

</div>