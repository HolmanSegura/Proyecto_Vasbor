using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_olvido_clave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_olvido_Click(object sender, EventArgs e)
    {
        EPersona persona = new DAOPersona().BuscarCorreo(txt_correo.Text);
        ClientScriptManager csm = this.ClientScript;
        if(persona == null)
        {
            csm.RegisterClientScriptBlock(this.GetType(), " ", "<script type='text/javascript'>alert('Correo no encontrado');</script>");
            return;
        }
        //persona.Clave = "";
        persona.Estado_id = 2;
        persona.Token = encriptar(JsonConvert.SerializeObject(persona));
        new Correo().enviarCorreo(persona.Correo, persona.Token, "");
        new DAOPersona().ActualizarUsuario(persona);
    }

    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();
        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);
        StringBuilder output = new StringBuilder();
        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());
        return output.ToString();
    }
}