using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Categoria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

   

    protected void btn_añadir_Click(object sender, EventArgs e)
    {
        if (txt_categoria.Text != "")
        {

            Categoria user = new Categoria();
            user.Categorias = txt_categoria.Text;
            user.Id = int.Parse(txt_codigo.Text);
            new DAOCategorias().InsertarCategoria(user);
            DCategorias.DataBind();
            lb_mensaje.ForeColor = Color.Green;
            lb_mensaje.Text = "Registro Exitoso";
            txt_categoria.Text = string.Empty;
            txt_codigo.Text = string.Empty;


        }
        else
        {
            lb_mensaje.ForeColor = Color.Red;
            lb_mensaje.Text = "Dato No Registrado";
        }
    }
}
