using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;

/// <summary>
/// Descripción breve de DAOCategorias
/// </summary>
public class DAOCategorias
{
    public void InsertarCategoria(Categoria user)
    {
        using (var db = new Mapeo())
        {
            db.categoria.Add(user);
            db.SaveChanges();

        }

    }
    public List<Categoria> obtenerCategoria()
    {
        List<Categoria> x = new List<Categoria>();
        Categoria y = new Categoria();
        y.Id = 0;
        y.Categorias = "Seleccione";
        x.Add(y);
        using (var db = new Mapeo())
        {
        x= db.categoria.ToList();
        
        }
        return x;
    }
}