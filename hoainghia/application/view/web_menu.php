<div id="menu">
    <ul id="nav">
    	<?php
		$i=0; $view=''; $position_id=2;
		$arr = array(
			'lang' => $lang,
			'parent' => 0,
			'position_id' => $position_id,
			'order'=>'`order`',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$i++;
			if($row['id']!=$currentPage['rootID']) $style=''; else $style=' id="menuActive"';
			if($row['type_id']!=1){
				if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
				$str='<a href="'.$url.'" title="'.$row['title'].'">'.$row['name'].'</a>';
			}else{
				$str='<a href="'.$row['url'].'" title="'.$row['title'].'"><span id="menuHome">&nbsp;</span></a>';
			}
			$view .= '<li'.$style.'>'.$str;
			$view .= $c->getSubMenu($lang, $row['id'], $position_id);
			$view .= '</li>';
		}
		echo $view;
		?>
    </ul>
</div>