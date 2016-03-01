<div class="container">
    <div id="project" class="width-main">
    	<div class="viewpost">
        	<?php echo "<h1>{$currentPage['title']}</h1> <h2>{$currentPage['description']}</h2>"; ?>
            <div class="clear1"></div>
        </div>
		<?php
        settype($arrUrl['page'], 'int');
        if($arrUrl['page']<1) $arrUrl['page']=1;
        $perPage = $config['limit_2'];
        $startRow = ($arrUrl['page'] - 1) * $perPage;
        
        $arr = array(
            'lang'=>$lang,
            'type_id'=>3,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'select'=>'count(`id`) as `totalRows`',
        );
        $totalRows = $c->_model->_headerData($arr);
        $totalRows = $totalRows[0]['totalRows'];
        
        $arr = array(
            'lang'=>$lang,
            'type_id'=>3,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'order'=>'`_order` DESC, `datetime` DESC',
            'limit'=>array($startRow, $perPage),
        );
        $data = $c->_model->_headerData($arr);
        
        if($totalRows>0){
			$i = 0;
			echo '<div class="project-list">';
            foreach($data as $row){
                $img = IMAGE_URL.$row['img'];
                if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
                $i++;
				if($i%3 != 1) $margin='margin'; else $margin='';
				echo '<div class="box width3 '.$margin.'">
					<div class="img"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
					<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
				</div>';
            }
			echo '</div>';
            
            echo '<div id="phantrang">';
            $offSet = 2;
            $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
            echo $data;
            echo '</div>';
        }else{
			echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
		}
        ?>
    </div>
    
    <?php include_once('web_right.php');?>
</div>
<div class="clear20"></div>