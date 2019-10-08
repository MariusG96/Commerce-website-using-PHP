<html>
<head>
    <?php include('functions/homefunc.php'); ?>
    <title>The Farm</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel ="stylesheet" type="text/css" href="frontstyle.css" />
</head>
<body>
    <?php include('functions/navlink.php'); ?>
    
    <?php
        // brings the content out of the database and displays it on the webpage
        $sql = "SELECT webcontentID, webcontentWhere, webcontentContent FROM t_webcontent WHERE webcontentWhere = 'contactMain'";
        $result = $con->query($sql);
        
        while($row = $result->fetch_assoc())
        { 
            echo $row["webcontentContent"];
        }	    
    ?>
    
</body>
</html>