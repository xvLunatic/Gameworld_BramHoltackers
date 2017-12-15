<?php include 'inc/Connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="GameWorld">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>GameWorld</title>
</head>
<body>
  <?php include 'inc/Header.php';?>
  <?php include 'inc/Menu.php';?>
<div  id="main-container">
  <div class="banner">
		<div class="banner-text">
			<h1>
				Welcome to GameWorld
			</h1>
			<h3>
				The most complete webshop!
			</h3>
		</div>
	</div>

	<div id="consoleimages">
	<a href="products.php?categoryID=1">
  <div class="consoles ps">

    <div id="ps-text">
				Playstation
  </div>
  </div>
</a>

<a href="products.php?categoryID=2">
  <div class="consoles xbox">
    <div id="xbox-text">
				Xbox
  </div>
  </div>
</a>

<a href="products.php?categoryID=3">
  <div class="consoles pc">
    <div id="pc-text">
				PC
  </div>
</div>
</a>
</div>
<div class="clearfix">
</div>
</div>
<?php include 'inc/Footer.php';?>
</body>
</html>
