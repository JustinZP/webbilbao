/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocio;
import Conexion.conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Entidad.*;

/**
 *
 * @author iFiXiT
 */
public class Negempleado
{
    public ResultSet MtdListar() throws SQLException
    {
        String consulta="SELECT * FROM tbempleado";
        try
        {
            Statement sentencia = conexion.obtener().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            return resultado;
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }
    public Boolean MtdAgregarEmpleado(Enempleado Eemp)
    {
        String consulta="insert into tbempleado"
                + "(dni, nombre, apellido, direccion, celular, email, contraseña, estado)"
                + "values('"+Eemp.getDni()+"','"+Eemp.getNom()+"','"+Eemp.getApe()+"','"+Eemp.getDir()+"','"+Eemp.getCel()+"','"+Eemp.getEmail()+"','"+Eemp.getClave()+"','"+Eemp.getEst()+"');";
        System.out.println(consulta);
        try
        {
            Statement st = conexion.obtener().createStatement();
            st.executeUpdate(consulta);
            return true;
        }
        catch(Exception e)
        {
            System.out.println(e);
            return false;
        }
    }
    public void MtdOnEmpleado (int dni)
    {     
        String consulta="UPDATE tbempleado SET estado='A' where dni="+dni;
        System.out.println(consulta);
        try
        {
            Statement st = conexion.obtener().createStatement();
            st.executeUpdate(consulta);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public void MtdOffEmpleado (int dni)
    {     
        String consulta="UPDATE tbempleado SET estado='I' where dni="+dni;
        System.out.println(consulta);
        try
        {
            Statement st = conexion.obtener().createStatement();
            st.executeUpdate(consulta);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public Boolean MtdEditEmpleado(Enempleado Eemp)
    {     
        String consulta="UPDATE tbempleado SET nombre="+Eemp.getNom()+" apellido="+Eemp.getApe()+" direccion="+Eemp.getDir()+" where dni="+Eemp.getDni();
        System.out.println(consulta);
        try
        {
            Statement st = conexion.obtener().createStatement();
            st.executeUpdate(consulta);
            return true;
        }
        catch(Exception e)
        {
            System.out.println(e);
            return false;
        }
    }
}
