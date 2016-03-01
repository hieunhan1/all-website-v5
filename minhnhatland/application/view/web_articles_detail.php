<div class="container">
    <div id="article" class="width-main viewpost">
        <?php
        echo "<h1>{$currentPage['name']}</h1>";
		echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'" title="'.$currentMenu['name'].'">'.$currentMenu['name'].'</a></p>';
        echo $rowDetail['content'];
		
		$arr = array(
			'lang'=>$lang,
			'menu_id'=>$currentMenu['id'],
			'properties'=>2,
			'order'=>'`datetime` DESC',
			'limit'=>5,
		);
        $data = $c->_model->_headerData($arr);
        if(count($data)>1){
            echo '<div class="clear20"></div><hr class="hr" /><div id="otherPost"><div class="titlePost">'.$lang_var['other_post'].'</div>';
            foreach($data as $row){
				if($row['id']!=$currentPage['id'])
                	echo '<li class="itemPost"><a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="linkPost">'.$row['name'].'</a></li>';
            }
            echo '</div>';
        }
        ?>
    </div>

	<?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>