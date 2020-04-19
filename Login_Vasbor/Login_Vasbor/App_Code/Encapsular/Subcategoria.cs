using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Subcategoria
/// </summary>
/// 
[Serializable]
[Table("sub_rol_categoria", Schema = "restaurante")]
public class Subcategoria
{
    private int id;
    private string subcategorias;
    private int id_categoria;
    private string descripcion;
    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("subcategoria")]
    public string Subcategorias { get => subcategorias; set => subcategorias = value; }
    [Column("categoria")]
    public int Id_categoria { get => id_categoria; set => id_categoria = value; }
    [NotMapped]
    public string Descripcion { get => descripcion; set => descripcion = value; }

}
    