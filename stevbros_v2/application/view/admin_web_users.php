<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'group_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn nhóm --');
$data = $c->_model->_listTable('web_users_group', '`_order`');
foreach($data as $row){
	$value[] = array('id'=>$row['id'], 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);


if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
        <p class="fieldQuickView" type="txt" name="username">Username</p>
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="phone">Phone</p>
        <p class="fieldQuickView" type="txt" name="email">Email</p>
        <p class="fieldQuickView" type="des" name="address">Address</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="40">STT</th>
            <th align="left">Họ tên</th>
            <th width="100" align="left">Username</th>
            <th width="100" align="left">Phone</th>
            <th width="180" align="left">Email</th>
            <th width="110" align="left">Group</th>
            <th width="110" align="left">Ngày hết hạn</th>
            <th width="80">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'lang'=>$lang,
			'select'=>'`id`, `name`, `username`, `phone`, `email`, `address`, `date_expiration`, `status`, `group_id`',
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
                <td><?php echo $row['username'];?></td>
                <td><p class="height"><?php echo $row['phone'];?></p></td>
                <td><p class="height"><?php echo $row['email'];?></p></td>
                <td><p class="height"><?php echo $value[$row['group_id']]['name'];?></p></td>
                <td>
					<?php
                    if($row['date_expiration']!=0){
						if($row['date_expiration']>time()) $style=''; else $style='adError';
                        echo '<span class="'.$style.'">'.$c->viewDateTime($row['date_expiration']).'</span>';
					}else echo 'Không có';
                    ?>
                </td>
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