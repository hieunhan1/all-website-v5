<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'group_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn nhóm --');
$data = $c->_model->_listTable('web_users_group', '`order`');
foreach($data as $row){
	$value[] = array('id'=>$row['id'], 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);

echo $c->viewTableHtml($table);
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Họ tên</th>
            <th width="100" align="left">Username</th>
            <th width="100" align="left">Phone</th>
            <th width="180" align="left">Email</th>
            <th width="110" align="left">Group</th>
            <th width="110" align="left">Ngày hết hạn</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$group = $c->_model->_listTable('web_users_group');
		$i = 0;
		$where = '';
		$order = '';
		$data = $c->selectFromAll($lang, $table, $arr, $where, $order);
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['username'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['phone'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['email'];?></p></td>
                <td><p class="height_row_hidden"><?php if($row['group_id']!=0) echo $group[$row['group_id']]['name']; else echo '&nbsp;';?></p></td>
                <td><?php
				if($row['date_expiration']>time()) $style=''; else $style='error';
                if($row['date_expiration']!=0)
					echo '<span class="'.$style.'">'.$c->viewDateTime($row['date_expiration']).'</span>';
				else echo 0;
				?></p></td>
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