<?php
$_table = '';
if(isset($_GET['_table'])) $_table = $c->_model->_removeDauNhay($_GET['_table']);
if($_table=='mn_contract') $field='taxcode'; else $field='email';

$arrFrmSearch = array();

$name = '_table';
$value = array();
$value[] = array('id'=>'mn_contract', 'name'=>'Hợp đồng doanh nghiệp');
$value[] = array('id'=>'mn_customer', 'name'=>'Khách hàng (khóa học public)');
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Tên');

$name = $field;
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>ucfirst($field) );

echo $c->viewFormSearch($arrFrmSearch);


if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="phone">Phone</p>
        <p class="fieldQuickView" type="txt" name="price">Price</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th align="left">Name</th>
            <th width="120" align="left"><?php echo ucfirst($field);?></th>
            <th width="100" align="left">Phone</th>
            <th width="80" align="right">Price</th>
            <th width="110">Ngày đóng</th>
            <th width="100" align="left">Ghi chú</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'select' => "`mn_fee`.*, `name`, `phone`, `{$field}`",
			'table' => "`mn_fee`, `{$_table}`",
			'where' => "AND `mn_fee`.`status`=1 AND `table_id`=`{$_table}`.`id`",
			'order' => "`mn_fee`.`id` DESC",
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><p class="height"><?php echo $row[$field];?></p></td>
                <td><p class="height"><?php echo $row['phone'];?></p></td>
                <td align="right" style="font-weight:bold"><?php echo number_format($row['price'], 0, ',', '.');?></td>
                <td align="center"><?php echo $c->viewDateTime($row['datetime']);?></td>
                <td><p class="height"><?php echo $row['notes'];?></p></td>
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

<script type="text/javascript">
$(document).ready(function(e) {
    $("select[name=_table]").change(function(){
		this.form.submit();
	});
});
</script>