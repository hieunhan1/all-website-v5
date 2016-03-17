<div id="bg-header"></div>
<div id="header">
    <div id="logo"><a href="<?php echo CONS_BASE_URL;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo.png" alt="<?php echo $config['sitename'];?>" /></a></div>
    <div id="slider"><img src="public/slider.png" alt="xe co" /></div>
    
    <div id="menuMobile">
        <div id="btnMobile"></div>
        <div id="viewMobile"></div>
    </div>
    
    <div style="clear:both; height:15px"></div>
    
    <ul id="nav">
    	<?php
        $arr = array(
			'select' => '`id`, `name`, `name_alias`, `url`, `title`',
			'lang' => $lang,
			'parent' => 0,
			'position_id' => 2,
			'properties' => 1,
			'order'=>'`_order`',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$str = '';
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `url`, `title`',
				'parent' => $row['id'],
				'position_id' => 2,
				'properties' => 1,
				'order'=>'`_order`',
			);
			$dataParent = $c->_model->_headerData($arr);
			if(count($dataParent) > 0){
				$str = '<ul>';
				foreach($dataParent as $rowParent){
					if($rowParent['url']==''){
						$url = $rowParent['name_alias'];
					}else{
						$url = $rowParent['url'];
					}
					$str .= '<li><a href="'.$url.'" title="'.$rowParent['title'].'">'.$rowParent['name'].'</a></li>';
				}
				$str .= '</ul>';
			}
			
			if($row['url']==''){
				$url = $row['name_alias'];
			}else{
				$url = $row['url'];
			}
			if($row['id']!=$currentPage['root']['id']) $active=''; else $active='id="menuActive"';
			echo '<li><a href="'.$url.'" title="'.$row['title'].'" '.$active.'>'.$row['name'].'</a>'.$str.'</li>';
		}
		?>
    </ul>
</div>