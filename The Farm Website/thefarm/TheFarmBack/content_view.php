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
        <h2>View Web Site Content</h2>
        <table width="100%" border="1" style="border-collapse:collapse;">
            <thead>
                <tr>
                    <th><strong>ID</strong></th>
                    <th><strong>Where</strong></th>
                    <th><strong>Content</strong></th>
                    <th><strong>Edit</strong></th>
                </tr>
            </thead>
            
            <tbody>
                <?php
                    //Fetches data from the database and displays it in a table.
                    $sql="SELECT webcontentID, webcontentWhere, webcontentContent FROM t_webcontent ORDER BY webcontentID asc;";                            
                    $result = $con->query($sql);
                    while($row = $result->fetch_assoc()) 
                    {  
                 ?>
                    <tr>
                        <td><?php echo $row["webcontentID"]; ?></td>
                        <td><?php echo $row["webcontentWhere"]; ?></td>
                        <td><?php echo $row["webcontentContent"]; ?></td>
                        <td><a href="content_edit.php?contentID=<?php echo $row["webcontentID"]; ?>">Edit</a></td>
                    </tr>                    
                <?php
                    }
                ?> 
            </tbody>
        </table>
    </div>
</body>
</html>