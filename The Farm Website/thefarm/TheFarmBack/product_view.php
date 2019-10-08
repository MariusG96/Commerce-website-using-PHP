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



?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>The Farm</title>
    <link rel="stylesheet" href="adminstylesheet.css" />
</head>

<body>
    <div class="form">
        <p><a href="admin_home.php">Home</a>
        <p><a href="product_add.php">Add Product</a> 
        <h2>View Products</h2>
        <table width="100%" border="1" style="border-collapse:collapse;">
            <thead>
                <tr>
                    <th><strong>ID</strong></th>
                    <th><strong>Name</strong></th>
                    <th><strong>Type</strong></th>
                    <th><strong>Price</strong></th>
                    <th><strong>Image</strong></th>
                    <th><strong>Edit</strong></th>
                    <th><strong>Delete</strong></th>
                    
                    
                </tr>
            </thead>
            
            <tbody>
                <!-- Displays all the products in a table. -->
                <?php
                    $sql="SELECT ID, name, type, price, image FROM t_products ORDER BY ID asc;";                            
                    $result = $con->query($sql);
                    while($row = $result->fetch_assoc()) 
                    {  
                 ?>
                    <tr>
                        <td><?php echo $row["ID"]; ?></td>
                        <td><?php echo $row["name"]; ?></td>
                        <td><?php echo $row["type"]; ?></td>
                        <td><?php echo $row["price"]; ?></td>
                        <td><?php echo $row["image"]; ?></td>
                        <td><a href="product_edit.php?ID=<?php echo $row["ID"]; ?>">Edit</a></td>
                        <td><a href="product_delete.php?ID=<?php echo $row["ID"]; ?>">Delete</a></td>
                        
                    </tr>                    
                <?php
                    }
                ?> 
            </tbody>
        </table>
    </div>
</body>
</html>