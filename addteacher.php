<?php
include 'connect.php';

if (isset($_POST['add'])){
	$facultyId = $_POST['facultyId'];
	$firstname = $_POST['firstname'];
	$middlename = $_POST['middlename'];
	$lastname = $_POST['lastname'];
	$contactnumber = $_POST['contactnumber'];
	$email = $_POST['email'];
	$designation = $_POST['designation'];
	$department = $_POST['department'];
	

	$add = $conn->prepare("INSERT INTO faculty (faculty_id, faculty_Fname, faculty_Mname, faculty_Lname, Contact_num, Email, Designation, Department)
		VALUES (?,?,?,?,?,?,?,?) ");
	$add->execute(array($facultyId,$firstname,$middlename,$lastname,$contactnumber,$email,$designation,$department));
	
	$a = $conn->lastInsertId();
	$add1 = $conn->prepare("INSERT INTO clearance (id) VALUES (?)");
	$add1->execute(array($a));
	
}
?>