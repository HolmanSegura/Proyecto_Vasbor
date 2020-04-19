using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ingresar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (! IsPostBack)
        {
            if (Request.Cookies["usern"]!=null && Request.Cookies["usern"]!=null )
            {
                txt_username.Text = Request.Cookies["usern"].Value;
                txt_contraseña.Attributes["value"] = Request.Cookies["pass"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void btn_ingresar_Click(object sender, EventArgs e)
    {
        EPersona eUser = new EPersona();
        eUser.Username = txt_username.Text;
        eUser.Clave = txt_contraseña.Text;

        eUser = new DAOPersona().Login_Vasbor(eUser);

        if (eUser == null)
        {

            ((Label)lb_error).Text = ("Usuario o clave incorecta");

        }
        else if (eUser.Id_rol == 1)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["usern"].Value = txt_username.Text;
                Response.Cookies["pass"].Value = txt_contraseña.Text;

                Response.Cookies["usern"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["pass"].Expires = DateTime.Now.AddDays(15);
         
            }
            else
            {
                Response.Cookies["usern"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["pass"].Expires = DateTime.Now.AddDays(-1);
            }
            Session["validar_sesion"] = txt_username.Text;
            Response.Redirect("SAdministrador.aspx");
            txt_username.Text = string.Empty;
            txt_contraseña.Text = string.Empty;
        }
        else if (eUser.Id_rol == 2)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["usern"].Value = txt_username.Text;
                Response.Cookies["pass"].Value = txt_contraseña.Text;

                Response.Cookies["usern"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["pass"].Expires = DateTime.Now.AddDays(15);

            }
            else
            {
                Response.Cookies["usern"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["pass"].Expires = DateTime.Now.AddDays(-1);
            }
            Session["validar_sesion"] = txt_username.Text;
            Response.Redirect("Administrador.aspx");
            txt_username.Text = string.Empty;
            txt_contraseña.Text = string.Empty;
        }
        else if (eUser.Id_rol == 3)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["usern"].Value = txt_username.Text;
                Response.Cookies["pass"].Value = txt_contraseña.Text;

                Response.Cookies["usern"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["pass"].Expires = DateTime.Now.AddDays(15);

            }
            else
            {
                Response.Cookies["usern"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["pass"].Expires = DateTime.Now.AddDays(-1);
            }
            Session["validar_sesion"] = txt_username.Text;
            Response.Redirect("Registrar.aspx");
            txt_username.Text = string.Empty;
            txt_contraseña.Text = string.Empty;
        }
    }
}