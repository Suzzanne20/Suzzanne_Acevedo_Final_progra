

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
    
    <body>

        <div class="box">
            <div class="form">
                <div class="text-center"><img src="https://cdn-icons-png.flaticon.com/512/3447/3447560.png" width="120"></div>
                <form method="POST" action="ServletUser" id="formUSER">
                <div class="inputBox">
                    <h3>Registro</h3> 
                    <input type="text" required="required" id="registroUser" name="registroUser">
                    <span>Usuario</span><i></i></div>
                    <input type="hidden" name="control" value="GUARDAR">
                <div class="inputBox">
                    <input type="password" required="required" id="registroPass" name="registroPass">
                    <span>Contraseña</span><i></i></div><br>
                    
                <div class="text-center"> <input type="button" value="Validar" id="btnlog" onclick="sendData2()"></div><br>
                <div class="forgotlink"><h8>Ya cuentas con usuario? </h8><a href="index.jsp">Inicia Sesión</a></div> 
            </form></div>
        </div>
        <script src="script.js"></script> 
    </body>
</html>
