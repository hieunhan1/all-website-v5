<?php
$arrFrmSearch = array();

$name = 'code';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Số thẩm tra');

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Tên công trình');

$name = 'LIKE_investor';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Chủ đầu tư');

$name = 'type';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- loại c.trình --');
$value[] = array('id'=>'1', 'name'=>'Công trình thẩm tra');
$value[] = array('id'=>'2', 'name'=>'Công trình thiết kế');
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

$name = 'other';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chính phụ --');
$value[] = array('id'=>'1', 'name'=>'Công trình chính');
$value[] = array('id'=>'2', 'name'=>'Công trình phụ');
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);

echo $c->viewTableHtml($table);
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
        	<th width="90" align="left">Số thẩm tra</th>
            <th align="left">Tên công trình</th>
            <th width="150" align="left">Chủ đầu tư</th>
            <th width="120" align="left">Ngày thẩm tra</th>
            <th width="150" align="left">Ghi chú</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$where = '';
		$order = '';
		$data = $c->selectFromAll($lang, $table, $arr, $where, $order);
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><?php echo $row['code'];?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['investor'];?></p></td>
                <td><?php echo date('d-m-Y', $row['date_examine']);?></td>
                <td style="color:#F00"><p class="height_row_hidden"><?php echo $row['notes'];?></p></td>
                <td align="center">
                    <a href="javascript:;" class="status_one" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_LINK_ADMIN.'/'.$navigator['url'].'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a> &nbsp;
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
		$totalPages = ceil($totalRows/CONS_ADMIN_PER_PAGE);
		$data = $c->pagesList($urlSearch, $totalRows, CONS_ADMIN_PER_PAGE, $offSet, $currentPage);
		echo $data;
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>