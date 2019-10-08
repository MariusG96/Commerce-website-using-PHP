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
    
    
    // Requests ID from the previous form, and immediatelly delets the record based on the ID
    $id=$_REQUEST['livestockID'];
    $query = "DELETE FROM t_grassland WHERE livestockID=$id";
    mysqli_query($con, $query) or die ( mysqli_error());
    header("Location: land_view.php");
    
    
?>