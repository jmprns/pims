<?php 
require_once('../class/Room.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	$pid = $data[0];
	$desc = $data[1];

	$res = $room->update_office($pid, $desc);
	if($res == 1){
		$result['valid'] = true;
		$result['msg'] = 'Room Updated Successfully!';
		echo json_encode($result);
	}
}

$room->Disconnect();