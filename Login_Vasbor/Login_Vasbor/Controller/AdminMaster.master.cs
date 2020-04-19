using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_cerraradmin_Click(object sender, EventArgs e)
    {
        Session["validar_sesion"] = null;
        Response.Redirect("Inicio.aspx");
    }
}
