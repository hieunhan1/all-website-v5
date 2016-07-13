<div class="container">
	<div id="service-list">
    	<div class="viewpost"><?php echo "<h1>{$currentPage['title']}</h1>";?></div>
        <?php
        $arr = array(
			'select' => '`id`, `name`, `name_alias`, `img`, `title`',
			'parent' => $currentPage['id'],
			'properties' => 1,
			'order' => '`_order`',
		);
		$data = $c->_model->_headerData($arr);
		if(count($data) > 0){
			$str = '<div class="viewpost"><h2>'.$currentPage['description'].'</h2> <p class="clear10"></p></div>';
			foreach($data as $row){
				$arr = array(
					'select' => '`id`, `name`, `name_alias`, `img`, `title`',
					'parent' => $row['id'],
					'order' => '`_order`',
				);
				$data2 = $c->_model->_headerData($arr);
				if(count($data2)==0){
					$arr = array(
						'select' => '`id`, `name`, `name_alias`, `img`, `title`',
						'menu_id' => $row['id'],
						'properties' => 2,
						'order' => '`_order` DESC, `datetime` DESC',
					);
					$data2 = $c->_model->_headerData($arr);
				}
				
				$str2 = '';
				foreach($data2 as $row2){
					$str2 .= '<h4 class="h4"><a href="'.$row2['name_alias'].'" title="'.$row2['title'].'"><span class="allIcon icon"></span>'.$row2['name'].'</a></h4>';
				}
				
				$img = IMAGE_URL.$row['img'];
                if($row['img']=='') $img = CONS_IMAGE_DEFAULT;
				$str .= '<div class="list-box">
					<p class="img effect corner5"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
					<div class="content">
						<h3 class="h3"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
						'.$str2.'
					</div>
					<p class="clear1"></p>
				</div>';
			}
			echo $str;
		}else{
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
				'menu_id' => $currentPage['id'],
				'properties' => 2,
				'order' => '`_order` DESC, `datetime` DESC',
			);
			$data = $c->_model->_headerData($arr);
			if(count($data)>0){
				echo '<div class="viewpost"><h2>'.$currentPage['description'].'</h2> <p class="clear10"></p></div>';
				foreach($data as $row){
					$img = IMAGE_URL.$row['img'];
					if($row['img']=='') $img = CONS_IMAGE_DEFAULT;
					echo '<div class="item-box">
						<p class="img effect corner5"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
						<div class="content">
							<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
							<p class="info">'.$row['description'].'</p>
							<p><a href="'.$row['name_alias'].'" class="viewmore">'.$lang_var['viewmore2'].' &rarr;</a></p>
						</div>
						<p class="clear1"></p>
					</div>';
				}
			}else{
				$content = $c->_model->_content($currentPage['id']);
				echo '<p class="clear20"></p> <div class="viewpost">'.$content['content'].'</div>';
			}
		}
		?>
    </div>
    
    <?php include_once('web_articles_right.php');?>
</div>