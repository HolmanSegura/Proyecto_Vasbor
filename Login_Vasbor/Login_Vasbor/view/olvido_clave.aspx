<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/olvido_clave.aspx.cs" Inherits="view_olvido_clave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Olvidar Contraseña</title>
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
                            <li ><a href="Inicio.aspx">Inicio</a></li>
                            <li><a href="#">Nosotros</a></li>
                            <li><a href="#">Contactenos</a></li>
                          <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nuestro Menu<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">Todos Los Menus</a></li>
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
                       
                            <li><a href="Ingresar.aspx">Ingresar</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class=" form-horizontal">
                <h2>Recordar Contraseña</h2>
                <hr />
                <h4> Por Favor Ingresar El Correo Registrado, Nosotros Le Enviaremos Las Instrucciones Para Restabecer Su Contraseña.</h4>   
                    <div class="form-group">
                    <asp:Label ID="lb_correo" runat="server" CssClass="col-md-2 control-label" Text="Tu Correo Electronico"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_correo" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Correo !" ControlToValidate="txt_correo"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"> </div>
                    <div class="col-md-6">
                        <asp:Button ID="btn_olvido" CssClass="btn btn-primary" Text="Enviar" runat="server" OnClick="btn_olvido_Click" />
                    </div>
                   
                </div>
               
            </div>
        </div>

    </form>
    <hr />
        <footer class="piepagina_posicion">
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
