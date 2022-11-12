

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hola</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://static.vecteezy.com/system/resources/previews/001/200/145/non_2x/books-png.png" type="image/x-icon"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <link href="estiloReg.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="script.js"></script>  
    </head>
    <body>
    
        <nav class="navbar navbar-dark bg-dark">
          <div class="container-fluid row text-center "> <div class="row align-items-center">
          <a class="navbar-brand col" href="Home.jsp">
          <img src="https://static.vecteezy.com/system/resources/previews/001/200/145/non_2x/books-png.png" alt="" width="30" height="30" class="d-inline-block align-text-top">Neko Shop</a>
          <a class="navbar-brand col " href="HomeLibros.jsp">Registro</a>
          <a class="navbar-brand col " href="Logout">Cerrar Sesion - ${UsuarioLogueado}</a>
          </div></div>
        </nav>
        
     <div class="content"><main class="main"> <div class="modal-dialog text-center">
     <div class="col-12 princ">
     <div class="modal-content">
        <div class="col-12 logo">           
         <img src="https://cdn-icons-png.flaticon.com/512/201/201571.png" width="300">
        </div>
         <h5>Bienvenido</h5><br>
         
        <div class="container">   
        <h2>Registro de Computadoras</h2>
        
        <form method="POST" action="ServletLibro" class="col-12" id="formu" name="formu">
                  <div class="input-group mb-3">
                      <span class="input-group-text col-3">Modelo</span>
                      <input type="text" class="form-control" placeholder="Ingrese el modelo" required name="mod" id="mod">
                      <input type="hidden" name="control" value="GUARDAR">
                  </div>
                  <div class="input-group mb-3">
                      <span class="input-group-text col-3">Tamaño</span>
                      <input type="text" class="form-control" placeholder="Ingrese el tamaño de pantalla" required name="size" id="size">
                  </div>
                  <div class="input-group mb-3">
                      <span class="input-group-text col-3">Ram</span>
                      <input type="text" class="form-control" placeholder="Ingrese tamaño de ram" required name="ram" id="ram">
                  </div>
                  <div class="input-group mb-3">
                      <span class="input-group-text col-3">Almacenamiento</span>
                      <input type="text" class="form-control" placeholder="Ingrese almacenamiento" required name="hdd" id="hdd">
                  </div>
                  <div class="input-group mb-3">
                      <span class="input-group-text col-3">Sistema</span>
                      <input type="email" class="form-control" placeholder="Sistema operativo" required name="sys" id="sys">
                  </div>
                  <div class="input-group mb-3">
                      <span class="input-group-text col-3">Marca</span>
                      <input type="email" class="form-control" placeholder="Ingrese codigo de Marca" required name="mark" id="mark">
                  </div>
                                          
            <button type="button" onclick="sendData()" class="btn btn-warning">Guardar</button>
            <button type="reset" class="btn btn-dark">Cancelar</button><br><br><br>
        </form></div></div></div></div> </main>
        <aside class="aside"><div class="modal-content text-center">
            <h2>Registros de Libros </h2>   
            <table class="table table-dark table-hover">
                    <thead><tr>
                            <td>MODELO</td>
                            <td>PANTALLA</td>   
                            <td>RAM</td>
                            <td>ALMACENAMIENTO</td>
                            <td>SISTEMA</td>
                            <td>MARCA</td>
                            <td>ACCION</td> 
                    </tr></thead> <tbody id="regTab">  </tbody></table>
        <br><div class="text-center"> <button type="button" onclick="f5()" class="btn btn-warning">Recargar</button></div><br>   
        </div></aside></div>
        
        
        
    </body>
</html>
