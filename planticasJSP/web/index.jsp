<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <link rel="shortcut icon" href="favicon.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Grand+Hotel|Montserrat" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Planticas</title>
    <script type="text/javascript" src="registro.js"></script>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </head>

  <body id="fondo-principal" class="text-center">
    <div id="wrapper-login" class="cover-container d-flex h-100 p-3 mx-auto flex-column text-center">
      <main role="main" class="inner cover">
        <% 
          String mostrar = request.getParameter("q");
        %>
        <form action="validate.jsp" method="get" accept-charset="utf-8" onsubmit="return validar()" id="formulario" class="form-signin">
          <h1 id="titulo" class="h1 mb-2 cover-heading" style="margin-bottom: 0px;">Planticas</h1>
          <h5 class="h5 mb-3 font-weight-normal lead">La web para plantar cosicas</h5>
          <span id='<% out.print(mostrar); %>' style="display: none;"class='alert alert-danger mt-2' role='alert'>Correo electrónico o contraseña inválidos</span><br>
          <input type="text" id="alias" name="alias" class="form-control" placeholder="Alias" required autofocus value="">
          <input type="password" id="password" name="password" value="" class="form-control" placeholder="Contraseña" required>
          <input id="button" class="btn btn-lg btn-basic btn-block lead" type="submit" name="button" value="Acceder">
          <a id="registro" href="registro.jsp">
            <div>Registrarse</div>
          </a>
        </main>
      </form>
      <footer id="footer" class="page-footer font-small pt-4 mt-4">
        <small class="footer-copyright py-3 text-center"> © 2018 Copyright</small>
      </footer>
    </div>
  </body>
  <script>
    window.onload = function alert() {
      //mostrar = request.getParameter("q");
      document.getElementById("cambia").style.display = "inline-block";
    };
    
    window.onclick = function quitar() {
      document.getElementById("cambia").style.display = "none";
    };
  </script>
</html>