<?php
    // We need to use sessions, so you should always start sessions using the below code.
    session_start();
    // If the user is not logged in redirect to the login page...
    if (!isset($_SESSION['loggedin'])) 
    {
	   header('Location: admin_login.php');
	   exit();
    }
?>
<html>
	<head>
		<meta charset="utf-8">
		<title>The Farm</title>
		<link href="adminstylesheet.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1>The Farm Admin Page</h1>
				<a href="admin_logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Control Panel</h2>
			<p><a href="content_view.php">Edit Website Content.</p>
      <p><a href="product_view.php">Add/Edit/Delete Products.</p>
      <p><a href="land_view.php">View Land Usage</p>
            
		</div>
	</body>
</html>