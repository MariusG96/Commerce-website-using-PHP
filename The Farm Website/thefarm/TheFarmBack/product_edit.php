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
    
    //Rquests ID from the previous form and prepares the table to be used.
    $id=$_REQUEST['ID'];
    $query = "SELECT * FROM t_products WHERE ID ='".$id."'";
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
    <p><a href="product_view.php">Back</a>         
    <h1>Edit Product</h1>   
    <?php
    
        //Retrieves the information from a form below inserting the appropriate varibales in there using the "input name"       
        $status = "";
        if(isset($_POST['new']) && $_POST['new']==1)
        {
            $id=$_REQUEST['id'];
            $name =$_REQUEST['name'];
            $type =$_REQUEST['type'];
            $price =$_REQUEST['price'];
            $image =$_REQUEST['image'];
            
            $update="UPDATE t_products SET name='".$name."', type='".$type."', price='".$price."', image='".$image."', status='1' WHERE ID='".$id."'";
                
            mysqli_query($con, $update) or die(mysqli_error());
            $status = "Record Updated Successfully. </br></br> <a href='product_view.php'>View Updated Record</a>";                
            echo '<p style="color:#FF0000;">'.$status.'</p>';
        }
        else 
        {
    ?>                    
    <form name="form" method="post" action=""> 
        <input type="hidden" name="new" value="1" />
        <input name="id" type="hidden" value="<?php echo $row['ID'];?>" />
        <p><input type="text" name="name" placeholder="Name" required value="<?php echo $row['name'];?>" /></p>
        <p><input type="text" name="type" placeholder="Type" required value="<?php echo $row['type'];?>" /></p>
        <p><input type="text" name="price" placeholder="Price" required value="<?php echo $row['price'];?>" /></p>
        <p><input type="text" name="image" placeholder="Image" required value="<?php echo $row['image'];?>" /></p>
        <p><input name="submit" type="submit" value="Update" /></p>
    </form>
    <?php 
        } 
    ?>            
</body>
</html>