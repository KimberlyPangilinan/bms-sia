<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
        $title = $_POST['title'];
		$message = $_POST['message'];
		$photo = $_FILES['photo']['name'];
		if(!empty($photo)){
			move_uploaded_file($_FILES['photo']['tmp_name'], 'images/'.$photo);	
		}

		$sql = "SELECT * FROM announcement WHERE id = $id";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

        $sql = "UPDATE announcement SET title = '$title', message = '$message' WHERE id = '$id'";

		if($conn->query($sql)){
			$_SESSION['success'] = 'Announcement updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Fill up edit form first';
	}

	header('location: announcement.php');

?>