<?php

    
    include('func_dbcon.php'); 
    
   
    // We need to use sessions, so you should always start sessions using the below code.
    session_start();
    // If the user is not logged in redirect to the login page...
    if (!isset($_SESSION['loggedin'])) 
    {
	   header('Location: admin_login.php');
	   exit();
    }
    
    //Requests ID from the previous form and immediately deletes the record.
    $id=$_REQUEST['ID'];
    $query = "DELETE FROM t_products WHERE ID=$id";
    $result = mysqli_query($con, $query) or die ( mysqli_error());
    header("Location: product_view.php");
    
    
?>