<?php 
require_once('../class/Room.php');

$res =  $room->get_offices();

// print_r($res);

?>


<table id="myTable-office" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <td>Room</td>
	        <th><center>Action</center></th>
	    </tr>
	</thead>
 	<tbody>
 	<?php foreach($res as $r): ?>
 		<tr>
 			<td><?= $r['rm_desc']; ?></td>
 			<td>
 				<center>
 					<button type="button" class="btn btn-warning btn-xs" onclick="fill_office_form('<?= $r['rm_id'] ?>','<?= $r['rm_desc'] ?>');">
 					<span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit</button>
 					<button type="button" class="btn btn-danger btn-xs" onclick="get_rm_id('<?= $r['rm_id'] ?>','del');">
 					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete</button>
 				</center>
 			</td>
 		</tr>
 	<?php endforeach; ?>
 	</tbody>
</table>


<?php 
$room->Disconnect();
 ?>

<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-office').DataTable();
	});
</script>




