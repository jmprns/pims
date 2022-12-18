<?php 
require_once('../database/Database.php');
require_once('../interface/iRoom.php');
class Room extends Database implements iRoom{
	
	public function get_offices()
	{
		$sql = "SELECT * FROM tbl_rm";
		
		return $this->getRows($sql);
	}
	public function update_office($id,$rm)
	{
		$sql = "UPDATE tbl_rm 
				SET rm_desc = ?
				WHERE rm_id = ?;
		";
		return $this->updateRow($sql, [$rm, $id]);
	}

	public function delete_office($oid)
	{
		$sql = "DELETE FROM `tbl_rm` WHERE rm_id = ?";
		return $this->deleteRow($sql, [$oid]);
	}
}

$room = new Room();