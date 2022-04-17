<%-- 
    Document   : header
    Created on : 2 mar 2022, 17:49:52
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <header class="header">
            <div class="contenedor header-contenido">
                <div>
                    <a href="index.jsp">
                        <img src="img/logo.jfif" alt="Logo" class="logo">
                    </a>
                </div>
                <nav class="navegacion">
                    <a href="gaming.jsp" class="opcion">Gaming</a>
                    <a href="hogar.jsp" class="opcion">Hogar</a>
                    <a href="laboral.jsp" class="opcion">Laboral</a>
                    <%
                        HttpSession sesion = request.getSession();
                        if (sesion.getAttribute("log")!=null) {
                    %>
                    <a href="cerrar_sesion.jsp" class="opcion">Cerrar Sesion</a>
                    <%
                        } else {
                        %>
                    <a href="inicio-sesion.jsp" class="opcion">Iniciar Sesion</a>
                    <%
                        }
                    %>
                    <a href="carrito.jsp" class="opcion">Carrito</a>
                </nav>
            </div>
        </header>
    </body>
</html>
