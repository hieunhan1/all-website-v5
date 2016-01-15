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
}