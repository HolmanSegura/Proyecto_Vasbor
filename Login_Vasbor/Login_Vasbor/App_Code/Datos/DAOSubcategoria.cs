using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;

/// <summary>
/// Descripción breve de DAOSubcategoria
/// </summary>
public class DAOSubcategoria
{
    public void InsertarSubcategoria(Subcategoria user)
    {
        using (var db = new Mapeo())
        {
            db.subcategoria.Add(user);
            db.SaveChanges();

        }

    }
    public List<Subcategoria> obtenerPsubcategorias()
    {
        List<Subcategoria> x = new List<Subcategoria>();
        using (var db = new Mapeo())
        {
            x = db.subcategoria.ToList();

           
        }
         Subcategoria y = new Subcategoria();
            y.Id = 0;
            y.Descripcion = "seleccione";
          y.Id_categoria = 0;
          y.Subcategorias = "seleccione";
            x.Add(y);
            return x;
        

    }
    public List<Subcategoria> obtenerSubcategoria()
    {
       
        using (var db = new Mapeo())
        {
            return (from uu in db.subcategoria
                    join Cat in db.categoria on uu.Id_categoria equals Cat.Id

                    select new
                    {
                        uu,
                        Cat
                    }).ToList().Select(m => new Subcategoria

                    {
                        Id = m.uu.Id,
                        Subcategorias = m.uu.Subcategorias,
                        Id_categoria = m.Cat.Id,
                        Descripcion=m.Cat.Categorias
                    }).ToList();
        }
        

    }
}