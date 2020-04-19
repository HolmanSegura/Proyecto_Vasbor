using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Categoria
/// </summary>
[Serializable]
[Table("rol_categoria", Schema = "restaurante")]
public class Categoria
{
    private int id;
    private string categorias;
    
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("categoria")]
    public string Categorias { get => categorias; set => categorias = value; }

   
    
}
 