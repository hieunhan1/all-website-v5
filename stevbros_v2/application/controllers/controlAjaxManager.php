<?php
if(isset($_POST['insertCustomerContract'])){
	if($c->checkRole('create')==false) return false;
	$contract_id = $c->_model->_changeDauNhay($_POST['contract_id']); settype($contract_id, 'int');
	$customer_id = $c->_model->_changeDauNhay($_POST['customer_id']); settype($contract_id, 'int');
	if($contract_id==0 || $customer_id==0){
		$arr = array('error'=>1, 'message'=>'Input error');
		echo $c->exportError($arr);
		return false;
	}
	
	$data = $c->_model->_viewDetail('mn_customer', $customer_id);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Không tìm thấy khách hàng này trong cơ sở dữ liệu');
		echo $c->exportError($arr);
		return false;
	}
	
	$arr = array(
		'select' => '`id`',
		'from' => '`mn_contract_customer`',
		'where' => "`contract_id`='{$contract_id}' AND `customer_id`='{$customer_id}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)!=0){
		$arr = array('error'=>1, 'message'=>'Khách hàng này đã có trong hợp đồng');
		echo $c->exportError($arr);
		return false;
	}
	
	$fields = array('contract_id', 'customer_id');
	$values = array($contract_id, $customer_id);
	$result = $c->_model->_getSql('create', 'mn_contract_customer', $fields, $values);
	if($result==false){
		$arr = array('error'=>1, 'message'=>'Data error: '.$result);
		echo $c->exportError($arr);
		return false;
	}
	
	$arr = array('error'=>0, 'message'=>'Thêm thành công');
	echo $c->exportError($arr);
	return true;
}


?>