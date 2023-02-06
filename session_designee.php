<?php 
include('connect.php');
session_start();

if (!isset($_SESSION['id']) || ($_SESSION['id'] == '')){ ?>
	<script>
		window.location = 'index.php';
	</script>
	<?php
}

$session_id = $_SESSION['id'];

$sql = "SELECT * FROM designee WHERE designee_id = $session_id ";
$query = $conn->prepare($sql);
$query->execute();
$row = $query->fetch();

$name_designee = $row['designee_name'];
?>