      <div class="container" id="contain-body">
        <div class="row">
          <div class="col-lg-3" id="nav">
              <h3>Taschen</h3>
              <div class="list-group">
                <a href="#" class="list-group-item">Louis Vuitton</a>
                <a href="#" class="list-group-item">Gucci</a>
                <a href="#" class="list-group-item">Addidas</a>
              </div>
          </div>
          <div class="col-lg-9" id="section">
            <h3><legend>Taschen</legend></h3>
			<?php
			$query = $bdd->query('SELECT * FROM Tasche');
			try{
			$i = 0;
			$marker = 0;
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
								<img src="<?php echo $donnees['PATH'] ?>" class="col-lg-6" id="product"/>
								<p class="col-lg-6" id="kurzbeschreibung">
									<b><?php echo $marke['NameMarke'] ?></b><br>
									<?php echo $donnees['NameTasche'] ?><br>
									<?php echo $donnees['Preis'] ?><br>
									<?php echo $donnees['NameTasche'] ?><br>
								</p>
							</div>
					<?php if($i % 2 == 0){?></div><?php
				}
				$i++;
				//echo $donnees['Name'];
				}
			}catch(Exception $e){
				die('Fehler:' .$e->getMessage());
			}
			?>
              
	     </div>
          </div>
        </div>