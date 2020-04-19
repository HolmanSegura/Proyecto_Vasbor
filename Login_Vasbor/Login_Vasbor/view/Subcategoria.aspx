<%@ Page Title="" Language="C#" MasterPageFile="~/view/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Controller/Subcategoria.aspx.cs" Inherits="view_Subcategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="form-horizontal">      
                <div class="form-group">
                    <hr />
                    <hr />
                    <h2>Añadir Subcategoria</h2>
                    <hr />     
             <asp:Label ID="All_categoria" runat="server" CssClass="col-md-2 control-label" Text="Todas Las Categoria"></asp:Label>
                      <div class="col-md-3">
                        <asp:DropDownList ID="lista_categoria"  CssClass="form-control" runat="server" DataSourceID="ODCategoria" DataTextField="Categorias" DataValueField="Id"> </asp:DropDownList>                      
                        <asp:ObjectDataSource ID="ODCategoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAOCategorias"></asp:ObjectDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario La Categoria Del Producto !" ControlToValidate="lista_categoria" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
               <div class="form-group">
                    <asp:Label ID="lb_categoria" runat="server" CssClass="col-md-2 control-label" Text="Subcategoria"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_categoria" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_categoria" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Nombre De La Categoria !" ControlToValidate="txt_categoria"></asp:RequiredFieldValidator>
                    </div>
                </div>
               <div class="form-group">
                    <asp:Label ID="lb_codigo" runat="server" CssClass="col-md-2 control-label" Text="Codigo"></asp:Label>
                         <div class="col-md-3">
                        <asp:TextBox ID="txt_codigo" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_codigo" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Codigo !" ControlToValidate="txt_codigo"></asp:RequiredFieldValidator>
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
         <h1>Subcategorias</h1>
        <hr />
        
          <asp:ObjectDataSource ID="ODSubcategoria" runat="server" SelectMethod="obtenerSubcategoria" TypeName="DAOSubcategoria"></asp:ObjectDataSource>
       <div class="panel panel-default">  
             <div class="panel-heading">Todas Las Categorias </div>
                <asp:Repeater ID="DCategorias" runat="server" DataSourceID="ODSubcategoria">
                    <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Codigo SubCategoria</th>
                                <th>Subcategoria</th>
                                <th>Categoria</th>
                                <th>Codigo Categoria</th>
                                <th>Editar</th>
                            </tr>
                        </thead>
                    <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Id") %></td>
                            <td><%# Eval("Subcategorias") %></td>
                            <td><%# Eval("Descripcion") %></td>
                            <td><%# Eval("Id_categoria") %></td>
                            <td><asp:LinkButton Text="Editar" runat="server" /></td>
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

