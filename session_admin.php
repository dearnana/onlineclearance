<?php 
session_start();
include('connect.php');

if (!isset($_SESSION['id']) || ($_SESSION['id'] == '')){ ?>
	<script>
		window.location = 'index.php';
	</script>
	<?php
}

$session_id = $_SESSION['id'];

$sql = "SELECT * FROM admin WHERE admin_id = $session_id ";
$query = $conn->prepare($sql);
$query->execute();
$row = $query->fetch();

$name = $row['admin_username'];
?>