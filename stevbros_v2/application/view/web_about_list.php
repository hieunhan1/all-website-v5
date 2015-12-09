<div id="h1-article">
	<div class="container">
    	<h2 class="h1"><?php echo '<a href="'.$currentPage['rootAlias'].'" title="'.$currentPage['rootTitle'].'">'.$currentPage['rootTitle'].'</a>';?></h2>
	</div>
</div>
<div class="container">
    <div id="article">
    <?php
	$arr = array(
		'lang'=>$lang,
		'parent'=>$currentPage['id'],
		'properties'=>1,
		'order'=>'`order`',
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
		echo '<h1 style="color:#179bd7; font-weight:100">'.$currentPage['name'].'</h1>';
		echo '<p class="meta">on <time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time>. Posted in <a href="'.$currentPage['rootAlias'].'">'.$currentPage['rootName'].'</a></p>';
		echo '<div class="viewpost">'.$row['content'].'</div>';
		
		//danh sach giang vien
		$arr = array(
			'lang'=>$lang,
			'menu_id'=>$currentPage['id'],
			'properties'=>2,
			'order'=>'`order`',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$name = explode('-', $row['name']);
			if(isset($name[1])) $degree='<p>'.trim($name[1]).'</p>'; else $degree='';
			echo '<div class="lecturer">
				<div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$currentPage['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['name_alias'].'" title=""><h3>'.trim($name[0]).'</h3></a>'.$degree.'
			</div>';
		}
	}
    ?>
    
    <div class="clear30"></div>
    </div>
    
    <?php include_once('web_right.php');?>
</div>