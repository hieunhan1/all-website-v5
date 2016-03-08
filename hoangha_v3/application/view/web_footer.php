<div id="footer">
	<div id="btnTop">TOP</div>
	<div class="container">
    	<div class="box">
        	<p><b>Copyright ©<?php echo date('Y').'. '.$config['sitename'];?></b></p>
            <p>Email: <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a></p>
            <p>Website: <a href="http://www.hoangha.com" title="<?php echo $config['sitename'];?>">www.hoangha.com</a></p>
        </div>
        
        <?php
        $arr = array(
			'select' => '*',
			'from' => 'web_branch',
			'where' => "`status`=1 AND `lang`='{$lang}'",
			'order' => '`_order`',
		);
		$data = $c->_model->_select($arr);
		foreach($data as $row){
			echo '<div class="box">
				<p><b>'.$row['name'].'</b></p>
				<p>'.$lang_var['address'].': '.$row['address'].'</p>
				<p>'.$lang_var['tel'].': '.$row['tel'].' - Fax: '.$row['fax'].'</p>
			</div>';
		}
		?>
        
        <p class="clear1"></p>
	</div>
</div>