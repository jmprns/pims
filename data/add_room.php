<?php 
require_once('../class/Employee.php');
if(isset($_POST['off'])){
	$rm = $_POST['off'];

	$result['valid'] = $employee->insert_employee_office($rm);
	if($result['valid']){
		$result['msg'] = 'New Room Added Successfully!';
		echo json_encode($result);
	}
}

$employee->Disconnect();