<div id="top" class="fontOther">
	<div class="container">
        <div id="top-left">
            <span class="span allIcon" style="background-position:0px -348px"><?php echo $config['hotline'];?></span>
            <span class="span allIcon" style="background-position:0px -398px"><?php echo $config['email'];?></span>
        </div>
        <div id="top-right">
        	<?php
			$arr = array(
				'lang' => $lang,
				'parent' => 0,
				'position_id' =>1,
				'order'=>'`order`',
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				if($row['id']!=$currentPage['id']) $active=''; else $active='class="active"';
				echo '<li class="li border"><a href="'.$row['name_alias'].'" title="'.$row['title'].'" '.$active.'>'.$row['name'].'</a></li>';
			}
			?>
        </div>
    </div>
    <div class="clear1"></div>
</div>

<div id="header">
	<div class="container">
    	<?php
        if($lang==CONS_DEFAULT_LANG) $urlLang=CONS_BASE_URL; else $urlLang=CONS_BASE_URL.'/'.$lang;
		?>
		<div id="logo"><a href="<?php echo $urlLang;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo.png" alt="<?php echo $config['sitename'];?>" /></a></div>
        <?php include_once('web_menu.php'); ?>
    </div>
    <div class="clear1"></div>
</div>