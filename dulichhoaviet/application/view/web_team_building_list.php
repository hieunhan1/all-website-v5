<div class="container">
    <div id="team-building" class="list-team-building"><div class="content">
		<?php
        settype($arrUrl['page'], 'int');
        if($arrUrl['page']<1) $arrUrl['page']=1;
        $perPage = $config['limit_3'];
        $startRow = ($arrUrl['page'] - 1) * $perPage;
        
        $arr = array(
            'type_id'=>6,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'select'=>'count(`id`) as `totalRows`',
        );
        $totalRows = $c->_model->_headerData($arr);
        $totalRows = $totalRows[0]['totalRows'];
        
        $arr = array(
            'type_id'=>6,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'order'=>'`_order` DESC, `datetime` DESC',
            'limit'=>array($startRow, $perPage),
        );
        $data = $c->_model->_headerData($arr);
        
        if($totalRows>0){
            $i = 0;
            foreach($data as $row){
                $img = IMAGE_URL.$row['img'];
                if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
                $i++;
                if($i%2==1) $float='left'; else $float='right';
                echo '<div class="box2 mouseViewmore '.$float.'">
                    <p class="img2 effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['title'].'" /></a></p>
                    <h4 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h4>
                </div>';
            }
            
            echo '<div id="phantrang">';
            $offSet = 2;
            $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
            echo $data;
            echo '</div>';
        }
        else echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
        ?>
	</div></div>
    
	<?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>