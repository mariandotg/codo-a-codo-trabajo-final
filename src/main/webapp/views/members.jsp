<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="models.MemberDao"%>
<%@page import="models.Member"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Socios Club Atlético Independiente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
		    <div class="row">
                <div class="button-container">
                    <h3>Listado de Socios</h3>
                    <a class="btn btn-primary col-4" href="MemberController?action=nuevo">Agregar Socio</a>
                </div>

                <div>
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">DNI</th>
                                <th scope="col">Fecha de alta</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            List<Member> resultado = null;
                            MemberDao socio = new MemberDao();
                            resultado = socio.getMembers();

                            for(int x = 0; x < resultado.size(); x++) {
                                String ruta = "MemberController?action=modificar&id=" + resultado.get(x).getMemberId();
                                String rutaE = "MemberController?action=eliminar&id=" + resultado.get(x).getMemberId();
                            %>
                                <tr>
                                    <th scope="row"><%=resultado.get(x).getMemberId()%></th>
                                    <td><%=resultado.get(x).getName()%></td>
                                    <td><%=resultado.get(x).getLastName()%></td>
                                    <td><%=resultado.get(x).getNationalId()%></td>
                                    <td><%=resultado.get(x).getEnrollmentDate()%></td>
                                    <td class="actions">
                                        <a href=<%=ruta%>><i class="fa-solid fa-edit"></i>Editar</a>
                                        <a href=<%=rutaE%> class="delete"><i class="fa-solid fa-trash"></i>Eliminar</a>
                                    </td>
                                </tr>
                            <%
                            }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>