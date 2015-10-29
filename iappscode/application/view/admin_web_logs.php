<div id="clearLogs" style="width:450px; text-align:center; font-weight:bold; color:#FFF; text-transform:uppercase; margin:0 auto 5px auto; padding:8px; background-color:#03F; border-radius:5px; cursor:pointer">Xóa logs và chỉ lưu lại trong 30 ngày, ấn vào đây.</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#clearLogs").click(function(){
		$.ajax({
			url: 'ajax/',
			type:'POST',
			data:{clearLogs:31},
			cache:false,
			success: function(data) {
				if(data=="1") alert('Xóa logs thành công.');
				return true;
			}
		});
	});
});
</script>

<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'action';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn hành động --');
$value[] = array('id'=>'create', 'name'=>'Create - Hành động tạo mới');
$value[] = array('id'=>'update', 'name'=>'Update - Hành động cập nhật');
$value[] = array('id'=>'status', 'name'=>'Status - Thay đổi trạng thái');
$value[] = array('id'=>'delete', 'name'=>'Delete - Hành động xóa');
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);

echo $c->viewTableHtml($table);
?>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="100" align="left">Action</th>
            <th width="140" align="left">Table</th>
            <th width="120" align="left">Date</th>
            <th width="80" align="left">User</th>
            <th width="80">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$where = '';
		$order = '';
		$data = $c->selectFromAll($lang, $table, $arr, $where, $order);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><?php echo $row['action'];?></td>
                <td><?php echo $row['table'];?></td>
                <td><?php echo $c->viewDateTime($row['datetime']);?></p></td>
                <td><?php echo $row['username'];?></td>
                <td align="center">
                    <a href="javascript:;"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_LINK_ADMIN.'/'.$navigator['url'].'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a>
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