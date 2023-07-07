/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Conexion;
import java.sql.*;

/**
 *
 * @author iFiXiT
 */
public class conexion
{
    private static Connection cnx = null;
    
    public static Connection obtener() throws SQLException, ClassNotFoundException
    {
        if(cnx == null)
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbbiblioteca", "root", "");
            }
            catch (SQLException ex)
            {
                throw new SQLException(ex);
            }
            catch (ClassNotFoundException ex)
            {
                throw new ClassCastException(ex.getMessage());
            }
        }
        return cnx;
    }
    
    public static void cerrar() throws SQLException
    {
        if(cnx != null)
        {
            cnx.close();
        }
    }
    
}
