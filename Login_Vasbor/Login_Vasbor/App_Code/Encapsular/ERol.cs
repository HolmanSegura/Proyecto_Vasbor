using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ERol
/// </summary>
/// 
[Serializable]
[Table("rol_login", Schema = "restaurante")]
public class ERol
{
    private int id;
    private string descripcion_rol;
    [Key]
    [Column("Id_Rol")]
    public int Id { get => id; set => id = value; }
    [Column("Descripcion_Rol")]
    public string Descripcion_rol { get => descripcion_rol; set => descripcion_rol = value; }
}