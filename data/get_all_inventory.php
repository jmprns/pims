<?php 

require_once '../database/Medoo.php';

$items = $medoo_db->select("tbl_item", '*');

// echo json_encode($items);

// die;

?>

<table id="myTable-inventory" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <td>Item ID</td>
	        <td>Name</td>
	        <td>Property #</td>
	        <td>Model #</td>
	        <td>Brand</td>
	        <td>Quantity</td>
	        <td>Received Date</td>
	        <th><center>Action</center></th>
	    </tr>
	</thead>
 	<tbody>
    <?php foreach($items as $item): ?>
      <tr>
        <td><?= $item['item_id']; ?></td>
        <td><?= $item['item_name']; ?></td>
        <td><?= $item['item_prtyno']; ?></td>
        <td><?= $item['item_modno']; ?></td>
        <td><?= $item['item_quantity']; ?></td>
        <td><?= $item['item_rcvdate']; ?></td>
        <td></td>
        <td></td>
      </tr>
    <?php endforeach; ?>
 	</tbody>
</table>



<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-inventory').DataTable();
	});
</script>




