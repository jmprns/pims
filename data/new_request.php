<?php 
require_once('../class/Request.php');

if(isset($_POST['iID'])){
	$iID = $_POST['iID'];
	$rcv = $_POST['rcv'];

	$result = $request->new_request($iID, $rcv);

	echo json_encode($result);

}

$request->Disconnect();