<%@page import="models.MemberDao"%>
<%@page import="models.Member"%>
<%@page import="java.util.List"%>  


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<h1 class="text-center" >Modificar Socio</h1>

		<div class="row" >
			<%
			String id=request.getParameter("id");
			int mid;
			mid=Integer.parseInt(id);
			Member resultado=null;
			MemberDao socio=new MemberDao();
			resultado=socio.getMember(mid);
			
			%>
			
		<form class="p-5" action="MemberController?action=actualizar" method="post">
			
			<div class="mb-3">				
				<input type="hidden"  class="form-control" id="id" name="id"  value=<%=resultado.getMemberId()%> >
			</div>
			
			
			<div class="mb-3">
				<label for="name" class="form-label" >Nombre</label>
				<input type="text" class="form-control" id="name" name="name"  value=<%=resultado.getName()%> >
			</div>
			
			<div class="mb-3">
				<label for="lastName" class="form-label" >Apellido</label>
				<input type="text" class="form-control" id="lastName" name="lastName" value=<%=resultado.getLastName()%> >
			</div>
			
			<div class="mb-3">
				<label for="nationalId" class="form-label" >DNI</label>
				<input type="number" class="form-control" id="nationalId" name="nationalId" value=<%=resultado.getNationalId()%> >
			</div>
			
			<div class="mb-3">
				<label for="email" class="form-label" >mail</label>
				<input type="text" class="form-control" id="email" name="email" value=<%=resultado.getEmail()%> >
			</div>
			
			<button type="submit" class="btn btn-primary">Modificar</button>
			
			
			
			</form>
		
		
		
		
		</div>	
	
	
	</div>

</body>
</html>