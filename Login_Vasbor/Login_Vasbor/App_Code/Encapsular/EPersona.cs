using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EUsuario
/// </summary>
/// 
[Serializable]
[Table("registro_usuario", Schema = "restaurante")]
public class EPersona
{
 
    private long identificacion;
    private int id_rol;
    private int id;
    private int telefono;
    private string correo;
    private string descripcion_Rol;
    private String nombre, apellido, username, clave;
    private int estado_id;
    private string token;
    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("identificacion")]
    public long Identificacion { get => identificacion; set => identificacion = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("username")]
    public string Username { get => username; set => username = value; }
    [Column("contraseña")]
    public string Clave { get => clave; set => clave = value; }
    [Column("telefono")]
    public int Telefono { get => telefono; set => telefono = value; }
    [Column("rol")]
    public int Id_rol { get => id_rol; set => id_rol = value; }
    [Column("estado_id")]
    public int Estado_id { get => estado_id; set => estado_id = value; }
    [Column("token")]
    public string Token { get => token; set => token = value; }

    [NotMapped]
    public string Descripcion_Rol { get => descripcion_Rol; set => descripcion_Rol = value; }
    
}