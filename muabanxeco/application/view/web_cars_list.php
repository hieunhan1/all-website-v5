<div class="container">
	<div id="cars">
		<?php
        echo '<div class="viewpost">
            <h1>'.$currentPage['name'].'</h1>
            <h2>'.$currentPage['description'].'</h2>
        </div>';
        ?>
    
        <div class="list_cars">
            <?php
            settype($arrUrl['page'], 'int');
            if($arrUrl['page']<1) $arrUrl['page']=1;
            $perPage = $config['limit_2'];
            $startRow = ($arrUrl['page'] - 1) * $perPage;
            
            $arr = array(
                'type_id'=>3,
                'menu_id'=>$currentPage['id'],
                'properties'=>2,
                'select'=>'count(`id`) as `totalRows`',
            );
            $totalRows = $c->_model->_headerData($arr);
            $totalRows = $totalRows[0]['totalRows'];
            
            $arr = array(
                'type_id'=>3,
                'menu_id'=>$currentPage['id'],
                'properties'=>2,
                'order'=>'`_order` DESC, `datetime` DESC',
                'limit'=>array($startRow, $perPage),
            );
            $data = $c->_model->_headerData($arr);
            
            if($totalRows>0){
                $str = '';
                $i = 0;
                foreach($data as $row){
                    $i++;
                    if($i%3 != 1) $style='margin2'; else $style='';
                    
                    if($row['price']==0){
                        $price = '';
                        $buy = 'Liên hệ';
                    }else{
                        $price = '<p class="price">'.number_format($row['price'], 0, ',', '.').'đ</p>';
                        $buy = 'Mua';
                    }
                    
                    $img = IMAGE_URL_THUMB.$row['img'];
                    if($row['img']=='') $img = CONS_IMAGE_DEFAULT;
                    
                    $str .= '<div class="box width1 '.$style.'">
                        <p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
                        <h3><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
                        '.$price.'
                        <p class="buy corner5" id-car="'.$row['id'].'" name="'.$row['name'].'">'.$buy.'</p>
                    </div>';
                }
                echo $str;
                
                echo '<div id="phantrang">';
                $offSet = 2;
                $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
                echo $data;
                echo '</div>';
            }
            else echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
            ?>
        </div>
	</div>
    
    <?php include_once('web_right.php');?>
    <p class="clear30"></p>
</div>