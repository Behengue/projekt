<?php
	session_start();
	
	$id = $_GET['id'];
	$bdd = new PDO('mysql:host=localhost;dbname=taschen', 'root', '');
	$query = $bdd->query('SELECT * FROM kunde WHERE IDKunde = \''.$id.'\'');
	$user = $query->fetch();
	$_SESSION['id'] = $id;
	$_SESSION['username'] = $user['Username'];
	$_SESSION['email'] = $user['Email'];
	$_SESSION['namekunde'] = $user['Namekunde'];
	$_SESSION['stadt'] = $user['Stadt'];
	$_SESSION['plz'] = $user['PLZ'];
	$_SESSION['strasse'] = $user['Strasse'];
	$_SESSION['vorname'] = $user['Vorname'];
	header('Location: ../view/start_seite.php');
?>