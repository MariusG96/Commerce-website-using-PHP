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
    
    //Retrieves the data from the form and places the data in appropriate places, and puts them in an SQL statement that adds a record to the database.
    $status = "";
    if(isset($_POST['new']) && $_POST['new']==1)
    {
        $name =$_REQUEST['name'];
        $type =$_REQUEST['type'];
        $price =$_REQUEST['price'];
        $image =$_REQUEST['image'];
            
        $ins_query="INSERT INTO t_products(name, type, price, image, status) VALUES ('$name','$type','$price','$image', '1')";
                
        mysqli_query($con, $ins_query) or die(mysqli_error());
        $status = "New Product Added Successfully. </br></br> <a href='product_view.php'>View Inserted Product</a>";                
    }   
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
    <h1>Add Record</h1>
                
    <form name="form" method="post" action=""> 
        <input type="hidden" name="new" value="1" />
        <p><input type="text" name="name" placeholder="Name" required /></p>
        <p><input type="text" name="type" placeholder="Type" required /></p>
        <p><input type="text" name="price" placeholder="Price" required /></p>
        <p><input type="text" name="image" placeholder="Image" required /></p>
        <p><input name="submit" type="submit" value="Add" /></p>
    </form>            
</body>
</html>