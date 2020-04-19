<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Crear_Persona.aspx.cs" Inherits="view_Crear_Persona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    
    <title>Crear Persona</title>
    <link href="../Css/Estilo_Crear.css" rel="stylesheet" />
     <link rel="stylesheet" href="css/bootstrap.min.css" />


</head>
<body>
    <div class="container">
        <form  runat="server">
            <div class="table-responsive " >
                 <asp:GridView ID="GridView1" runat="server"  Height="100px" Width="815px" AutoGenerateColumns="False" DataSourceID="Vista_Persona" CellPadding="4" ForeColor="#333333" GridLines="None">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                  <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                  <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                  <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                  <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                  <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                  <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                  <asp:BoundField DataField="Descripcion_Rol" HeaderText="Descripcion_Rol" SortExpression="Descripcion_Rol" />
              </Columns>
              <EditRowStyle BackColor="#7C6F57" />
              <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
              <RowStyle BackColor="#E3EAEB" />
              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F8FAFA" />
              <SortedAscendingHeaderStyle BackColor="#246B61" />
              <SortedDescendingCellStyle BackColor="#D4DFE1" />
              <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            <asp:ObjectDataSource ID="Vista_Persona" runat="server" SelectMethod="obtenerUsuarios" TypeName="DAOPersona"></asp:ObjectDataSource> 
            </div>
            <div class="crearbox2">
                <div class="form-group">
                    <asp:Label CssClass=" col-md-2 lblnombre" ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TB_Nombre" runat="server" placeholder="Ingresar Nombre"    CssClass=" form-control"></asp:TextBox>
                    </div>

                </div>
                <div class="form-group">
                    <asp:Label CssClass=" col-md-2" ID="L_Apellido" runat="server" Text="Apellido"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TB_Apellido" runat="server" placeholder="Ingresar Apellido" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label CssClass="control-label col-md-2" ID="L_Telefono" runat="server" Text="Telefono"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TB_Telefono" runat="server" placeholder="Ingresar Telefono" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label CssClass="control-label col-md-2" ID="Label1" runat="server" Text="Pais"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Ingresar Pais" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label CssClass="control-label col-md-2" ID="L_Pais" runat="server" Text="Pais"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TB_Pais" runat="server" placeholder="Ingresar Pais" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label CssClass=" control-label col-md-2" ID="L_UserName" runat="server" Text="UserName"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TB_UserName" runat="server" placeholder="Ingresar UserName" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label CssClass=" control-label col-md-2" ID="L_Clave" runat="server" Text="Clave"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TB_Clave" runat="server" placeholder="Ingresar Clave" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label CssClass=" control-label col-md-2" ID="L_Descripcion" runat="server" Text="Descripcion"></asp:Label>
                    <div class="col-md-10">
                    <asp:TextBox ID="TB_Descripcion" runat="server" placeholder="Ingresar Descripcion" CssClass="form-control"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="control-label col-md-2" ID="L_Cargo" runat="server" Text="Descripcion Cargo"></asp:Label>
                    <div class="col-md-10">
                       <asp:DropDownList ID="Rol_obtener" runat="server"></asp:DropDownList>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class=" col-md-2 col-md-offset-2">
                        <asp:Button CssClass="btn btn-primary" ID="B_Guardar" runat="server" Text="Guardar" />
                    </div>
                    
                </div>
            </div>
            
    </form>

    </div>
    
      <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
