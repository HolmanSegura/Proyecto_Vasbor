using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Crear_Persona : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["validar_sesion"] == null)
        {
            Response.Redirect("Login_Vasbor.aspx");
        }
    }
}