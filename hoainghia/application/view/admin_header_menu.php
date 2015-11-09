<?php
echo $c->viewTableHtml($table);
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="55">STT</th>
            <th align="left">Mô tả</th>
            <th width="200" align="left">Name alias</th>
            <th width="150" align="left">Link</th>
            <th width="80" align="left">Thứ tự</th>
            <th width="110">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromHeaderMenu($lang);
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['name_alias'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['url'];?></p></td>
                <td><?php echo $row['order'];?></td>
                <td align="center">
                    <a href="javascript:;" class="status_one" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$navigator['parameter'].'&id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a> &nbsp;
                    <a href="javascript:;" class="delete_one"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" /></a>
                </td>
            </tr>
        <?php }?>
    </table> 
    <div style="clear:both; height:30px"></div>
</div>