<div class="container">
    <div id="article">
    <?php
	$arr = array(
		'lang'=>$lang,
		'parent'=>$currentPage['id'],
		'properties'=>1,
		'order'=>'`_order`',
	);
    $data = $c->_model->_headerData($arr);
	if(count($data)>0){
		foreach($data as $row){
			echo '<div class="box-about">
				<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
				<div class="p">'.$row['description'].'</div>
			</div>';
		}
	}else{
		$row = $c->_model->_content($currentPage['id']);
		echo '<h1 style="color:#333; font-weight:100">'.$currentPage['name'].'</h1>';
		echo '<p class="meta">on <time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time>. Posted in <a href="'.$currentPage['rootAlias'].'">'.$currentPage['rootName'].'</a></p>';
		echo '<div class="viewpost">'.$row['content'].'</div>';
		
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
	}
    ?>
    
    <div class="clear30"></div>
    </div>
    
    <?php include_once('web_right.php');?>
</div>