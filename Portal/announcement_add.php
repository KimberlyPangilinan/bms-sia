<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		//print_r($_POST);
		$title = $_POST['title'];
		$message = $_POST['message'];
		$photo = $_FILES['photo']['name'];
		if(!empty($photo)){
			move_uploaded_file($_FILES['photo']['tmp_name'], 'images/'.$photo);	
		}

		$sql = "INSERT INTO announcement (title, message, photo) 
		VALUES ('$title','$message','$photo')";

		if($conn->query($sql)){
			$_SESSION['success'] = 'Announcement added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: announcement.php');
?>