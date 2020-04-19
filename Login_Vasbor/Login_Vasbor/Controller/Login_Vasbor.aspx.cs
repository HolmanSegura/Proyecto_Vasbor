using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        EPersona eUser = new EPersona();
        ClientScriptManager csm = this.ClientScript;
        eUser.Username = tb_nombre.Text;
        eUser.Clave = tb_pass.Text;

        eUser = new DAOPersona().Login_Vasbor(eUser);

        if (eUser == null)
        {
           
            ((Label)lb_error).Text = ("Usuario o clave incorecta");

        }
        else if (eUser.Estado_id == 2)
        {
            csm.RegisterClientScriptBlock(this.GetType(), " ", "<script type='text/javascript'>alert('Su cuenta esta en espera para la recuperacion de contraseña');</script>");
            return;
        }
        else if (eUser.Id_rol == 1 )
        {
            ((Label)lb_error).Text = ("Administrador: " +  eUser.Nombre );
            Session["validar_sesion"] = eUser;
             Response.Redirect("Crear_Persona.aspx");
        }
        else if (eUser.Id_rol == 2)
        {
            ((Label)lb_error).Text = ("Empleado: " + eUser.Nombre  );
        }
        else if (eUser.Id_rol == 3)
        {
            ((Label)lb_error).Text = ("Usuario " + eUser.Nombre  );
        }
        
    }



    protected void Unnamed5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Registro_Usuario.aspx");
    }
}