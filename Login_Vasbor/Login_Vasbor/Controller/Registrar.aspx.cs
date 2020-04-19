using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_js_Registrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        if (txt_identificacion.Text !="" && txt_nombre.Text !="" && txt_apellido.Text !="" && txt_correo.Text!="" && txt_telefono.Text !="" && txt_username.Text !="" && txt_contraseña.Text !="" && txt_confirmar.Text!="" )
        {
       
        EPersona user = new EPersona();
        user.Identificacion = long.Parse(txt_identificacion.Text);
        user.Nombre = txt_nombre.Text;
        user.Apellido = txt_apellido.Text;
        user.Correo = txt_correo.Text;
        user.Telefono = Convert.ToInt32(txt_telefono.Text);
        user.Username = txt_username.Text;
        user.Clave = txt_contraseña.Text;
        user.Id_rol = 3;
        new DAOPersona().InsertarUsuario(user);
            lb_mensaje.ForeColor = Color.Green;
            lb_mensaje.Text = "Registro Exitoso";
            Response.Redirect("Ingresar.aspx");
        }
        else
        {
            lb_mensaje.ForeColor = Color.Red;
            lb_mensaje.Text = "Error Campos Vacios";
        }
    }
}