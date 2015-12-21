<?php
$arrFrmSearch = array();

$name = 'code';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mã hợp đồng');

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Tên công ty');

$name = 'tax_code';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mã số thuế');

echo $c->viewFormSearch($arrFrmSearch);


if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="surrogate">Người đại điện</p>
        <p class="fieldQuickView" type="txt" name="tel">Tel</p>
        <p class="fieldQuickView" type="txt" name="tax_code">Mã số thuế</p>
        <p class="fieldQuickView" type="des" name="address">Address</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th width="80" align="left">Mã HĐ</th>
            <th align="left">Company</th>
            <th width="80" align="left">MST</th>
            <th width="120" align="left">Đại điện</th>
            <th width="80" align="left">Chức vụ</th>
            <th width="80" align="left">Tel</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'select'=>'`id`, `code`, `name`, `surrogate`, `regency`, `address`, `tax_code`, `tel`, `status`',
			'table'=>$table,
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><?php echo $row['code'];?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><?php echo $row['tax_code'];?></td>
                <td><p class="height"><?php echo $row['surrogate'];?></p></td>
                <td><?php echo $row['regency'];?></td>
                <td><p class="height"><?php echo $row['tel'];?></p></td>
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