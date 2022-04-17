<%@page import="dominio.Usuario"%>
<%@page import="dao.DaoUsuarioImpl"%>
<%@page import="dao.DaoUsuario"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- bootstrap -->
        <jsp:include page="Bootstrap.jsp"></jsp:include>

            <!--Normalize-->
            <link rel="stylesheet" href="css/normalize.css">

            <!-- Fuentes -->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">   

            <!-- Estilos -->
            <link rel="stylesheet" href="css/globales.css">
            <link rel="stylesheet" href="css/header.css">
            <link rel="stylesheet" href="css/form-inicio-s.css">
            <link rel="stylesheet" href="css/footer.css">
            <style>
                .container {
                    display: flex;
                    text-align: center;
                    justify-content: center;
                    align-items: center;
                }
                form {
                    width: 25rem;
                    padding:5px;
                }
                label {
                    padding:3px;
                    font-size: 20px;
                }
                .form-control{
                    font-size: 17px;
                }
                .btn{
                    font-size: 20px;
                    padding:3px;
                    margin: 5px;

                }

            </style>

            <title>Carrito CoTech</title>
        </head>
        <body>

        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col-5">

                        <form>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email o Usuario</label>
                                <input  type="user" class="form-control" id="usuario" name="user" placeholder="Ingresa email o Usuario">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword">Contraseña</label>
                                <input type="password" class="form-control" id="contraseña" name="password" placeholder="Contraseña">
                            </div>
                            <button type="submit" class="btn btn-primary" name="login">Login</button>
                            <div class="form-group">
                                <small id="emailHelp" class="form-text text-muted">Si no tiene una cuenta puede <a href="registrarse.jsp">registrarse.</a></small>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        <jsp:include page="footer.jsp"></jsp:include>

        </body>
    <%
        
        if (request.getParameter("login") != null) {
            String user = request.getParameter("user");
            String password = request.getParameter("password");
            HttpSession sesion = request.getSession();
            if (user.equals("admin") && password.equals("1234")){
            sesion.setAttribute("log", "1");
            sesion.setAttribute(user, user);
            response.sendRedirect("index.jsp");
            
        }else {
        out.println("usuario o contraseña incorrecto");
        }
        }
    %>
    
</html>