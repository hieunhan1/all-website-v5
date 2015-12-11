<div class="container">
	<?php
	//about course
	$style = array('style="float:right"', 'style="float:left; margin-right:2%"');
	$arr = array(
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 7,
		'order'=>'`order`',
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		$style = array_reverse($style);
		$content = $c->_model->_content($row['id']);
		if($row['other']==1) $form='<a href="'.$row['url'].'#register" class="btn-all-action btn-business-info">Yêu cầu dịch vụ</a><span class="label-or">hoặc</span>';
		else if($row['other']==2) $form='<a href="'.$row['url'].'#register" class="btn-all-action btn-business-info">Đăng ký</a><div class="label-or">hoặc</div>';
		else $form='';
		echo '<div class="home-daotao">
			<div class="img" '.$style[1].'><img src="'.$urlImg[15]['url_img'].$row['img'].'" alt="'.$row['title'].'" /></div>
			<div class="content" '.$style[0].'>
				<h2 class="h2">'.$row['title'].'</h2>
				<div class="viewpost">'.$content['content'].'</div>
			</div>
			<div class="view-action" '.$style[0].'>'.$form.'<a href="'.$row['url'].'#courses" class="btn-all-action btn-all-course">Xem thêm các khóa học</a></div>
			<div class="clear1"></div>
		</div>';
	}
	
	//why choose us
	$arr = array(
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 9,
		'limit'=>'1',
	);
	$dataWhy = $c->_model->_headerData($arr);
	if(count($dataWhy)>0){
		$dataWhy = $dataWhy[0];
		$str = '<div id="whychooseus"><h2 class="h2">'.$dataWhy['title'].'</h2>';
		$arr = array(
			'parent' => $dataWhy['id'],
			'position_id' => 9,
			'order'=>'`order`',
		);
		$i=0;
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$i++;
			$content = $c->_model->_content($row['id']);
			$str.='<div class="tab">
				<h3 class="h3">'.$row['name'].'</h3>
				<div class="content viewpost">'.$content['content'].'</div>
			</div>';
		}
		$str.='</div>';
		echo $str;
	}
	
	//bai viet moi
	$arr = array(
		'lang' => $lang,
		'properties' => 2,
		'order'=>'`datetime` DESC',
		'limit'=>3,
	);
	$i=0;
	$data = $c->_model->_headerData($arr);
	if(count($data)>0){
		echo '<div id="postnew">';
		foreach($data as $row){
			$i++;
            $img = IMAGE_URL_THUMB.$row['img'];
            if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
			if($i%2 == 1) $style='left'; else $style='right';
            echo '<div class="box '.$style.'" id="'.$row['id'].'">
                <div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
				<div class="content">
					<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
					<div class="p">'.$row['description'].'</div>
					<a href="'.$row['name_alias'].'" class="view">'.$language_var['viewmore'].'</a>
				</div>
                <div class="clear1"></div>
            </div>';
		}
		echo '</div>';
	}
	
	echo '<div class="lineHome"></div>';
	
	//about stevbros
	$arr = array(
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 8,
		'limit'=>'1',
	);
	$data = $c->_model->_headerData($arr);
	if(count($data)>0){
		$row = $data[0];
		$content = $c->_model->_content($row['id']);
		echo '<div class="home-about">
			<h1 class="h1">'.$row['title'].'</h1>
			<div class="viewpost">'.$content['content'].'</div>
			<div style="text-align:center"><img src="'.$urlImg[15]['url_img'].$row['img'].'" alt="'.$row['title'].'" /></div>
		</div>';
	}
	?>
</div>
