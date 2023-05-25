package com.examen.mostrar;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.examen.datos.Conexion;
import com.productos.negocio.Producto;

public class Grupo {
	 private int id;
	 private String nombre;
	 private String descripcion;
	 private Date fecha;
	 private String ubicacion;
	 private byte[] foto;

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getNombre() {
	        return nombre;
	    }

	    public void setNombre(String nombre) {
	        this.nombre = nombre;
	    }

	    public String getDescripcion() {
	        return descripcion;
	    }

	    public void setDescripcion(String descripcion) {
	        this.descripcion = descripcion;
	    }

	    public Date getFecha() {
	        return fecha;
	    }

	    public void setFecha(Date fecha) {
	        this.fecha = fecha;
	    }

	    public String getUbicacion() {
	        return ubicacion;
	    }

	    public void setUbicacion(String ubicacion) {
	        this.ubicacion = ubicacion;
	    }

	    public byte[] getFoto() {
	        return foto;
	    }

	    public void setFoto(byte[] foto) {
	        this.foto = foto;
	    }
	
    public String consultarTodo() {
        String sql = "SELECT * FROM tb_eventos ORDER BY id";
        Conexion con = new Conexion();
        String tabla = "<table class=\"tabla\" border=\"1\"><th>ID</th><th>Nombre</th><th>Descripción</th><th>Fecha</th><th>Ubicación</th><th>Foto</th>";
        ResultSet rs = null;
        rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                tabla += "<tr><td>" + rs.getInt("id") + "</td>"
                        + "<td>" + rs.getString("nombre") + "</td>"
                        + "<td>" + rs.getString("descripcion") + "</td>"
                        + "<td>" + rs.getDate("fecha") + "</td>"
                        + "<td>" + rs.getString("ubicacion") + "</td>"
                        + "<td><img src=\"mostrarFoto.jsp?id=" + rs.getInt("id") + "\"></td>"
                        + "</tr>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla += "</table>";
        return tabla;
    }

    public String ingresarEvento(int id, String nombre, String descripcion, String fecha, String ubicacion) {
        String result = "";
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        String sql = "INSERT INTO tb_eventos (id, nombre, descripcion, fecha, ubicacion) VALUES (?, ?, ?, ?, ?)";

        try {
            pr = con.getConexion().prepareStatement(sql);
            pr.setInt(1, id);
            pr.setString(2, nombre);
            pr.setString(3, descripcion);
            pr.setDate(4, java.sql.Date.valueOf(fecha));
            pr.setString(5, ubicacion);

            if (pr.executeUpdate() == 1) {
                result = "Inserción correcta";
            } else {
                result = "Error en inserción";
            }
        } catch (Exception ex) {
            result = ex.getMessage();
        } finally {
            try {
                pr.close();
                con.getConexion().close();
            } catch (Exception ex) {
                System.out.print(ex.getMessage());
            }
        }

        return result;
    }
    
    public String ingresarNuevo(int id_us, int id_per, String nombre_us, String direccion_us, String login_us, String clave_us) {
        String result = "";
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        String sql = "INSERT INTO public.tb_usuario (id_us, id_per, nombre_us, direccion_us, login_us, clave_us) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            pr = con.getConexion().prepareStatement(sql);
            pr.setInt(1, id_us);
            pr.setInt(2, id_per);
            pr.setString(3, nombre_us);
            pr.setString(4, direccion_us);
            pr.setString(5, login_us);
            pr.setString(6, clave_us);

            if (pr.executeUpdate() == 1) {
                result = "Inserción correcta";
            } else {
                result = "Error en inserción";
            }
        } catch (Exception ex) {
            result = ex.getMessage();
        } finally {
            try {
                pr.close();
                con.getConexion().close();
            } catch (Exception ex) {
                System.out.print(ex.getMessage());
            }
        }

