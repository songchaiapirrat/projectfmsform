<?php include"header.php";?>
      
<!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  
  
<?PHP 
if(@$_GET['subject_id']!=""){
include "config.inc.php"; 
$sql_t="SELECT * FROM tbl_subject where subject_id=$_GET[subject_id] "; 
$query_t = $conn->query($sql_t); 
$result_t = $query_t->fetch_assoc();
}


if(@$_GET['del']!=""){

include "config.inc.php"; 
$sql_del= "DELETE FROM tbl_subject WHERE tbl_subject.subject_id = $_GET[del]";
$conn->query($sql_del); 

            echo "<script type='text/javascript'>";
			//echo  "alert('[บันทึกข้อมูสำเร็จ]');";
		    echo "window.location='create_form.php';";
			echo "</script>";
}
?>
  
        <!-- Begin Page Content -->
        <div class="" style="font-family: 'Kanit', sans-serif;">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Create Form</h1>
          <p class="mb-4">สร้างรายการประเมิน</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">รายการประเมิน</h6>
            </div>
			
			
			
			 <div class="card-body">
<form role="form" method="post" action="create_form_process.php" enctype="multipart/form-data"><div class="form-group">
 
  <input name="subject_id" type="hidden" value="<?=@$result_t['subject_id'];?>" />
  
   <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" name="subject_name" class="form-control form-control-user" id="subject_name" value="<?=@$result_t['subject_name'];?>" placeholder="ชื่อฟอร์มการประเมิน" required>
                  </div>
			  
				  
                                   
                                 
<button type="submit" class="btn btn-success">Create Form</button> &nbsp;
<button type="reset" class="btn btn-danger">Cancel</button>
 
 </div>
</form>
			 </div>
			 
			 
			 
			 
			 
			 
			
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th width="16%">ลำดับ</th>
                      <th width="37%">ชื่อฟอร์ม</th>
                      <th width="13%"><div align="center">ตัวอย่าง</div></th>
					  <th width="14%"><div align="center">หัวข้อ</div></th>
                      <th width="20%"><div align="center">จัดการ</div></th>
                    </tr>
                  </thead>
                
                  <tbody>
<?PHP 
include "config.inc.php"; 
$sql_subject="SELECT * FROM tbl_subject  ORDER BY tbl_subject.subject_id ASC"; 
$query_subject = $conn->query($sql_subject); 
$i=0;
while($result_subject = $query_subject->fetch_assoc()) 
{ $i++;
?>				    <tr>
                      <td><?php echo  $i;?></td>
                      <td><?php echo $result_subject['subject_name'];?></td>
<td><div align="center"><a href="example.php?subject_id=<?=$result_subject['subject_id'];?>" class="btn btn-success">ตัวอย่าง</a> </div></td>


<td><div align="center"><a href="topic.php?subject_id=<?=$result_subject['subject_id'];?>" class="btn btn-primary">หัวข้อ</a> </div></td>





                      <td>
<div align="center"><a href="?subject_id=<?=$result_subject['subject_id'];?>" class="btn btn-warning">แก้ไข</a>
<a href="?del=<?=$result_subject['subject_id'];?>" class="btn btn-danger" onClick="return confirm('กรุณายืนยนัการลบอีกครั้ง !!!')" >ลบ</a> </div>
					</td>
                  
                    </tr>
<?php }?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <?php include"footer.php";?>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

</body>

</html>
