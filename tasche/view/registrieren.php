<div class="container">
	<form action="../controller/registrierenController.php" method="POST">
		<fieldset><legend>Kunde</legend>
			<div class="form-group">
				<label for="name">Name:</label>
				<input type="text" name="name" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="vorname">Vorname:</label>
				<input type="text" name="vorname" class="form-control"/>
			</div>
		</fieldset>
		<fieldset><legend>Adresse</legend>
			<div class="form-group">
				<label for="land">Straße und Nummer</label>
				<input type="text" name="strasse" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="stadt">Stadt</label>
				<input type="text" name="stadt" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="plz">Plz</label>
				<input type="text" name="plz" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="email">Email address:</label>
				<input type="email" name="email" class="form-control"/>
			</div>
		</fieldset>
		<fieldset><legend>Verbindngsinformationen</legend>
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" name="username" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label>
				<input type="password" name="pwd" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="repwd">Password erneut angeben:</label>
				<input type="password" name="repwd" class="form-control"/>
			</div>
		</fieldset>
		<button type="submit" class="btn btn-default">Registrieren</button>
		<button type="reset" class="btn btn-default">Abbrechen</button>
	</form> 
</div>