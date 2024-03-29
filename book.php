<?php  
session_start(); 
$page = 'book';
$_SESSION["id"];?> 
<?php 
include "header.php";
include  "fucntion_query.php";
?>
<body>

	<!-- Navigation -->
	<?php include "navbar.php"; ?>
	<!-- Page Content -->



		<div class="jumbotron">

			<div class="row">
				<div class="col col-lg-3">
				</div>
				<div class="col-lg-6 ">
					<h2 class="display-5 text-center">เพิ่มอุปกรณ์</h2>
					<br>
					<form class="container" action="save_book.php" method="post" id="needs-validation" novalidate enctype="multipart/form-data">
						<div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom03">รหัสอุปกรณ์ <span style="color: red"> *</span></label>
								<input type="text" class="form-control" id="validationCustom03" placeholder="รหัสอุปกรณ์" name="book_code" required>
								<div class="invalid-feedback">
									กรุณาระบุรหัสอุปกรณ์.
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom04">ชื่ออุปกรณ์<span style="color: red"> *</span></label>
								<input type="text" class="form-control" id="validationCustom04" placeholder="ชื่ออุปกรณ์" name="book_name" required>
								<div class="invalid-feedback">
									กรุณาระบุชื่ออุปกรณ์.
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom05">รายละเอียด<span style="color: red"> *</span></label>
								<textarea name="book_user" class="form-control" id="validationCustom05" placeholder="รายละเอียด" required rows="4"></textarea>
								<div class="invalid-feedback">
									กรุณาระบุรายละเอียด
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom06">อื่นๆ เช่น ผู้ดูแล/ยืมกับใคร<span style="color: red"> *</span></label>
								<input type="text" class="form-control" id="validationCustom06" placeholder="กรุณาระบุ" name="book_techer" required>
								<div class="invalid-feedback">
									กรุณาระบุ
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom06">ราคาเช่าสินค้า<span style="color: red"> *</span></label>
								<input type="text" class="form-control" id="validationCustom06" placeholder="กรุณาระบุ" name="book_pirce" required>
								<div class="invalid-feedback">
									กรุณาระบุราคา
								</div>
							</div>
						</div>

						<!-- <div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom07">เลือกปี<span style="color: red"> *</span></label>
								<select class="custom-select" name="book_year" id="validationCustom07" required>
									<option value="" selected>เลือกปี </option>
									<?php for($i = 2; $i > 0; $i--){ ?>
									<option value="<?=date('Y')+544-$i?>"><?=date('Y')+544-$i?></option>
									<?php } ?>
								</select>
								<div class="invalid-feedback">
									กรุณาเลือกปี.
								</div>
							</div>
						</div>	 -->

						<div class="row">
							<div class="col-md-12 mb-3">
								<label for="validationCustom06">แนบรูปภาพ</label>
								<label class="custom-file">
									<input type="file" id="file2" name="file_up" class="custom-file-input">
									<span class="custom-file-control"></span>
								</label>
							</div>
						</div>

						<br>
						<div class="row">
							<div class="col-md-5 mb-3">
								<button class="btn btn-primary" type="submit">บันทึก</button>
							</div>
						</div> 
					</form>

					<script>
              // Example starter JavaScript for disabling form submissions if there are invalid fields
              (function() {
              	"use strict";
              	window.addEventListener("load", function() {
              		var form = document.getElementById("needs-validation");
              		form.addEventListener("submit", function(event) {
              			if (form.checkValidity() == false) {
              				event.preventDefault();
              				event.stopPropagation();
              			}
              			form.classList.add("was-validated");
              		}, false);
              	}, false);
              }());
          </script>
      </div>
  </div>
</div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
