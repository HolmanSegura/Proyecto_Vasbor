<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Inicio.aspx.cs" Inherits="Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Vasbor</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Inicio.aspx"><span>
                        <img alt="Logo" src="../imagenes/vasbor.png" height="30" /></span>Vasbor</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Inicio.aspx">Inicio</a></li>
                            <li><a href="#">Nosotros</a></li>
                            <li><a href="#">Contactenos</a></li>
                          <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nuestro Menu<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Producto.aspx">Todos Los Menus</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Carnes</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Cerdo</a></li>
                                    <li><a href="#">Res</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Aves</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Pollo</a></li>
                                    <li><a href="#">Gallina</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Pescado</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Mar</a></li>
                                    <li><a href="#">Rio</a></li>
                                </ul>
                            </li>
                            <li><a href="Registrar.aspx">Registrate</a> </li>
                            <li><a href="Ingresar.aspx">Ingresar</a></li>             
                        </ul>
                    </div>
                </div>
            </div>
            
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="../imagenes/1 combo.jpg" alt="..."/>
      <div class="carousel-caption">
           <h3>Hamburguesa Especial</h3>
           <p>Hamburguesas</p>
          <p><a class="btn btn-primary" href="Registrar.aspx" role="button">Ver Opciones</a> </p>
      </div>
    </div>
    <div class="item">
      <img src="../imagenes/2 combo.png" alt="..."/>
      <div class="carousel-caption">
           <h3>Entrada Carnitas</h3>
           <p>Entradas</p>
           <p><a class="btn btn-primary" href="Registrar.aspx" role="button">Ver Opciones</a> </p>
      </div>
    </div>
      <div class="item">
      <img src="../imagenes/3 combo.jpg" alt="..."/>
      <div class="carousel-caption">
           <h3>Bandeja Paisa</h3>
            <p>Especialidades</p>
           <p><a class="btn btn-primary" href="Registrar.aspx" role="button">Ver Opciones</a> </p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>



 </div> 
        <br />
        <br />
        <link href="css/centrar-Cs.css" rel="stylesheet" />
        <div class="container  centrar">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle " src="../imagenes/ajiaco.jpg" alt="thumb01" width="160" />
                <h2>Ajiaco Santafereño</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p><a class=" btn btn-default" href="#" role="button">Ver &raquo;</a></p>
            </div>
              <div class="col-lg-4">
                <img class="img-circle" src="../imagenes/brage.jpg" alt="thumb01" width="140" />
                <h2>Sudado De Bagre</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p><a class=" btn btn-default" href="#" role="button">Ver &raquo;</a></p>
            </div>
                <div class="col-lg-4">
                <img class="img-circle" src="../imagenes/cocido boyacense.jpg" alt="thumb01" width="100" />
                <h2>Cocido Boyacense</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p><a class=" btn btn-default" href="#" role="button">Ver &raquo;</a></p>
            </div>
            </div>
        </div>
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">De regreso</a></p>
                <p>&copy; 2020 Vasbor S.A.S &middot; <a href="Inicio.aspx">Inicio</a> &middot; <a href="#">Contactanos</a> &middot;<a href="#">Nosotros</a></p>
            </div>
        </footer>
</form>
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
