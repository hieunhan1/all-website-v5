<div class="container">
    <div id="article" class="width-main">
		<?php
        settype($arrUrl['page'], 'int');
        if($arrUrl['page']<1) $arrUrl['page']=1;
        $perPage = $config['limit_1'];
        $startRow = ($arrUrl['page'] - 1) * $perPage;
        
		$i=0; $name=''; $alias='';
		if(isset($_GET['txt'])){
			$name = $c->_model->_removeDauNhay($_GET['txt']);
			$alias = $c->_model->_changeAlias($name);
		}
		
		$arr = array(
            'select'=>'`id`',
			'from'=>'web_header',
            'where'=>"`status`=1 AND `lang`='{$lang}' AND `properties`='2' AND `type_id`>1 AND `type_id`<11 AND (`name` LIKE '%{$name}%' OR `name_alias` LIKE '%{$alias}%')",
            'order'=>'`id` DESC',
        );
        $data = $c->_model->_select($arr);
        $totalRows = count($data);
        
		$arr = array(
            'select'=>'*',
			'from'=>'web_header',
            'where'=>"`status`=1 AND `lang`='{$lang}' AND `properties`='2' AND `type_id`>1 AND `type_id`<11 AND (`name` LIKE '%{$name}%' OR `name_alias` LIKE '%{$alias}%')",
            'order'=>'`id` DESC',
			'limit'=>"{$startRow}, {$perPage}",
        );
        $data = $c->_model->_select($arr);
        
		echo '<div class="viewpost">
			<h1>'.$currentPage['title'].'</h1>
			<h2>Tìm được <strong>'.$totalRows.'</strong> bài viết theo từ khóa &quot;'.$name.'&quot;</h2>
			<div class="clear1"></div>
		</div>';
        if($totalRows>0){
            foreach($data as $row){
                $img = IMAGE_URL.$row['img'];
				if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
				echo '<div class="box">
					<div class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
					<div class="content">
						<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
						<div class="p">'.$row['description'].'</div>
						<a href="'.$row['name_alias'].'" class="view adBtnSmall bgColorWhite corner5">'.$lang_var['viewmore'].'</a>
					</div>
					<div class="clear1"></div>
				</div>';
            }
            
            echo '<div id="phantrang">';
            $offSet = 2;
            $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page'], true);
            echo $data;
            echo '</div>';
        }else echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
        ?>
    </div>
    
    <?php include_once('web_articles_right.php');?>
</div>
<div class="clear20"></div>