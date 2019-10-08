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
    
    //Takes the contentID from the previous form and stores it, also prepares some data from the table to use later.
    $id=$_REQUEST['contentID'];
    $query = "SELECT * FROM t_webcontent WHERE webcontentID ='".$id."'";
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
         
        
         
             
        <p><a href="content_view.php">Back</a>         
        <h1>Update Content</h1>
        <?php
        
            // code for updating the database by using the data gathered from the form.       
            $status = "";
            if(isset($_POST['new']) && $_POST['new']==1)
            {
                $id=$_REQUEST['id'];
                $where =$_REQUEST['where'];
                $content =$_REQUEST['content'];
            
                $update="UPDATE t_webcontent SET webcontentWhere='".$where."', webcontentContent='".$content."' WHERE webcontentID='".$id."'";
                
                mysqli_query($con, $update) or die(mysqli_error());
                $status = "Record Updated Successfully. </br></br>
                <a href='content_view.php'>View Updated Record</a>";                
                echo '<p style="color:#FF0000;">'.$status.'</p>';
            }
            else 
            {
        ?>   
                    <form name="form" method="post" action=""> 
                        <input type="hidden" name="new" value="1" />
                        <input name="id" type="hidden" value="<?php echo $row['webcontentID'];?>" />
                        <p><input type="hidden" name="where" placeholder="Where" required value="<?php echo $row['webcontentWhere'];?>" </p>
                        <p><textarea name="content" placeholder="Content" required rows = 30 cols = 100> <?php echo $row['webcontentContent'];?></textarea> </p>
                        <p><input name="submit" type="submit" value="Update" /></p>
                    </form>
        <?php 
            } 
        ?>
        

            
</body>
</html>