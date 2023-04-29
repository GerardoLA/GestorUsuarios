<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" >
 </head>
<body>

<c:if test = "${aviso == 'error'}">
         <div class='alert alert-danger' role='alert'>ROL o Password no valida!</div>
      </c:if>

<div class="container">
  <div class="row">
    <div class="col">
		<form action="Login" method="POST">   
		  <div class="form-group">
		    <label for="rol">ROL:</label>
		    <input type="text" class="form-control" id="rol" name="rol" aria-describedby="emailHelp" placeholder="ROL" required="required">
		  </div>
		  <div class="form-group">
		    <label for="password">Contraseña:</label>
		    <input type="password" name="password" class="form-control" id="password" placeholder="Contraseña" required="required">
		  </div>
		  <button type="submit" class="btn btn-primary">Iniciar Sesion</button>
		</form>
 </div>
  </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" ></script>
  	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"></script>
  </body>
</html>