<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'type';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- type --');
$dataType = $c->_model->_webTypeList(1);
foreach($dataType as $row){
	$value[] = $row;
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
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="subject">subject</p>
        <p class="fieldQuickView" type="txt" name="email">Email thông báo</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="60">STT</th>
            <th align="left" width="25%">Name</th>
            <th align="left">Subject</th>
            <th align="left" width="120">Email thông báo</th>
            <th align="left" width="100">Type</th>
            <th width="120">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			//'lang'=>$lang,
			'select'=>'`id`, `name`, `subject`, `email`, `type`, `status`',
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
                <td><p class="height"><?php echo $row['subject'];?></p></td>
                <td><p class="height"><?php echo $row['email'];?></p></td>
                <td><p class="height"><?php echo $dataType[$row['type']]['name'];?></p></td>
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