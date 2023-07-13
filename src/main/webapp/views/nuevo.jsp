<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>

	<div class="container">
		<h1 class="text-center" >Añadir Socio</h1>

		<div class="row" >
			<form class="p-5" action="MemberController?action=insert" method="post">
			
			<div class="mb-3">
				<label for="name" class="form-label" >Nombre</label>
				<input type="text" class="form-control" id="name" name="name" >
			</div>
			
			<div class="mb-3">
				<label for="lastName" class="form-label" >Apellido</label>
				<input type="text" class="form-control" id="lastName" name="lastName" >
			</div>
			
			<div class="mb-3">
				<label for="nationalId" class="form-label" >DNI:</label>
				<input type="text" class="form-control" id="nationalId" name="nationalId" >
			</div>
			
			<div class="mb-3">
				<label for="email" class="form-label" >Mail:</label>
				<input type="text" class="form-control" id="email" name="email" >
			</div>			
			
			
			<button type="submit" class="btn btn-primary">Insertar</button>
			
			
			
			</form>
		</div>	
	
	
	</div>

</body>
</html>