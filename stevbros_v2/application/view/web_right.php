<div id="right">
	<?php
	if(isset($currentMenu) && $currentMenu['type_id']==3){
		echo '<div class="boxCourse">
			<div class="img effect"><img src="'.$currentPage['img'].'" alt="'.$currentPage['name'].'" /></div>
			<div class="content">'.$rowDetail['more'].'</div>
			<a class="register">Ghi danh học</a>
		</div>';
	}
	
	if($currentPage['typeID']==5 && $currentPage['rootID']<>$currentPage['id']){
		$arr = array(
			'lang' => $lang,
			'parent' => $currentPage['rootID'],
			'properties' => 1,
			'order'=>'`order`',
		);
		$data = $c->_model->_headerData($arr);
		echo '<div class="boxMenu">';
		foreach($data as $row){
			echo '<li class="li allIcon"><a href="'.$row['name_alias'].'" class="link" title="'.$row['title'].'">'.$row['name'].'</a></li>';
		}
		echo '</div>';
	}
	
	//y kien khach hang
	$str='';
	$arr = array(
		'lang' => $lang,
		'parent' => 0,
		'properties' => 1,
		'position_id' => 13,
		'order'=>'`order`',
	);
	$dataR = $c->_model->_headerData($arr);
	foreach($dataR as $rowR){
		$str .= '<div class="boxRight"><h3 class="h3Right">'.$rowR['title'].'</h3>';
		$arr = array(
			'lang' => $lang,
			'properties' => 2,
			'type_id' => 4,
			'order'=>'`datetime` DESC',
			'limit'=>5,
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			if($row['img']=='') $img='themes/website/img/avatar.png'; else $img=$urlImg[4]['url_img_thumb'].$row['img'];
			$str .= '<div class="itemRight">
				<div class="img"><img src="'.$img.'" alt="'.$row['name'].'" /></div>
				<h4 class="h4Right">'.$row['name'].'</h4>
				<div class="date">'.date('M d, Y', $row['datetime']).'</div>
				<div class="clear1"></div>
			</div>';
		}
		$str .= '</div>';
	}
	echo $str;
	?>
</div>