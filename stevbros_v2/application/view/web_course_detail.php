<div class="container">
	<div class="clear30"></div>
    <div id="article" class="viewpost">
        <?php
        echo "<h1>{$currentPage['name']}</h1>";
		echo '<p class="meta">on <time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time>. Posted in <a href="'.$currentPage['rootAlias'].'">'.$currentPage['rootName'].'</a></p>';
        echo $rowDetail['content'];
		
		//lich khai giang
        $data = $c->_model->_listOpening(NULL, $currentPage['id']);
		if(count($data) > 0){
            echo '<div class="title"><h2>Lịch khai giảng</h2></div>
            <ul>';
            foreach($data as $row){
                echo '<li>Khai giảng: '.$row['opening'].'. Thời lượng: '.$row['duration'].'</li>';
            }
            echo '</ul>';
        }
		
		//form register
		echo '<a name="register"></a>
		<div class="title"><h2>Yêu cầu dịch vụ</h2></div>
		<div id="frmRegister">
            <div class="info">Stevbros là ủy quyền đào tạo toàn cầu của Viện Quản Lý Dự Án Hoa Kỳ PMI (Global PMI R.E.P)</div>
			<div id="ajaxRegister">
				<div class="loading"><img src="themes/website/img/loader.gif" /></div>
				<div class="error errorContact"></div>
				<div class="message messageContact"></div>
				<div class="p"><input type="text" name="company" placeholder="Tên công ty (nếu có)" class="txt field_item" /></div>
				<div class="p"><input type="text" name="name" placeholder="Họ tên" class="txt field_item" check="2" message="'.$language_var['error_name'].'" /><p class="error" style="margin:0"></p></div>
				<div class="p"><input type="text" name="email" placeholder="Email" class="txt field_item" check="email" message="'.$language_var['error_email'].'" /><p class="error" style="margin:0"></p></div>
				<div class="p"><input type="text" name="phone" placeholder="Điện thoại" class="txt field_item" check="phone" message="'.$language_var['error_phone'].'" /><p class="error" style="margin:0"></p></div>
				<div class="p"><textarea type="text" name="message" placeholder="Nội dung yêu cầu" class="txtArea field_item" check="10" message="'.$language_var['error_message'].'"></textarea><p class="error" style="margin:0"></p></div>
				<input type="hidden" name="datetime" class="field_item" value="'.date('Y-m-d H:i:s').'" />
            	<input type="hidden" name="ip_address" class="field_item" value="'.$_SERVER['REMOTE_ADDR'].'" />
				<input type="hidden" name="header_id" class="field_item" value="'.$currentPage['id'].'" />
				<div class="p"><input type="button" name="btnRegister" value="Gửi" class="btn" /></div>
			</div>
        </div>';
	?>
    </div><!--end viewpost-->
    
	<?php include_once('web_right.php');?>
    
    <?php
	//khoa hoc khac
	$arr = array(
		'lang'=>$lang,
		'menu_id'=>$currentMenu['id'],
		'properties'=>2,
		'limit'=>5,
		'order'=>'rand()',
	);
	$data = $c->_model->_headerData($arr);
	if(count($data)>1){
		echo '<div class="clear20"></div><hr class="hr" />
		<div id="courses" style="border:none">
			<div class="h2-courses">'.$language_var['other_course'].'</div>';
			$i=0;
			foreach($data as $row){
				if($row['id']!=$currentPage['id']){
					$i++;
					$img = $currentPage['url_img'].$row['img'];
					if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
					if($i%2 == 1) $style='left'; else $style='right';
					echo '<div class="box '.$style.'">
						<div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
						<div class="content">
							<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
							<div class="p">'.$row['description'].'</div>
							<a href="'.$row['name_alias'].'" class="view">'.$language_var['viewmore'].'</a>
						</div>
						<div class="clear1"></div>
					</div>';
				}
			}
		echo '<div class="clear1"></div></div>';
	}
	?>
    

</div>
<div class="clear30"></div>