<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width, initial-scale-1"> 
<title>PHP and BOOTSTRAP CRUD TUTORIAL</title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round&display-swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/icon?family-Material+Icons" link rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity ="sha384-Vkoo8x4CGs03+Hhxv8T/Q5PaXtkktubug5T0eNV6gBiFcWPFN9Muh0f23091fjh" crossorigin="anonymous">
</head>
<body onload="print()">
<div class="container">
<center>
<h3 style="margin-top: 30px;">CHAT LIST</h3>

<hr>

</center>
<table id="ready" class="table table-striped table-bordered" style="width: 100%;">
<thead>
    <tr>
        <th>chat message ID </th>
        <th>to user id</th>
        <th>from user ID </th>
        <th>chat message</th>
        <th>time</th>
        <th>status</th>
    </tr>
</thead>
<tbody>
<?php
include 'database_connection.php';
$query = mysqli_query ($con, "SELECT * from chat_message");

while($row = mysqli_fetch_array($query)){
    ?>
    <tr>
        <td><?php echo $row['chat_message_id']?></td>
        <td><?php echo $row['to_user_id']?></td>
        <td><?php echo $row['from_user_id']?></td>
        <td><?php echo $row['chat_message']?></td>
        <td><?php echo $row['timestamp']?></td>
        <td><?php echo $row['status']?></td>
    </tr>
    <?php } ?>
    </tbody>
    </div>
    <div class ="container">
        <button type="" class="btn btn-info noprint" style="width: 100%" onclick="window.location.replace('index.php');"> CANCEL PRINTING</button>
    </div>
</body>
</html>