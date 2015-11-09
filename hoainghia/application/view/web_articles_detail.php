<div class="container">
	<?php echo $c->viewNavigator($lang, $menu['id']);?>
    <div id="article" class="viewpost">
        <?php
        echo "<h1>{$currentPage['name']}</h1>";
        echo $rowDetail['content'];
		
		$arr = array(
			'lang'=>$lang,
			'menu_id'=>$menu['id'],
			'properties'=>2,
			'limit'=>6,
		);
        $data = $c->_model->_headerData($arr);
        if(count($data)>1){
            echo '<div class="clear20"></div><hr class="hr" /><div id="otherPost"><div class="titlePost">'.$language_var['other_post'].'</div>';
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