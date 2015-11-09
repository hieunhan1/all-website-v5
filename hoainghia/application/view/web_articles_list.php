<div class="container">
	<?php echo $c->viewNavigator($lang, $currentPage['id']);?>
    <div id="article">
    <?php
	$i = 0;
	settype($arrUrl['page'], 'int');
	if($arrUrl['page']<1) $arrUrl['page']=1;
	$perPage = $config['limit_1'];
	$startRow = ($arrUrl['page'] - 1) * $perPage;
	
	$arr = array(
		'lang'=>$lang,
		'menu_id'=>$currentPage['id'],
		'properties'=>2,
		'select'=>'count(`id`) as `totalRows`',
	);
	$totalRows = $c->_model->_headerData($arr);
	$totalRows = $totalRows[0]['totalRows'];
	
	$arr = array(
		'lang'=>$lang,
		'menu_id'=>$currentPage['id'],
		'properties'=>2,
		'order'=>'`datetime` DESC',
		'limit'=>array($startRow, $perPage),
	);
    $data = $c->_model->_headerData($arr);
	
    if($totalRows>1){
        foreach($data as $row){
			$img = $currentPage['url_img_thumb'].$row['img'];
            if($row['img']=='' || !file_exists('../'.$img)) $img=CONS_IMAGE_DEFAULT;
            echo '<div class="articleBox">
                <div class="img"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
                <a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
                <div class="p">'.$row['description'].'</div>
                <a href="'.$row['name_alias'].'" class="view">'.$language_var['viewmore'].'</a>
                <div class="clear1"></div>
            </div>';
        }
        
        echo '<div id="phantrang">';
        $offSet = 2;
        $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
        echo $data;
        echo '</div>';
    }
	else if($totalRows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['name_alias']);
    else echo '<p style="padding:10px 0px 100px 50px">'.$language_var['update'].'</p>';
    ?>
    </div>
    
    <?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>