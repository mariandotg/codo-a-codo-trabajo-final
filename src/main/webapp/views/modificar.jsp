<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="models.MemberDao"%>
<%@page import="models.Member"%>
<%@page import="java.util.List"%>  

<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
		<title>Editar socio - Club Atlético Independiente</title>
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/Escudo-principal.svg">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<style><%@include file="/styles/members.styles.css"%></style>
	</head>
	<body>
		<header>
            <nav class="container">
                <img src="${pageContext.request.contextPath}/images/Escudo-principal.svg" alt="independiente">
                <ul class="navbar-items">
                    <li>
                        <a href="https://www.instagram.com/caindependiente/" referrerpolicy="no-referrer" target="_blank">
                            INSTAGRAM
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/Independiente/" referrerpolicy="no-referrer" target="_blank">
                            FACEBOOK
                        </a>
                    </li>
                    <li>
                        <a href="https://twitter.com/Independiente" referrerpolicy="no-referrer" target="_blank">
                            TWITTER
                        </a>    
                    </li>
                    <li>SOCIOS</li>
                </ul>
            </nav>
        </header>
		<div class="container">
			<div class="row" >
				<h3>Editar Socio</h3>
				<%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);
				Member resultado=null;
				MemberDao socio=new MemberDao();
				resultado=socio.getMember(mid);
				
				%>
				
				<form class="" action="MemberController?action=actualizar" method="post">
					<div class="mb-3">				
						<input type="hidden"  class="form-control" id="id" name="id"  value=<%=resultado.getMemberId()%> >
					</div>
					<div class="row mb-3">
						<div class="col-6 mr-3">
							<label for="name" class="form-label" >Nombre</label>
							<input type="text" class="form-control" id="name" name="name"  value=<%=resultado.getName()%> >
						</div>
						<div class="col-6">
							<label for="lastName" class="form-label" >Apellido</label>
							<input type="text" class="form-control" id="lastName" name="lastName" value=<%=resultado.getLastName()%> >
						</div>
					</div>
					
					<div class="row mb-3">
						<div class="col-6 mb-3">
							<label for="nationalId" class="form-label" >DNI</label>
							<input type="number" class="form-control" id="nationalId" name="nationalId" value=<%=resultado.getNationalId()%> >
						</div>
						<div class="col-6 mb-3">
							<label for="email" class="form-label" >Email</label>
							<input type="text" class="form-control" id="email" name="email" value=<%=resultado.getEmail()%> >
						</div>
					</div>

					<div class="d-flex">
						<button type="submit" class="btn btn-primary col-4 ms-auto">Editar</button>	
					</div>
				</form>
			</div>	
		</div>
	</body>
</html>