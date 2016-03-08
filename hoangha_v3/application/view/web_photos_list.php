<div class="container">
	<div id="photos">
    	<div class="viewpost">
        	<?php echo "<h1>{$currentPage['title']}</h1> <h2>{$currentPage['description']}</h2>"; ?>
            <div class="clear1"></div>
        </div>
        <?php
        settype($arrUrl['page'], 'int');
        if($arrUrl['page']<1) $arrUrl['page']=1;
        $perPage = $config['limit_3'];
        $startRow = ($arrUrl['page'] - 1) * $perPage;
        
        $arr = array(
            'lang'=>$lang,
            'type_id'=>7,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'select'=>'count(`id`) as `totalRows`',
        );
        $totalRows = $c->_model->_headerData($arr);
        $totalRows = $totalRows[0]['totalRows'];
        
        $arr = array(
            'lang'=>$lang,
            'type_id'=>7,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'order'=>'`_order` DESC, `datetime` DESC',
            'limit'=>array($startRow, $perPage),
        );
        $data = $c->_model->_headerData($arr);
        
        if($totalRows>0){
            foreach($data as $row){
				echo '<div class="photos-box corner5">
					<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></a></p>
					<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
				</div>';
            }
            
            echo '<div id="phantrang">';
            $offSet = 2;
            $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
            echo $data;
            echo '</div>';
        }else echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
        ?>
        <div class="clear1"></div>
    </div>
    <?php include_once('web_articles_right.php');?>
</div>