        return result;
    }
    
    public String consultarEvento() {
        String sql = "SELECT * FROM tb_eventos ORDER BY id";
        Conexion con = new Conexion();
        String tabla = "<table class=\"tabla\" border=\"1\"><th>ID</th><th>Nombre</th><th>Descripción</th><th>Fecha</th><th>Ubicación</th><th>Foto</th><th>Modificar</th><th>Eliminar</th>";
        ResultSet rs = null;
        rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                tabla += "<tr><td>" + rs.getInt("id") + "</td>"
                        + "<td>" + rs.getString("nombre") + "</td>"
                        + "<td>" + rs.getString("descripcion") + "</td>"
                        + "<td>" + rs.getDate("fecha") + "</td>"
                        + "<td>" + rs.getString("ubicacion") + "</td>"
                        + "<td><img src=\"mostrarFoto.jsp?id=" + rs.getInt("id") + "\"></td>"
                        + "<td><a href=\"ModificarEvento.jsp?id=" + rs.getInt("id") + "\">Modificar</a></td>"
                        + "<td><a href=\"EliminarEvento.jsp?id=" + rs.getInt("id") + "\">Eliminar</a></td>"
                        + "</tr>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla += "</table>";
        return tabla;
    }

    
    public String consultarEventos(int cod) {
		String tabla = "<table border=1>";
		String sql = "SELECT id_pr, nombre_pr, cantidad_pr, precio_pr"
				+ "	FROM public.tb_producto where id_cat = "+cod+";";
		ResultSet rs = null;
		tabla += "<tr>"
				+ "<th>Codigo</th>"
				+ "<th>Descripcion</th>"
				+ "<th>Precio</th>"
				+ "<th>Cantidad</th>"
				+ "</tr>";
		Conexion con=new Conexion();
			rs=con.Consulta(sql);
		try {
			while(rs.next()) {
				tabla += "<tr>"
						+ "<td><pre style=\"text-align: center\">"+rs.getInt(1)+"</pre></td>"
						+ "<td><pre style=\"text-align: center\">"+rs.getString(2)+"</pre></td>"
						+ "<td><pre style=\"text-align: center\">"+rs.getFloat(3)+"</pre></td>"
						+ "<td><pre style=\"text-align: center\">"+rs.getInt(4)+"</pre></td>"
						+ "<td><a href= BuscarEventos.jsp?cod="+rs.getInt(1)+"><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td><a href= EliminarEventos.jsp?cod="+rs.getInt(1)+"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
			tabla += "</table>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return tabla;
	}

    public void consultarEditarEvento(int cod) {
        Conexion con = new Conexion();
        ResultSet rs = null;
        String sql = "SELECT id, nombre, descripcion, fecha, ubicacion"
                + " FROM tb_eventos WHERE id = " + cod + ";";
        rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                setId(rs.getInt(1));
                setNombre(rs.getString(2));
                setDescripcion(rs.getString(3));
                setFecha(rs.getDate(4));
                setUbicacion(rs.getString(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean ModificarEvento(Grupo evento) {
        boolean actualizado = false;
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        String sql = "UPDATE tb_eventos SET nombre=?, descripcion=?, fecha=?, ubicacion=? WHERE id=?";

        try {
            pr = con.getConexion().prepareStatement(sql);
            pr.setString(1, evento.getNombre());
            pr.setString(2, evento.getDescripcion());
            pr.setDate(3, evento.getFecha());
            pr.setString(4, evento.getUbicacion());
            pr.setInt(5, evento.getId());

            if (pr.executeUpdate() == 1) {
                actualizado = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pr.close();
                con.getConexion().close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return actualizado;
    }

    public boolean EliminarEvento(int id) {
        boolean eliminado = false;
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        String sql = "DELETE FROM tb_eventos WHERE id=?";

        try {
            pr = con.getConexion().prepareStatement(sql);
            pr.setInt(1, id);

            if (pr.executeUpdate() == 1) {
                eliminado = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pr.close();
                con.getConexion().close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return eliminado;
    }
    
    public String ingresarPostulantes(String ced, String nombre_us, String correo, String telefono, String hoja_vida, boolean estado) {
        String result = "";
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        String sql = "INSERT INTO public.tb_postulantes (cedula, nombres, correo_electronico, celular, hoja_de_vida, estado) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            pr = con.getConexion().prepareStatement(sql);
            pr.setString(1, ced);
            pr.setString(2, nombre_us);
            pr.setString(3, correo);
            pr.setString(4, telefono);
            pr.setString(5, hoja_vida);
            pr.setBoolean(6, estado);

            if (pr.executeUpdate() == 1) {
                result = "Inserción correcta";
            } else {
                result = "Error en inserción";
            }
        } catch (Exception ex) {
            result = ex.getMessage();
        } finally {
            try {
                pr.close();
                con.getConexion().close();
            } catch (Exception ex) {
                System.out.print(ex.getMessage());
            }
        }
        return result;
    }
    
    public String consultarPostulantes() {
        String sql = "SELECT * FROM tb_postulantes ORDER BY estado";
        Conexion con = new Conexion();
        String tabla = "<table class=\"tabla\" border=\"1\"><th>Cedula</th><th>Nombres</th><th>Hoja de vida</th><th>Estado</th>";
        ResultSet rs = null;
        rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                tabla += "<tr><td>" + rs.getString(1) + "</td>"
                        + "<td>" + rs.getString(2) + "</td>"
                        + "<td>" + rs.getString(5) + "</td>"
                        + "<td>" + rs.getBoolean(6) + "</td>"
                        + "<td><a href= AceptarPostulacion.jsp?cod="+rs.getInt(1)+"><pre style=\"text-align: center\" class=\"btn\">Aceptar</pre></a></td>"
						+ "<td><a href= NegarPostulacion.jsp?cod="+rs.getInt(1)+"><pre style=\"text-align: center\" class=\"btn\">Negar</pre></a></td>"
						+ "</tr>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla += "</table>";
        return tabla;
    }
    
    public String consultarEstado() {
        String sql = "SELECT * FROM tb_postulantes ORDER BY estado";
        Conexion con = new Conexion();
        String tabla = "<table class=\"tabla\" border=\"1\"><th>Cedula</th><th>Nombres</th><th>Hoja de vida</th><th>Estado</th>";
        ResultSet rs = null;
        rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                tabla += "<tr><td>" + rs.getString(1) + "</td>"
                        + "<td>" + rs.getString(2) + "</td>"
                        + "<td>" + rs.getString(5) + "</td>"
                        + "<td>" + rs.getBoolean(6) + "</td>"
						+ "</tr>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla += "</table>";
        return tabla;
    }
    
    public boolean PostulacionAceptar(String ced_post) {
    	String sql = "SELECT * FROM tb_postulantes WHERE cedula = '" + ced_post + "';";
    	boolean result = false;
    	ResultSet rs = null;
    	Conexion con = new Conexion();
    	System.out.print(sql);
    	rs = con.Consulta(sql);
    	try {
    		if(rs.next()) {
    			String actualizar = "UPDATE tb_postulantes SET estado = " + true + " WHERE cedula = '" + ced_post + "';";
    			con.Ejecutar(actualizar);
    			result = true;
    		} else {
    			result = false;
    			rs.close();
    		}
    	} catch (Exception ex) {
    		System.out.println(ex.getMessage());
    	}
    	return result;
    }
    
    public boolean PostulacionNegar(String ced_post) {
    	String sql = "SELECT * FROM tb_postulantes WHERE cedula = '" + ced_post + "';";
    	boolean result = false;
    	ResultSet rs = null;
    	Conexion con = new Conexion();
    	System.out.print(sql);
    	rs = con.Consulta(sql);
    	try {
    		if(rs.next()) {
    			String actualizar = "UPDATE tb_postulantes SET estado = " + false + " WHERE cedula = '" + ced_post + "';";
    			con.Ejecutar(actualizar);
    			result = true;
    		} else {
    			result = false;
    			rs.close();
    		}
    	} catch (Exception ex) {
    		System.out.println(ex.getMessage());
    	}
    	return result;
    }

}
