<?php 
    if (!isset($_SESSION['admin_id']) or $_SESSION['admin_id'] == NULL ) {
        echo '<script> alert("Please Login")</script>';
        header('Refresh:0; url = index.php');
        exit();
    }
?>