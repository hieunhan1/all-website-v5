<div id="course-more" style="float:right">
    <div class="box">
        <div class="search-header allIcon"><input type="text" name="txtSearch" id="txtSearch" placeholder="Tìm kiếm khóa học" /></div>
    </div>
    
    <?php
    $arr = array(
        'parent'=>0,
        'position_id'=>5,
        'properties'=>1,
        'order'=>'`_order`',
    );
    $dataRight = $c->_model->_headerData($arr);
    foreach($dataRight as $rowRight){
        echo '<div class="box"><h3 class="h3">'.$rowRight['name'].'</h3>';
        $i=0;
        $arr = array(
			'parent'=>$rowRight['id'],
            'properties'=>1,
            'order'=>'`_order`',
        );
		$data = $c->_model->_headerData($arr);
		if(count($data)>0){ //danh muc
			foreach($data as $row){
				$i++;
				if($i!=1) $border='border'; else $border='';
				echo '<h4 class="h4 '.$border.'"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h4>';
			}
		}else{ //bai viet
			$arr = array(
				'menu_id'=>$rowRight['id'],
				'properties'=>2,
				'order'=>'`_order`',
				'limit'=>'6',
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				$i++;
				if($i!=1) $border='border'; else $border='';
				echo '<div class="item '.$border.'">
					<h5 class="h5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h5>
					<div class="clear1"></div>
				</div>';
			}
		}
        echo '</div>';
    }
    ?>
</div>