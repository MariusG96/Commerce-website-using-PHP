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
    
    // Requests state from the form in the previous web page.
    $state=$_REQUEST['landStateIn'];
    $id=$_REQUEST['landID'];
?>
<!DOCTYPE html>
<html>
    
<head>
    <meta charset="utf-8">
    <title>The Farm</title>
    
    <link rel="stylesheet" href="adminstylesheet.css" />
</head>
        
<body>             
    <p><a href="land_view.php">Back</a>         
    <h1>Details</h1>
  
    <?php
    
        // If the current land type is Grass, this code prompts a "yes" or "no" question, if selected "yes" the code changes the type to Cultivated, if selected "no" it goes back to the previous page.       
        if($state == "Grass")
        { 
        ?>            
            <form name="form" method="post" action=""> 
                <p><input type="radio" name="culti" value="Yes">Yes</p>
                <p><input type="radio" name="culti" value="No">No</p>
                <p><input name="submit" type="submit" value="Update"/></p>
            </form>
        <?php
            if (isset($_POST['culti'])) {
                $answer = $_POST['culti'];
            } else {
                $answer = "default";
            }
            if ($answer == "Yes")
            {
                $update="UPDATE t_land SET landStateIn='Cultivated' WHERE landID='".$id."';";
                mysqli_query($con, $update) or die(mysqli_error());
                
                $delete="DELETE FROM t_grassland WHERE landid='".$id."';";
                mysqli_query($con, $delete) or die(mysqli_error());
                header('Location:land_view.php');
                
                
            }
            else if ($answer == "No")
            {
                header('Location:land_view.php');
            }
            else
            {
                echo "";
            }  
        
               
        } 
        else if ($state == "Growing")
        {
        // If the current land type is Growing, this code prompts a "yes" or "no" question, if selected "yes" the code changes the type to Grass, if selected "no" it goes back to the previous page.
        ?>            
            <form name="form" method="post" action=""> 
                <p><input type="radio" name="grass" value="Yes">Yes</p>
                <p><input type="radio" name="grass" value="No">No</p>
                <p><input name="submit" type="submit" value="Update"/></p>
            </form>
        <?php
            if (isset($_POST['grass'])) {
                $answer = $_POST['grass'];
            } else 
            {
                $answer = "default";
            }
            if ($answer == "Yes")
            {
                $update="UPDATE t_land SET landStateIn='Grass' WHERE landID='".$id."';";
                mysqli_query($con, $update) or die(mysqli_error());
                header('Location:land_view.php');
                
                $delete="DELETE FROM t_plantland WHERE landid='".$id."';";
                mysqli_query($con, $delete) or die(mysqli_error());
                header('Location:land_view.php');
            }
            else if ($answer == "No")
            {
                header('Location:land_view.php');
            }
            else
            {
                echo "";
            }
            
        
        }
        else
        {
        // If the current land type is Cultivated, this code prompts a "yes" or "no" question, if selected "yes" the code changes the type to Growing, if selected "no" it goes back to the previous page.
        ?>            
            <form name="form" method="post" action="">
                <input type=hidden name="grow" value="grow"> 
                <p><input type="radio" name="grow" value="Yes">Yes</p>
                <p><input type="radio" name="grow" value="No">No</p>
                <p><input name="submit" type="submit" value="Update"/></p>
            </form>
        <?php
            if (isset($_POST['grow'])) 
            {
                $answer = $_POST['grow'];
            } 
            else 
            {
                $answer = "default";
            }
            if ($answer == "Yes")
            {
                $update="UPDATE t_land SET landStateIn='Growing' WHERE landID='".$id."';";
                mysqli_query($con, $update) or die(mysqli_error());
                header('Location:land_view.php');
            }
            else if ($answer == "No")
            {
                header('Location:land_view.php');
            }
            else
            {
                echo "";
            }
            
        }    
        ?>            
</body>
</html>