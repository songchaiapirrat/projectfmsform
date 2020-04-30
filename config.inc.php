<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- หน้านี้ใช้ติดต่อฐานข้อมูล -->
<?PHP

$serverName = "localhost";
$userName = "root";
$userPassword = "ZD1W6Q9JdKVa";
$dbName = "fms_form"; 

date_default_timezone_set('Asia/Bangkok');
$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

mysqli_set_charset($conn,"utf8");
if ($conn->connect_errno) {
echo $conn->connect_error;
exit;
} else {

}
?>

<?php

// $conn = mysqli_connect("localhost","root","ZD1W6Q9JdKVa","fms_form");
// $conn->set_charset("utf8");
// if (!$conn) {
//     die("Filed to connect database" . mysqli_error($conn));
// }

?>




<!-- XAMPP
    
$serverName = "localhost";
$userName = "root";
$userPassword = "";
$dbName = "630208_db_assess"; --!>