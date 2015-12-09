<div id="top">
	<div class="container">
        <?php include_once('web_menu.php'); ?>
    	<div id="menuMobile">
        	<div id="btnMobile"></div>
            <ul id="viewMobile"></ul>
        </div>
        <div id="socialTop">
			<?php
			$strSocial='';
            $arr = array(
                'lang' => $lang,
                'parent' => 0,
                'position_id' => 6,
                'order'=>'`order`',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
                $strSocial .= '<li class="li allIcon" style="'.$row['description'].'"><a href="'.$row['url'].'" title="'.$row['name'].'" target="_blank"> &nbsp; </a></li>';
            }
			echo $strSocial;
            ?>
        </div>
    </div>
    <div class="clear1"></div>
</div>

<div id="header">
	<div class="container">
    	<div id="logo">
        	<?php
            $arr = array(
                'lang' => $lang,
                'parent' => 0,
                'position_id' => 14,
                'order'=>'`order`',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
				echo '<li class="li"><a href="'.$row['url'].'" title="'.$row['title'].'"><img src="'.$urlImg[15]['url_img'].$row['img'].'" alt="'.$row['title'].'" style="'.$row['description'].'" /></a></li>';
            }
            ?>
        </div>
        
        <div id="menuH">
        	<?php
            $arr = array(
                'lang' => $lang,
                'parent' => 0,
                'position_id' => 2,
                'order'=>'`order`',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
				if($row['id']!=$currentPage['rootID']) $style=''; else $style='active';
				if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
				echo '<li class="li '.$style.'"><a href="'.$url.'" title="'.$row['title'].'">'.$row['name'].'<span>'.$row['title'].'</span></a></li>';
            }
            ?>
        </div>
    </div>
    <div class="clear1"></div>
</div>