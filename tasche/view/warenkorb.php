<?php
session_start();
?>
<?php
	
  	$bdd = new PDO('mysql:host=localhost;dbname=taschen', 'root', '');
	
	include 'head.php';
	include 'nav_bar.php';
	
	
	
	try{

		$i = 1;
		foreach($_SESSION['waren'] as $waren){
			$i += 1;
			$query = $bdd->query('SELECT IDTasche,menge from tasche wehre IDTasche = \''.$waren['id'].'\'');
			$waren = $query->fetch();
			echo $waren;
			
		}
			
			
			
			
		
	
	
	
	
	

}catch(Exception $e){
	die('Fehler:' .$e->getMessage());
}

	
?>
 