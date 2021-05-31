 
<?php 
session_start(); 
$page = 'index';
//unset($_SESSION["status"]);

?> 
<?php 
include "header.php";
include  "fucntion_query.php";
include 'connect_db.php'
?>

<body>

  <!-- Navigation -->
  <?php include "navbar.php"; ?>
  <!-- Page Content -->
  <div class="jumbotron jumbotron-fluid text-center">
    <div class="container">
      <h1 class="display-4">บทความสินค้า</h1>
      <p class="lead">รายละเอียดสินค้าตามด้านล่าง</p>
    </div>
  </div>

      

      <div class="container text-center" >
        <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
        <?php
        if (isset($_POST['submit-search'])) {
            $search = mysqli_real_escape_string($conn,$_POST['search']);
            $sql = "SELECT * FROM tb_gun WHERE book_name LIKE '%$search%' OR book_user LIKE '%$search%'" ;
            $result = mysqli_query($conn,$sql);
            $queryResults = mysqli_num_rows($result);
           

            echo "<div class='alert alert-warning' role='alert'>
                    'สินค้าที่พบ " .$queryResults.  " จำนวน!'
          </div>";
          if ($queryResults>0) {
            while ($row = mysqli_fetch_assoc($result)){
                echo "<div class='card'>
                <div class='card-body'>
                  <h5 class='card-title'>".$row['book_name']."</h5>
                  <h6 class='card-subtitle mb-2 text-muted'>".$row['book_user']."</h6>
                  <p class='card-text'>".$row['book_techer']."</p>
                </div>
                <a href='admin-page.php' class='btn btn-primary'>Login เพื่อทำการเช่า</a>
              </div>";


                
            }
        }
        }
    ?>
        </div>

    
</div>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/popper/popper.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
