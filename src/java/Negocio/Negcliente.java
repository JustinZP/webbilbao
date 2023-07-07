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
public class Negcliente
{
    public ResultSet MtdListar() throws SQLException
    {
        String consulta="SELECT * FROM tbcliente";
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
    public Boolean MtdAgregarCliente(Encliente Ecli)
    {
        String consulta="insert into tbcliente"
                + "(dni, nombre, apellido, direccion, celular, email, contraseña)"
                + "values('"+Ecli.getDni()+"','"+Ecli.getNom()+"','"+Ecli.getApe()+"','"+Ecli.getDir()+"','"+Ecli.getCel()+"','"+Ecli.getEmail()+"','"+Ecli.getClave()+"');";
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
