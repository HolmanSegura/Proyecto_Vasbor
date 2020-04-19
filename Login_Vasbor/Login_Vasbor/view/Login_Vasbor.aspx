<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Login_Vasbor.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login Vasbor</title>
    <link href="../Css/Etilo_Login.css" rel="stylesheet" />
</head>
<body>
    <div class="loginbox">
        <img src="../imagenes/icono_vasbor.png" alt="Alternate Text"/ class="user"/> 
        <h2>Iniciar Sesion</h2>
        <form  runat="server">
            <asp:Label Text="Usuario" CssClass="lblusername" runat="server" />
            <asp:TextBox runat="server" ID="tb_nombre"  CssClass="txtusername" placeholder="Ingresar Usuario" />
            <asp:Label Text="Contraseña" CssClass="lblpass" runat="server" />
            <asp:TextBox runat="server" ID="tb_pass"  type="password" CssClass="txtpass" placeholder="Ingresar Contraseña" />
            <asp:Button Text="Ingresar" CssClass="btningresar" runat="server" OnClick="Unnamed5_Click" />
            <asp:LinkButton Text="¿Olvido su contraseña?" CssClass="linkolvido" runat="server" /><br /><br />
            <asp:LinkButton Text="Registrarse" CssClass="linkregistrar" runat="server" OnClick="Unnamed5_Click1"/>
            <h2> <asp:Label Text=" "  ID="lb_error" CssClass="lbl_err" runat="server"  /></h2>
        </form>
    </div>                  
</body>
</html>
