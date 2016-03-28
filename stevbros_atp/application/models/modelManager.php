<?php
class modelManager extends modelDB{
	public function _insertContactSendMail($name, $email, $content, $event_id, $table, $table_id){
		$date = time();
		$sql = "INSERT INTO `web_sendmail` (`name`, `email`, `content`, `datetime`, `event_id`, `_table`, `table_id`) VALUES ('{$name}', '{$email}', '{$content}', '{$date}', '{$event_id}', '{$table}', '{$table_id}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	
	public function _updateStatusContact($id, $status){
		$sql = "UPDATE `web_contact` SET `status`='{$status}' WHERE `id`='{$id}'";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	
	public function _insertCustomer($name, $phone, $email, $address, $city, $country, $birthday, $company){
		$datetime = time();
		$sql = "INSERT INTO `mn_customer` (`name`, `phone`, `email`, `address`, `city`, `country`, `date_birthday`, `company`, `datetime`) VALUES ('{$name}', '{$phone}', '{$email}', '{$address}', '{$city}', '{$country}', '{$birthday}', '{$company}', '{$datetime}')";
		if(!$this->db->query($sql)) die($this->db->error);
		return $this->db->insert_id;
	}
	
	public function _insertContractCustomer($contract_id, $customer_id){
		$sql = "INSERT INTO `mn_contract_customer` (`contract_id`, `customer_id`) VALUES ('{$contract_id}', '{$customer_id}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	
	public function _insertClassCustomer($class_id, $table_id){
		$sql = "INSERT INTO `mn_class_info` (`class_id`, `_table`, `table_id`) VALUES ('{$class_id}', 'mn_customer', '{$table_id}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	
	public function _insertCustomerModule($customer_id, $course_id, $course_name){
		$datetime = time();
		$sql = "INSERT INTO `mn_customer_module` (`customer_id`, `course_id`, `course_name`, `datetime`) VALUES ('{$customer_id}', '{$course_id}', '{$course_name}', '{$datetime}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	
	public function _insertTrainerRate($trainer_id, $class_id, $rate){
		$datetime = time();
		$sql = "INSERT INTO `mn_trainer_rate` (`trainer_id`, `class_id`, `rate`, `datetime`) VALUES ('{$trainer_id}', '{$class_id}', '{$rate}', '{$datetime}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	
	public function _insertEntryTestUser($table, $table_id, $menu_id, $key){
		$datetime = time();
		$sql = "INSERT INTO `web_entrytest_user` (`_table`, `table_id`, `menu_id`, `datetime`, `random_key`) VALUES ('{$table}', '{$table_id}', '{$menu_id}', '{$datetime}', '{$key}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
}