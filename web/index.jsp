
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>Login</title>  
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://static.vecteezy.com/system/resources/previews/001/200/145/non_2x/books-png.png" type="image/x-icon"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
        <link href="logStyle.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
     
    <body><c:if test="${success ==0}"> <div class="alert alert-danger" id="error">${mensaje}</div></c:if>

        <div class="box">
            <div class="form">
                <div class="text-center"><img src="https://cdn-icons-png.flaticon.com/512/2919/2919600.png" width="120"></div>
            <form action="NewServlet" method="POST">
                <div class="inputBox">
                    <h3>Inicio</h3>
                    <input type="text" required="required" name="user">
                    <span>Usuario</span><i></i></div>
                <div class="inputBox">
                    <input type="password" required="required" name="pass">
                    <span>Contraseña</span><i></i></div>
                <div class="forgotlink">
                    <a href="#">Olvidé mi contraseña</a>
                </div>  
                <div class="text-center"> <input type="submit" value="Login" id="btnlog"></div><br>
                <div class="forgotlink"><h8>No cuentas con usuario? </h8><a href="regUsers.jsp">Registrate</a></div> 
            </form></div>
        </div>

    </body>
</html>
