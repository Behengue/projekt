<?php
	session_start();
	
	$idt = $_GET['idt'];
	$bdd = new PDO('mysql:host=localhost;dbname=taschen', 'root', '');
	$query = $bdd->query('SELECT menge FROM tasche WHERE IDtasche = \''.$idt.'\'');
	$tasche = $query->fetch();
	$_SESSION['idt'] = $idt;
	$_SESSION['menge'] = $menge['Menge'];
	$_SESSION['next'] = $next['Next'];
	
	if ($menge < "1") {
    header('Location: ../view/start_seite.php');
} else {
    header('Location: ../view/sofortkaufenController.php');
}
	
?>