<?php
	session_start();
 
 $entf = $_GET['idt'];
 $i = 0;
 foreach ($_SESSION["waren"] as $waren) {
	 if(intval($waren['id']) != intval($entf)){
		 $i++;
	 }else{
		 break;
	 }
 }
 
	echo intval($i);
 unset($_SESSION["waren"][$i]);
 
 //Update des Warenkorbs
 $i = 0;
 $tmp_waren = array();
 foreach ($_SESSION["waren"] as $waren) {
	 $tmp_waren[$i] = $waren;
	 $i++;
 }
 $_SESSION["waren"] = $tmp_waren;
 //var_dump($_SESSION["waren"]);
 header('Location: ../view/warenkorb.php');

?>		