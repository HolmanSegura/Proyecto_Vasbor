using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Subcategoria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_añadir_Click(object sender, EventArgs e)
    {
        if (txt_categoria.Text != "")
        {

            Subcategoria user = new Subcategoria();
            user.Subcategorias = txt_categoria.Text;
            user.Id=int.Parse(txt_codigo.Text);
            user.Id_categoria = int.Parse(lista_categoria.SelectedValue);
            new DAOSubcategoria().InsertarSubcategoria(user);
            DCategorias.DataBind();
            lb_mensaje.ForeColor = Color.Green;
            lb_mensaje.Text = "Registro Exitoso";
            txt_categoria.Text = string.Empty;

        }
        else
        {
            lb_mensaje.ForeColor = Color.Red;
            lb_mensaje.Text = "Dato No Registrado";
        }
    }
}