<?php
$arrFrmSearch = array();

$name = 'LIKE_position_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- vị trí hiển thị --');
$data = $c->_model->_webPositionList(2);
foreach($data as $row){
	$value[] = array('id'=>",{$row['id']},", 'name'=>$row['name']);
}
$data = $c->_model->_webPositionList(1);
foreach($data as $row){
	$value[] = array('id'=>",{$row['id']},", 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

$name = 'type_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- loại menu --');
$data = $c->_model->_webTypeList(1);
foreach($data as $row){
	$value[] = array('id'=>"{$row['id']}", 'name'=>$row['name']);
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
    	<p class="fieldQuickView" type="img" name="img"></p>
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="name_alias">Name alias</p>
        <p class="fieldQuickView" type="txt" name="url">Link</p>
        <p class="fieldQuickView" type="txt" name="order">Order</p>
        <p class="fieldQuickView" type="des" name="tags">Từ khóa</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="55">No.</th>
            <th align="left">Name</th>
            <th width="200" align="left">Name alias</th>
            <th width="200" align="left">Link</th>
            <th width="80" align="left">Order</th>
            <th width="110">Action</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromHeaderMenu($lang);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $i; ?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><p class="height" style="width:200px"><?php echo $row['name_alias'];?></p></td>
                <td><p class="height" style="width:200px"><?php echo $row['url'];?></p></td>
                <td><?php echo $row['order'];?></td>
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
</div>