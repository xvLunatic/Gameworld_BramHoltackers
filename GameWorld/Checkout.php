<?php include 'inc/Connection.php';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="GameWorld">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Checkout</title>
</head>
<body>
  <?php include 'inc/Header.php';?>
  <?php include 'inc/Menu.php';?>
	<div  id="main-container">
					<h1>Checkout</h1>
		<div class="banner">

			<table>
				<tr>
					<th class=image>Image</th>
					<th class=game>Game</th>
					<th class=desc>Description</th>
					<th class=Total>Total</th>
				</tr>
				<tr>
			<td> <img src = "images/FIFA18.jpg" width=100></td>
			<td> FIFA 18 </td>
			<td> In EA SPORTS FIFA 18, verzorgd door de Frostbite-engine, vervaagt de grens tussen de virtuele en echte wereld. Spelers en teams komen tot leven. Ervaar de ultieme voetbalsfeer.</td>
			<td> $59,99</td>
		</tr>
		<tr>
			<td> <img src = "images/QB.jpg" width=100></td>
			<td> Quantum Break </td>
			<td>In Quantum Break beschik je over unieke krachten en manipuleer je de tijd om je vijanden uit te schakelen en te slim af te zijn.</td>
			<td> $59,99</td>
		</tr>
		<tr>
			<td> <img src = "images/Speedrunners.jpg" width=100></td>
			<td> Speedrunners </td>
			<td> In a city filled with superheroes, getting to crimes becomes a competition on its own. Fortunately there are enough rockets, bombs, grappling hooks, spikes, and other goodies lying around -- to make the competition fun and fast. Welcome to SpeedRunners. </td>
			<td> $14,99</td>
		</tr>
		</table>
		<a href="index.php">
		<nav id="pay">Pay Now!</nav>
	</a>
		<h2>Total: $134,97</h2>
		</div>


	</div>
  <?php include 'inc/Footer.php';?>
  </body>
  </html>
