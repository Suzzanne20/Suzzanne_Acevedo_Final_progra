
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://static.vecteezy.com/system/resources/previews/001/200/145/non_2x/books-png.png" type="image/x-icon"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
        <link href="cssHome.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        
        
        <nav class="navbar navbar-dark bg-dark">
          <div class="container-fluid row text-center "> <div class="row align-items-center">
          <a class="navbar-brand col" href="Home.jsp">
          <img src="https://static.vecteezy.com/system/resources/previews/001/200/145/non_2x/books-png.png" alt="" width="30" height="30" class="d-inline-block align-text-top">Neko Shop</a>
          <a class="navbar-brand col " href="HomeLibros.jsp">Registro</a>
          <a class="navbar-brand col " href="Logout">Cerrar Sesion - ${UsuarioLogueado}</a>
          </div></div>
        </nav>
    </head> 
    <% 
        response.setHeader("Cache-Control", "nocache, no-store, must-revalidate");
        if(session.getAttribute("user")==null){
            response.sendRedirect("/index.jsp");
        }
    %>
    <body>
            
        <div class="content">  
            <main class="main">
                <div class=" text-center">
                     <div class="modal-content">
                         <div class="col-12 logo"> <br>             
                         <img src="https://images.vexels.com/media/users/3/153156/isolated/preview/9ce84f06c10bdd87608f48fc2e599661-icono-de-computadora-de-juegos.png" width="300">
                        </div><h2>Bienvenido</h2><br>

                        <div class="container"><form class="col-12"> 
                        <div class="container px-4 text-center"><div class="row gx-5"><div class="col"><div class="p-3 border bg-light">
                            <h3>Bienvenido</h3><h5>Deseas realizar un registro?</h5><br>
                            <a class="btn btn-info" href="HomeLibros.jsp">Registro</a>
                            <a class="btn btn-dark" href="Logout">Cerrar Sesion - ${UsuarioLogueado}</a>
                            </div></div></div></div><br>   
                        <img src="https://cdn-icons-png.flaticon.com/512/3447/3447560.png" height="120"><br><br>
                        </form></div></div></div>
            </main>
            
            <aside class="aside"> 

                
                <div class="card promo" >
                  <img src="https://media.tenor.com/OKLkZ1Um5HIAAAAM/mad-typing.gif" class="card-img-top" alt="75px">
                  <div class="card-body">
                    <h5 class="card-title">SABÍAS QUÉ?</h5>
                    <p class="card-text">El hábito de lectura es beneficioso para tu cerebro, ya que Amplía tu vocabulario, Reduce el estrés, Aumenta la concentración y Mejora la memoria.  Bueno se hizo lo que se pudo, para la otra si sera un buen trabajo UwU</p>
                  <img src="https://cdn-icons-png.flaticon.com/512/3443/3443389.png" height="50px">
                  
                  </div>
                </div>
            </aside>
            
            
            <footer class="footer row align-items-center text-center">
                <h5 class="co-10">....</h5>

            </footer>
        </div>
        
        
        
        
        
    </body>
</html>