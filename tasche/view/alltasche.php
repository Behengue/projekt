<div class="container" id="contain-body">
        <div class="row">
          <div class="col-lg-3" id="nav">
              <h3>Marken</h3>
              <div class="list-group">
			  <?php
				$queryMarke = $bdd->query('SELECT IDMarke,NameMarke FROM marke');
				while($marke = $queryMarke->fetch()){
				?>
					<a href="start_seite.php?idm=<?php echo $marke['IDMarke'];?>" class="list-group-item"><?php echo $marke['NameMarke']; ?></a>
				<?php
					}
				?>
				
              </div>
          </div>
          <div class="col-lg-9" id="section">
            <h3><legend>Taschen</legend></h3>
			<?php
			if(isset($_GET['idk'])){
				if(isset($_GET['idm']))
					$query = $bdd->query('SELECT * FROM tasche t, hatkategorie hk, kategorie k WHERE t.IDMarke='.$_GET['idm'].' hk.IDTasche=t.IDTasche and hk.IDKategorie=k.IDKategorie');
				if(isset($_GET['idd']))
					$query = $bdd->query('SELECT * FROM tasche WHERE IDMarke='.$_GET['idk'].'IDMarke='.$_GET['idd']);
			}else{
				if(isset($_GET['idm']))
					$query = $bdd->query('SELECT * FROM tasche WHERE IDMarke='.$_GET['idm']);
				else{
					$query = $bdd->query('SELECT * FROM tasche');
				}
			}
			try{
			$i = 0;
			$marker = 0;
			//if($donnees != false){
				while($donnees = $query->fetch()){
					if($i % 2 == 0){?>
						<div class="row" id="row-product">
					<?php }
							$queryDesign = $bdd->query('SELECT * FROM design WHERE IDDesign='.$donnees['IDDesign']);
							$queryMarke = $bdd->query('SELECT * FROM marke WHERE IDMarke='.$donnees['IDMarke']);
							$design = $queryDesign->fetch();
							$marke = $queryMarke->fetch();
							?>
								<div class="col-lg-6">
									<a href="katalog.php?id=<?php echo $donnees['t.IDTasche']; ?>"> <img src="<?php echo $donnees['PATH'] ?>" class="col-lg-6" id="product"/>
									<p class="col-lg-6" id="kurzbeschreibung">
										<b><?php echo $marke['NameMarke']; ?></b><br>
										<?php echo $donnees['NameTasche']; ?><br>
										<?php echo $donnees['Preis']; ?><br>
										<?php echo $donnees['NameTasche']; ?><br>
									</p></a>
								</div>
						<?php if($i % 2 == 0){?></div><?php
					}
					$i++;
					//echo $donnees['Name'];
					}
			/*}else{
				echo "Keine Taschen";
			}*/
				}catch(Exception $e){
					die('Fehler:' .$e->getMessage());
				}
			?>
              
	     </div>
          </div>
        </div>