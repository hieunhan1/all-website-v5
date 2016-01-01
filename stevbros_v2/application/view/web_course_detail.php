<div class="container">
    <div id="course-detail" class="viewpost">
    	<div class="header">
        	<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
        	<h1><?php echo $currentPage['title'];?></h1>
            <?php //echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'">'.$currentMenu['name'].'</a></p>';?>
            <h2><?php echo $currentPage['description'];?></h2>
            <a href="lien-he" class="action"><?php echo $lang_var['request_for_service'];?></a>
            <div class="clear1"></div>
        </div>
        
        <?php
        if($rowDetail['more']!=''){
			echo '<div class="content">
				<div class="left">Lợi ích</div>
				<div class="right viewpost">'.$rowDetail['more'].'</div>
				<div class="clear1"></div>
			</div>';
		}
		
        if($rowDetail['content']!=''){
			echo '<div class="content">
				<div class="left">Nội dung khóa học</div>
				<div class="right viewpost">'.$rowDetail['content'].'</div>
				<div class="clear1"></div>
			</div>';
		}
		
        if($rowDetail['more2']!=''){
			echo '<div class="content">
				<div class="left">Mô tả khóa học</div>
				<div class="right viewpost">'.$rowDetail['more2'].'</div>
				<div class="clear1"></div>
			</div>';
		}
		?>
    </div>
    
    <div id="course-more" style="float:right">
    	<div class="box">
        	<div class="search-header allIcon"><input type="text" name="txtSearch" id="txtSearch" placeholder="Tìm kiếm" /></div>
        </div>
        
		<?php
		//khoa hoc pho bien
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
                'menu_id'=>$rowRight['id'],
                'properties'=>2,
                'order'=>'`_order`',
                'limit'=>'5',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
				$i++;
				if($i!=1) $border='border'; else $border='';
				$name = explode(',', $row['tags'], 2);
				echo '<div class="item '.$border.'">
					<div class="left">'.$name[0].'</div>
					<h5 class="h5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h5>
					<div class="clear1"></div>
				</div>';
            }
            echo '</div>';
        }
        ?>
    	
    	<div class="box">
            <h3 class="h3"><?php echo '<a href="'.$currentPage['rootAlias'].'" title="'.$currentPage['rootName'].'">'.$currentPage['rootName'].'</a>';?></h3>
            <?php
			$i=0;
            $arr = array(
                'parent'=>$currentPage['rootID'],
                'properties'=>1,
                'type_id'=>3,
                'position_id'=>5,
                'order'=>'`_order`',
            );
            $data = $c->_model->_headerData($arr); //$c->_model->_print($data);
            foreach($data as $row){
				$i++;
				if($i!=1) $border='border'; else $border='';
                echo '<h4 class="h4 '.$border.'"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h4>';
            }
            ?>
        </div>
    </div>
</div>
<div class="clear30"></div>