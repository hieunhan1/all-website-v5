<div class="container">
        <div class="viewpost">
            <?php echo "<h1>{$currentPage['title']}</h1> <h2>{$currentPage['description']}</h2>"; ?>
            <div class="clear1"></div>
        </div>
        
        <?php
		//home contact
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
			'parent' => 0,
			'type_id' => 4,
			'properties' => 1,
			'limit'=>'1',
		);
		$dataSale = $c->_model->_headerData($arr);
		if(count($dataSale) > 0){
			$rowSale = $dataSale[0];
			
			$arr = array(
				'select' => '`id`, `name`, `name_alias`',
				'parent' => $rowSale['id'],
				'properties' => 1,
				'order' => '`_order`'
			);
			$dataBox = $c->_model->_headerData($arr);
			$i = 0;
			$str = '';
			foreach($dataBox as $rowBox){
				$arr = array(
					'select' => '*',
					'from' => '`web_sale_online`',
					'where' => "`status`=1 AND `menu_id` LIKE '%,{$rowBox['id']},%' ",
					'order' => '`_order`',
				);
				$data = $c->_model->_select($arr);
				$strSale = '';
				foreach($data as $row){
					$strSale .= '<div class="info">
						<p><b>'.$row['name'].'</b></p>
						<p><i>'.$row['regency'].'</i></p>
						<p><span class="allIcon phone"></span><a href="tel:'.$row['phone'].'">'.$row['phone'].'</a></p>
						<p><span class="allIcon email"></span><a href="mailto:'.$row['email'].'">'.$row['email'].'</a></p>
					</div>';
				}
				
				$i++;
				if($i<=3){
					$str .= '<div class="box">
						<h5>'.$rowBox['name'].'</h5>
						'.$strSale.' <p class="clear1"></p>
					</div>';
				}else{
					$str .= '<div class="box2">
						<h5>'.$rowBox['name'].'</h5>
						'.$strSale.' <p class="clear1"></p>
					</div>';
				}
			}
			
			echo '<div id="saleonline">'.$str.'<p class="clear1"></p></div>';
		}
		?>
</div>