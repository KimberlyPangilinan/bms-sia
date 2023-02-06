<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		//print_r($_POST);
		$name = $_POST['name'];
		$email = $_POST['email'];
        $subject = $_POST['subject'];
		$message = $_POST['message'];
		

		$sql = "INSERT INTO contact (name, email, subject, message) 
		VALUES ('$name','$email','$subject','$message')";

		if($conn->query($sql)){
			$_SESSION['success'] = 'contact added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

?>