using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }
    private readonly string schema = "restaurante";
    public Mapeo()
        : base("name=Conexion")
    {

    }

    public DbSet<EPersona> persona { get; set; }
    public DbSet<ERol> rol { get; set; }
    public DbSet<Categoria> categoria { get; set; }
    public DbSet<Subcategoria> subcategoria { get; set; }

    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema(this.schema);
        base.OnModelCreating(builder);
    }
}