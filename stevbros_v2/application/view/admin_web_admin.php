<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'type';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- loại --');
$value[] = array('id'=>'1', 'name'=>'Web');
$value[] = array('id'=>'2', 'name'=>'Admin');
$value[] = array('id'=>'3', 'name'=>'Manager');
$value[] = array('id'=>'0', 'name'=>'No');
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
        <p class="fieldQuickView" type="txt" name="name">Mô tả</p>
        <p class="fieldQuickView" type="txt" name="url">Link</p>
        <p class="fieldQuickView" type="txt" name="parameter">Parameter</p>
        <p class="fieldQuickView" type="txt" name="file">File Include</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="100" align="left">Url</th>
            <th width="220" align="left">Parameter</th>
            <th width="100" align="left">File Include</th>
            <th width="80">Thứ tự</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			//'lang'=>$lang,
			'select'=>'`id`, `name`, `url`, `parameter`, `file`, `order`, `status`',
			'table'=>$table,
			//'where'=>'',
			'order'=>'`order`',
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><p class="height"><?php echo $row['url'];?></p></td>
                <td><p class="height"><?php echo $row['parameter'];?></p></td>
                <td><p class="height"><?php echo $row['file'];?></p></td>
                <td align="center"><?php echo $row['order'];?></td>
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