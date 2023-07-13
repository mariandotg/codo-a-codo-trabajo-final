<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Añadir socio - Club Atlético Independiente</title>
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
				<h3>Añadir Socio</h3>
				<form action="MemberController?action=insert" method="post">
				
					<div class="row mb-3">
						<div class="col-6 mr-3">
							<label for="name" class="form-label" >Nombre</label>
							<input type="text" class="form-control" id="name" name="name" >
						</div>
						<div class="col-6 mr-3">
							<label for="lastName" class="form-label" >Apellido</label>
							<input type="text" class="form-control" id="lastName" name="lastName" >
						</div>
					</div>

					<div class="row mb-3">
						<div class="col-6 mr-3">
							<label for="nationalId" class="form-label" >DNI:</label>
							<input type="text" class="form-control" id="nationalId" name="nationalId" >
						</div>
						<div class="col-6 mr-3">
							<label for="email" class="form-label" >Mail:</label>
							<input type="text" class="form-control" id="email" name="email" >
						</div>			
					</div>

					<div class="d-flex">
						<button type="submit" class="btn btn-primary col-4 ms-auto">Añadir socio</button>	
					</div>
				</form>
			</div>
		</div>
	</body>
</html>