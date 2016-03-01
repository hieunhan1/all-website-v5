<div id="header1" <?php if($currentPage['type']['id']==1) echo 'style="position:absolute"';?> >
    <div class="container">
        <a href="<?php echo CONS_BASE_URL;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo.png" id="logo" alt="<?php echo $config['sitename'];?>" /></a>
        
        <div id="menuMobile">
            <div id="btnMobile"></div>
            <div id="viewMobile"></div>
        </div>
        
        <div id="search" class="allIcon">
        	<input type="text" name="txtSearch" id="txtSearch" placeholder="search.." />
        </div>
        
		<ul id="menuMain" class="menuMobile" order="0">
        	<?php
			$arr = array(
				'lang' => $lang,
				'parent' => 0,
				'properties' => 1,
				'position_id' => 2,
				'order'=>'`_order`',
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
				if($row['type_id']!=1) $name=$row['name']; else $name='<span class="allIcon home">&nbsp;</span>';
				if($row['id']!=$currentPage['root']['id']) $active=''; else $active='class="allIcon active"';
				echo '<li '.$active.'><a href="'.$url.'" title="'.$row['title'].'">'.$name.'</a></li>';
			}
            ?>
        </ul>
        
        <div class="clear1"></div>
    </div>
</div>