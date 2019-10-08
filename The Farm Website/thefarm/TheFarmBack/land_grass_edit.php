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
    
    
    //Requests livestockID from previous form and prepares the query ready to be changed.
    $livestockID=$_REQUEST['livestockID'];
    $query = "SELECT livestockID, grasslandAmount FROM t_grassland WHERE livestockID ='".$livestockID."';";
            
    $result = mysqli_query($con, $query) or die ( mysqli_error());
    $row = mysqli_fetch_assoc($result);
            
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
        <h1>Edit Land Record</h1>
                
        <?php
        
            // This code collects the data from the form and forms an SQL query using that data.        
            $status = "";
            if(isset($_POST['new']) && $_POST['new']==1)
            {
                $livestockID =$_REQUEST['livestockID'];
                $grasslandAmount =$_REQUEST['grasslandAmount'];           
                $update="UPDATE t_grassland SET grasslandAmount='".$grasslandAmount."' WHERE livestockID='".$livestockID."'";
                                
                mysqli_query($con, $update) or die(mysqli_error());
                
                $status = "Record Updated Successfully. </br></br>
                <a href='land_view.php'>View Updated Record</a>";                
                echo '<p style="color:#FF0000;">'.$status.'</p>';
            }
            else 
            {
        ?>                
                    <form name="form" method="post" action=""> 
                        <input type="hidden" name="new" value="1" />
                        <input name="livestockID" type="hidden" value="<?php echo $row['livestockID'];?>" />
                        <p><input type="text" name="grasslandAmount" placeholder="Amount" required value="<?php echo $row['grasslandAmount'];?>" /></p>
                        <p><input name="submit" type="submit" value="Update" /></p>
                    </form>
        <?php 
            }
         
        ?>
            
</body>
</html>