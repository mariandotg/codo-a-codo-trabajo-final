<%@page import="models.MemberDao"%>
<%@page import="models.Member"%>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<h1>Listado de Alumnos</h1>

<div  class="container" >
		<div class="row" >
				<a class="btn btn-primary col-4 m-4" href="MemberController?action=nuevo">Agregar Socio</a>
				
				<table class="table table-primary" >
				<thead>
					<th>Id</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>DNI</th>				
					<th>Fecha</th>					
					<th class="text-center">Modificar</th>
					<th class="text-center">Eliminar</th>				
				</thead>
				<% 
				List<Member> resultado=null;
				MemberDao socio=new MemberDao();
				resultado=socio.getMembers();
				
				for(int x=0;x<resultado.size();x++)
				{
				String ruta="MemberController?action=modificar&id="+resultado.get(x).getMemberId();
				String rutaE="MemberController?action=eliminar&id="+resultado.get(x).getMemberId();
				%>
				<tr>
				<td><%=resultado.get(x).getMemberId()%></td>
				<td><%=resultado.get(x).getName()%></td>
				<td><%=resultado.get(x).getLastName()%></td>
				<td><%=resultado.get(x).getNationalId()%></td>
				<td><%=resultado.get(x).getEnrollmentDate()%></td>
				<td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-arrow-right-arrow-left"></i></a></td>
				<td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-arrow-down"></i></a> </td>
				</tr>				
				<%
				}
				%>
				
				
				</table>
		
		
		
		
		</div>
</div>





</body>
</html>