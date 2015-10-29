<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'LIKE_menu_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn danh mục --');
$where = "(type_id=1 OR type_id=2 OR type_id=20)";
$data = $c->menuList($lang, $where);
foreach($data as $row){
	$value[] = array('id'=>",{$row['id']},", 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);

echo $c->viewTableHtml($table);
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50" align="left" style="padding-left:10px">STT</th>
            <th align="left">Mô tả</th>
            <th width="150" align="left">Tên hình</th>
            <th width="110">Ngày</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$where = '';
		$order = '';
		$data = $c->selectFromAll($lang, $table, $arr, $where, $order);
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td style="padding-left:10px"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['img'];?></p></td>
                <td><?php echo $c->viewDateTime($row['datetime']);?></p></td>
                <td align="center">
                    <a href="javascript:;" class="status_one" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$navigator['parameter'].'&id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a> &nbsp;
                    <a href="javascript:;" class="delete_one"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" /></a>
                </td>
            </tr>
        <?php }?>
    </table>
    <div id="phantrang">
		<?php
		$urlSearch = CONS_LINK_ADMIN.'/'.$navigator['url'].'/?'.$arr['urlSearch'];
		$offSet = 5;
		$totalRows = $arr['totalRows'];
		$currentPage = $arr['currentPage'];
		$data = $c->pagesList($urlSearch, $totalRows, CONS_ADMIN_PER_PAGE, $offSet, $currentPage);
		echo $data;
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>