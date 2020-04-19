<%@ Page Title="" Language="C#" MasterPageFile="~/view/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Controller/Producto.aspx.cs" Inherits="view_Producto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
                <div class="form-group">
                    <hr />
                    <hr />
                    <h2>Añadir Producto</h2>
                    <hr />
                    <asp:Label ID="lb_username" runat="server" CssClass="col-md-2 control-label" Text="Nombre"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_Pnombre" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_Username" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Nombre Del Producto !" ControlToValidate="txt_Pnombre"></asp:RequiredFieldValidator>
                    </div>
                </div>
               <div class="form-group">
                    <asp:Label ID="lb_categoria" runat="server" CssClass="col-md-2 control-label" Text="Categoria"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="lista_categoria"  CssClass="form-control" runat="server" DataSourceID="OSCategoria" DataTextField="Categorias" DataValueField="Id"></asp:DropDownList>
                        <asp:ObjectDataSource ID="OSCategoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAOCategorias"></asp:ObjectDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario La Categoria Del Producto !" ControlToValidate="lista_categoria" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="lb_subcategoria" runat="server" CssClass="col-md-2 control-label" Text="Subcategoria"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="lista_sub" CssClass="form-control" runat="server" DataSourceID="ODPsubcategoria" DataTextField="Subcategorias" DataValueField="Id"></asp:DropDownList>
                        <asp:ObjectDataSource ID="ODPsubcategoria" runat="server" SelectMethod="obtenerPsubcategorias" TypeName="DAOSubcategoria"></asp:ObjectDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario La Categoria Del Producto !" ControlToValidate="lista_sub" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
               <div class="form-group">
                    <asp:Label ID="lb_precio" runat="server" CssClass="col-md-2 control-label" Text="Precio Venta"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_precio" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Precio Del Producto !" ControlToValidate="txt_precio"></asp:RequiredFieldValidator>
                    </div>
                </div>
              <div class="form-group">
                    <asp:Label ID="lb_descripcion" runat="server" CssClass="col-md-2 control-label" Text="Descripcion"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_descripcion" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Precio Del Producto !" ControlToValidate="txt_descripcion"></asp:RequiredFieldValidator>
                    </div>
                </div>

              <div class="form-group">
                    <asp:Label ID="lb_imagen" runat="server" CssClass="col-md-2 control-label" Text="Imagen"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="subir_imagen" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="Es Necesario El Precio Del Producto !" ControlToValidate="subir_imagen"></asp:RequiredFieldValidator>
                    </div>
                </div>
               <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btn_añadir" runat="server" Text="Añadir" CssClass="btn btn-primary" OnClick="btn_añadir_Click"/>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

