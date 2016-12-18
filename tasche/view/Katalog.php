<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <?php
	include 'head.php'
  ?>
  <body>
  <?php
	function getCount($query){
		$i = 0;
		while($query->fetch()){
			$i++;
		}
		return $i;
	}
  	$bdd = new PDO('mysql:host=localhost;dbname=taschen', 'root', '');
	include 'head.php';
	$bdd = new PDO('mysql:host=localhost;dbname=taschen', 'root', '');
	include 'nav_bar.php';
	try{
	$query = $bdd->query('SELECT * FROM tasche WHERE IDTasche = \''.$_GET['id'].'\'');
	$querymarke = $bdd->query('SELECT * FROM marke m, tasche t WHERE m.IDMarke = t.IDMarke AND t.IDTasche = '.$_GET['id']);
	$querydesign = $bdd->query('SELECT * FROM design d, tasche t WHERE d.IDDesign = t.IDDesign AND t.IDTasche = '.$_GET['id']);
	$tasche = $query->fetch();
	$marke = $querymarke->fetch();
	$design = $querydesign->fetch();
?>
 <div class="container" style="margin-top:70px;" >
 <div class="row">
		<img src="<?php echo $tasche['PATH'] ?>" class="col-lg-6" id="product"/>
			<p class="col-lg-6" id="kurzbeschreibung">
			<div class="row"><br>
				<fieldset><legend>Tasche</legend>
						Name <span class="label label-success"><?php echo $tasche['NameTasche']; ?></span><br>
						Preis <span class="label label-info"><?php echo $tasche['Preis']; ?></span><br>
						Bezeichnung <span class="label label-default"><?php echo $tasche['NameTasche']; ?></span><br>
						Mengue <span class="label label-danger"><?php echo $tasche['Menge']; ?></span><br>
					</fieldset>
					<fieldset><legend>Marke</legend>
					<b><?php echo $marke['NameMarke']; ?></b><br>
						<?php echo $marke['BezeichnungMarke']; ?><br>
					</fieldset>
						<fieldset><legend>Design</legend>
					<b><?php echo $design['NameDesign']; ?></b><br>
						<?php echo $design['BezeichnungDesign']; ?><br>
					</fieldset>
				</div>
			</p>
	</div>
</div>
	
<?php	
	

}catch(Exception $e){
	die('Fehler:' .$e->getMessage());
}
?>
    <div class="container" id="body">
      <div>
        <footer class="navbar navbar-default navbar-fixed-bottom">
          <div class="container">
            <ul class="nav navbar-nav">
              <li><a href="#">Projekt Datenbank</a></li>
            </ul>
          </div>
        </footer>
      </div>
    </div>
	
  </body>
</html>


