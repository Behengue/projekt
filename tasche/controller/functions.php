<?php

function warenEntfernen($entf){
	$i = 0;
	foreach ($_SESSION["waren"] as $waren) {
		if(intval($waren['id']) != intval($entf)){
			$i++;
		}else{
			break;
		}
	}
	unset($_SESSION["waren"][$i]);
	//Update des Warenkorbs
	$i = 0;
	$tmp_waren = array();
	foreach ($_SESSION["waren"] as $waren) {
		$tmp_waren[$i] = $waren;
		$i++;
	}
	$_SESSION["waren"] = $tmp_waren;
}
 
function lengthWarenKorb($warenkorb){
	$i = 0;
	foreach ($warenkorb as $waren)
		$i++;
	return $i;
}
?>