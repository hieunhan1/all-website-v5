<div id="right">
	<?php
	if(isset($currentMenu) && $currentMenu['type_id']==3){
		echo '<div class="boxCourse">
			<div class="img effect"><img src="'.$currentPage['img'].'" alt="'.$currentPage['name'].'" /></div>
			<div class="content">'.$rowDetail['more'].'</div>
			<a class="register">Yêu cầu dịch vụ</a>
		</div>';
	}
	
	if($currentPage['typeID']==5 && $currentPage['rootID']<>$currentPage['id']){
		$arr = array(
			'lang' => $lang,
			'parent' => $currentPage['rootID'],
			'properties' => 1,
			'order'=>'`_order`',
		);
		$data = $c->_model->_headerData($arr);
		echo '<div class="boxMenu">';
		foreach($data as $row){
			if($row['id']!=$currentPage['id']) $active=''; else $active='active';
			echo '<li class="li '.$active.'"><a href="'.$row['name_alias'].'" class="link" title="'.$row['title'].'">'.$row['name'].'</a></li>';
		}
		echo '</div>';
	}
	
	//y kien khach hang
	$str='';
	$arr = array(
		'lang' => $lang,
		'parent' => 0,
		'properties' => 1,
		'position_id' => 11,
		'order'=>'`_order`',
		'limit'=>'1',
	);
	$dataR = $c->_model->_headerData($arr);
	if(count($dataR) > 0){
		$rowR = $dataR[0];
		$str .= '<div class="boxRight"><h3 class="h3Right">Ý kiến khách hàng</h3>';
		$arr = array(
			'properties' => 2,
			'menu_id' => $rowR['id'],
			'order'=>'`datetime` DESC',
			'limit'=>5,
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			if($row['img']=='') $img='themes/website/img/avatar.png'; else $img=IMAGE_URL_THUMB.$row['img'];
			$str .= '<div class="itemRight box" id_o="'.$row['id'].'">
				<div class="img"><img src="'.$img.'" alt="'.$row['name'].'" /></div>
				<h4 class="name">'.$row['name'].'</h4>
				<div class="date">'.date('M d, Y', $row['datetime']).'</div>
				<div class="clear1"></div>
			</div>';
		}
		$str .= '</div>
		<div id="opinionDetail">
			<div class="bg"></div>
			<div class="box">
				<div class="header"><span class="close">x</span></div>
				<div class="content">
					<div class="img"></div>
					<div class="info viewpost"></div>
				</div>
				<div class="footer"><span class="btn close">Đóng</span></div>
			</div>
		</div>';
		echo $str;
	}
	?>
    <div class="clear30"></div>
</div>