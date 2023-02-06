

<?php include 'includes/asession.php'; ?>
<?php include 'includes/navbar.php'; ?>
<?php include 'includes/asidebar.php'; ?>
<?php include 'includes/slugify.php'; ?>
<?php include 'includes/header.php'; ?>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h4 class="m-0">Manage Announcement</h4>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Announcement</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
      <?php
        if(isset($_SESSION['error'])){
          echo "
            <div class='alert alert-danger alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-warning'></i> Error!</h4>
              ".$_SESSION['error']."
            </div>
          ";  
          unset($_SESSION['error']);
        }
        if(isset($_SESSION['success'])){
          echo "
            <div class='alert alert-success alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-check'></i> Success!</h4>
              ".$_SESSION['success']."
            </div>
          ";
          unset($_SESSION['success']);
        }
      ?>
        <div class="card-header">   
        <a href="#addnew" data-toggle="modal" class="btn-info btn-sm btn-flat float-left" data-id=".$_POST['submit']."><i class="fa fa-plus"></i> New</a>       
      </div>
      <br>
      <div class="row">
      <?php
          $sql = "SELECT * FROM announcement";
          $query = $conn->query($sql);
          while($row = $query->fetch_assoc()){                        
        ?> 
        <div class="card text-white col-lg-6 mt-4">
        <img src="<?php echo (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/profile.jpg'; ?>"  class="card-img" alt="...">
        <div class="card-img-overlay">
          <h5 class="card-title" style="color:black; font-size: 100px;"><?php echo $row['title']; ?></h5>
          <p class="card-text"><?php echo $row['message']; ?></p>
          <button class='btn-danger btn-sm delete btn-flat float-right' style="margin-top: 100px; margin-left: 10px;" data-id=<?php echo $row['id']; ?> style="background-color:white; border: none; color:red; margin-bottom:10px;"><i class='fa fa-trash'></i> <b>Delete</b></button>
          <button class='btn-success btn-sm edit btn-flat float-right' style="margin-top: 100px;" data-id=<?php echo $row['id']; ?> style="background-color:white; border: none; color:green; margin-bottom:10px;"><i class='fa fa-edit'></i> <b>Update</b></button>
        </div>                    
      </div>
      <?php } ?>
        </div>
      </div>
    </section>   
  </div>
  </div>
    
  <?php include 'includes/footer.php'; ?>
  <?php include 'includes/announcement_modal.php'; ?>
  <?php include 'includes/scripts.php'; ?>
</div>
<script>
$(function(){
  $(document).on('click', '.edit', function(e){
    e.preventDefault();
    $('#edit').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  $(document).on('click', '.delete', function(e){
    e.preventDefault();
    $('#delete').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });
});

function getRow(id){
  $.ajax({
    type: 'POST',
    url: 'announcement_row.php',
    data: {id:id},
    dataType: 'json',
    success: function(response){
      $('.id').val(response.id);
      $('#edit_title').val(response.title);
      $('#edit_message').val(response.message);
      $('.title').html(response.title);
    }
  });
}


</script>





</body>
</html>
