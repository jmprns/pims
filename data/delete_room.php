<?php 
require_once('../class/Room.php');

if(isset($_POST['rm_id'])){
	$rm_id = $_POST['rm_id'];
	$del_off = $room->delete_office($rm_id);
	if($del_off == 1){
		$result['valid'] = true;
		$result['msg'] = 'Room Deleted Successfully!';
		echo json_encode($result);
	}
}

$room->Disconnect();