<%@ Page Title="" Language="C#" MasterPageFile="~/view/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Controller/Categoria.aspx.cs" Inherits="view_Categoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/centrar-Cs.css" rel="stylesheet" />
    <div class="container">
        <div class="form-horizontal">
                <div class="form-group">
                    <hr />
                    <hr />
                    <h2>Añadir Categoria</h2>
                    <hr />
                    <asp:Label ID="lb_codigo" runat="server" CssClass="col-md-2 control-label" Text="Codigo"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_codigo" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_codigo" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Codigo !" ControlToValidate="txt_codigo"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lb_categoria" runat="server" CssClass="col-md-2 control-label" Text="Catgoria"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_categoria" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_categoria" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Nombre De La Categoria !" ControlToValidate="txt_categoria"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btn_añadir" runat="server" Text="Añadir" CssClass="btn btn-primary" OnClick="btn_añadir_Click"/>
                        <asp:Label ID="lb_mensaje" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        <h1>Categorias</h1>
        <hr />
       
            <div class="panel panel-default">  
             <div class="panel-heading">Todas Las Categorias </div>
                <asp:ObjectDataSource ID="ODCategoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAOCategorias"></asp:ObjectDataSource>
                <asp:Repeater ID="DCategorias" runat="server" DataSourceID="ODCategoria">
                    <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Categoria</th>
                            </tr>
                        </thead>
                    <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Id") %></td>
                            <td><%# Eval("Categorias") %></td>
                        </tr>
                    </ItemTemplate>
                        <FooterTemplate>
                    </tbody>
                    </table>
                    </FooterTemplate>  
              </asp:Repeater>
       </div>
     </div>
</asp:Content>

