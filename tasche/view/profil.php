<?php
	session_start();
	include 'head.php';
	include 'nav_bar.php';
	?>
	<body>
	<div class="container">
		<div class="row" style="margin-top:80px;">
			  <h3>profil</h3>
		 <form class="form-group" action="../controller/anmeldenSessionStart.php?=<?php echo $_GET['id'];?>" method="POST" class="form col-lg-push-3 col-lg-6">
					<label for="name">Name:</label>
					<input type="text" name="name" class="form-control" value="<?php echo $_SESSION['namekunde']?>" required/>
					<label for="name">Vorname:</label>
					<input type="text" name="name" class="form-control" value="<?php echo $_SESSION['vorname']?>" required/>
					<label for="name">Strasse:</label>
					<input type="text" name="name" class="form-control" value="<?php echo $_SESSION['strasse']?>" required/>
					<label for="name">Plz:</label>
					<input type="text" name="name" class="form-control" value="<?php echo $_SESSION['plz']?>" required/>
					<label for="name">Stadt:</label>
					<input type="text" name="name" class="form-control" value="<?php echo $_SESSION['stadt']?>" required/>
					<label for="name">IBAN:</label>
					<input type="name" name="iban" class="form-control" value="<?php echo $_SESSION['iban']?>" required/>

					
				</form>
		</div>
		</div>
			</body>