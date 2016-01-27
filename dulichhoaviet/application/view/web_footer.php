<div id="footer">
	<div class="container">
    	<?php
		if($currentPage['type']['id']==1){
			$arr = array(
				'select' => '`id`, `name`, `url`',
				'lang' => $lang,
				'parent' => 0,
				'type_id' => 3,
				'properties' => 1,
				'order'=>'_order',
			);
			$dataTour = $c->_model->_headerData($arr);
			foreach($dataTour as $rowTour){
				$arr = array(
					'select' => '`id`, `name`, `name_alias`, `url`, `title`',
					'parent' => $rowTour['id'],
					'type_id' => 3,
					'properties' => 1,
					'order'=>'_order',
				);
				$dataPart = $c->_model->_headerData($arr);
				if(count($dataPart)>0){
					echo '<ul class="menuFooter">';
					foreach($dataPart as $rowPart){
						$str = '';
						$arr = array(
							'select' => '`id`, `name`, `name_alias`, `url`, `title`',
							'parent' => $rowPart['id'],
							'type_id' => 3,
							'properties' => 1,
							'order'=>'_order',
							'limit' => 6,
						);
						$data = $c->_model->_headerData($arr);
						if(count($data)>0){
							$str .= '<ul>';
							foreach($data as $row){
								$str .= '<li><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></li>';
							}
							$str .= '</ul>';
						}
						echo '<li><a href="'.$rowPart['name_alias'].'" title="'.$rowPart['title'].'" class="title">'.$rowPart['name'].'</a>'.$str.'</li>';
					}
					echo '</ul><div class="clear20"></div>';
				}
			}
		}
		?>
        
    	<div class="logo">
        	<img src="themes/website/img/logo-white.png" alt="Hoa Việt Travel&reg;" />
            <h6 class="h6">Hoa Việt Travel&reg;</h6>
        </div>
        
        <div class="content">
        	<?php
            $arr = array(
				'select' => '*',
				'from' => '`web_branch`',
				'where' => '`status`=1',
				'order' => '`_order`',
			);
			$dataBranch = $c->_model->_select($arr);
			foreach($dataBranch as $row){
				echo '<div class="box">
					<p class="name">'.$row['name'].'</p>
					<p class="allIcon address">'.$row['address'].'</p>
					<p class="allIcon phone"><a href="tel:'.$row['tel'].'">'.$row['tel'].'</a> <span class="allIcon fax">&nbsp;</span>'.$row['fax'].'</p>
				</div>';
			}
			?>
        	<div class="box">
            	<p><?php echo $config['other']?></p>
            	<p>Copyright © <?php echo date('Y').'. '.$config['sitename'];?>.</p>
            </div>
        </div>
        <div class="clear1"></div>
	</div>
</div>