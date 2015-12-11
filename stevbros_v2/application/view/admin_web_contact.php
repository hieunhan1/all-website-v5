<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

echo $c->viewFormSearch($arrFrmSearch);


if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
        <p class="fieldQuickView" type="txt" name="name">Họ tên</p>
        <p class="fieldQuickView" type="txt" name="email">Email</p>
        <p class="fieldQuickView" type="txt" name="phone">Phone</p>
        <p class="fieldQuickView" type="txt" name="datetime">Ngày</p>
        <p class="fieldQuickView" type="des" name="message">Lời nhắn</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
            <th width="50">STT</th>
            <th align="left">Họ tên</th>
            <th width="110" align="left">Phone</th>
            <th width="180" align="left">Email</th>
            <th width="100" align="left">Type</th>
            <th width="110" align="left">Ngày</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'lang'=>$lang,
			'select'=>'`id`, `name`, `email`, `phone`, `address`, `message`, `datetime`, `status`, `type`',
			'table'=>$table,
			//'where'=>'',
			//'order'=>'',
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><p class="height"><?php echo $row['phone'];?></p></td>
                <td><p class="height"><?php echo $row['email'];?></p></td>
                <td><?php if($row['type']==1) echo 'Liên hệ'; else echo '<span class="adMessage">Đăng ký</span>';?></td>
                <td><?php echo $c->viewDateTime($row['datetime']);?></td>
                <td align="center" class="adAction">
                	<?php
                    $str=''; $key = array_keys($row);
					for($j=0; $j<count($key); $j++){
						if(!preg_match("/date/", $key[$j])){
							$str.='"'.$key[$j].'":"'.$row[$key[$j]].'", ';
						}else{
							$str.='"'.$key[$j].'":"'.$c->_model->_viewDateTime($row[$key[$j]]).'", ';
						}
					}
					$str=rtrim($str, ', ');
					echo '<div class="data">{'.$str.'}</div>';
					$link = CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$para.'&id='.$row['id'];
					echo status_edit($row['status'], $link);
					echo $btnDelete;
					?>
                </td>
            </tr>
        <?php }?>
    </table>
    <div class="pageList">
		<?php
		$urlSearch = CONS_LINK_ADMIN.'/'.$navigator['url'].'/?'.$arr['urlSearch'];
		$offSet = 5;
		$totalRows = $arr['totalRows'];
		$currentPage = $arr['currentPage'];
		$data = $c->pagesList($urlSearch, $totalRows, CONS_ADMIN_PER_PAGE, $offSet, $currentPage);
		echo $data;
		?>
    </div>
</div>