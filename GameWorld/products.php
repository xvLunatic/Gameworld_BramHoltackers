<?php include 'inc/Connection.php';

if (isset($_GET['categoryID'])) {
    $categoryID = $_GET['categoryID'];
    $sql ="SELECT * FROM games Where categoryID='".$categoryID."'";
} else {
    $sql ="SELECT * FROM games";
}

if (isset($_GET['categoryID'])) {
    if ($categoryID == 1) {
        $Bordercolor = "Playstation";
    } elseif ($categoryID == 2) {
        $Bordercolor = "Xbox";
    } elseif ($categoryID == 3) {
        $Bordercolor = "PC";
    }
} else {
    $Bordercolor = "Empty";
}

?>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="GameWorld">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>GameWorld</title>
</head>

<body id="<?php echo $Bordercolor ?>">
  <?php include 'inc/Header.php'; ?>
  <?php include 'inc/Menu.php'; ?>
<div  id="main-container">

  <div id="consoleheader">
    <div class="consoleheadertext">
			<?php

if (isset($_GET['categoryID'])) {
    if ($categoryID == 1) {
        echo "Playstation";
    } elseif ($categoryID == 2) {
        echo "Xbox";
    } elseif ($categoryID == 3) {
        echo "PC";
    }
} else {
    echo "All Games";
}
        ?>

  </div>

</div>

<div class="products">
	<?php
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
			<div class="product">
			<div class="gameimage">
				<img class="gameimage "src= <?php echo $row['gameImage']; ?> >

			  <div class="productname">

			    <?php echo $row['gameTitle']; ?>
			  </div>
			  <div class="price">
			    <?php echo $row['gamePrice']; ?>
			</div>

			<div class="order">
				<a href="Checkout.php">
			  order
			</a>
			</div>
			</div>
			</div>
		<?php
            }
        } else {
            echo "0 results";
        }
         ?>



</div>

</div>
</div>
</div>
<?php include 'inc/Footer.php'; ?>
</body>
</html>
