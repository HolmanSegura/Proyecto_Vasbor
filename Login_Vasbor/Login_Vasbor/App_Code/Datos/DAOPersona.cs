using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Npgsql;

/// <summary>
/// Descripción breve de DAOPersona
/// </summary>
public class DAOPersona
{
    public EPersona BuscarCorreo(String correo)
    {
        using (var db = new Mapeo())
        {

            return db.persona.Where(x => x.Correo.Equals(correo)).FirstOrDefault();
        }
    }

    public EPersona Login_Vasbor(EPersona user)
    {
        using (var db = new Mapeo())
        {

            return db.persona.Where(x => x.Username.Equals(user.Username) && x.Clave.Equals(user.Clave)).FirstOrDefault();
        }
    }

    public void InsertarUsuario(EPersona user)
    {
        using (var db = new Mapeo())
        {
            db.persona.Add(user);
            db.SaveChanges();
            
        }
        
    }
   
    public List<EPersona> obtenerUsuarios()
    {
        using (var db = new Mapeo())
        {
            return (from uu in db.persona
                    join rol in db.rol on uu.Id_rol equals rol.Id

                    select new
                    {
                        uu,
                        rol
                    }).ToList().Select(m => new EPersona
                    {
                        Identificacion = m.uu.Identificacion,
                        Nombre = m.uu.Nombre,
                        Apellido = m.uu.Apellido,
                        Telefono = m.uu.Telefono,
                        Username = m.uu.Username,
                        Clave = m.uu.Clave,
                        Correo = m.uu.Correo,
                        Descripcion_Rol = m.rol.Descripcion_rol,
                        Id_rol = m.uu.Id_rol



                    }).ToList();
        }
    }
    public void ActualizarUsuario(EPersona user)
    {
        using (var db = new Mapeo())
        {

            EPersona user2 = db.persona.Where(x => x.Id == user.Id).First();
            user2.Identificacion = user.Identificacion;
            user2.Nombre = user.Nombre;
            user2.Apellido = user.Apellido;
            user2.Telefono = user.Telefono;
            user2.Username = user.Username;
            user2.Clave = user.Clave;
            user2.Correo = user.Correo;
            user2.Descripcion_Rol = user.Descripcion_Rol;
            user2.Id_rol = user.Id_rol;
            user2.Token = user.Token;
            user2.Estado_id = user.Estado_id;

            db.persona.Attach(user2);

            var entry = db.Entry(user2);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
}