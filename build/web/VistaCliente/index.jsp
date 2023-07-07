<%-- 
    Document   : index
    Created on : 23 oct. 2022, 21:52:56
    Author     : iFiXiT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="Conexion.*"%>
<%@page import="Entidad.*"%>
<%@page import="Negocio.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Connection con = null;
            ResultSet rs;
            try
            {
                Negcliente objcli =new Negcliente();
                rs=objcli.MtdListar();
                
        %>
        <table border="1" width="90%">
            <thead>
                <th>Dni</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Direccion</th>
                <th>Celular</th>
                <th>Email</th>
                <th>Contraseña</th>
            </thead>
            <%  while (rs.next())
                {
                    String dni = rs.getString("dni");
            %>
        <tbody>
            <tr>
                <td><%= rs.getString("dni")%></td>
                <td><%= rs.getString("nombre")%></td>
                <td><%= rs.getString("apellido")%></td>
                <td><%= rs.getString("direccion")%></td>
                <td><%= rs.getString("celular")%></td>
                <td><%= rs.getString("email")%></td>
                <td><%= rs.getString("contraseña")%></td>
            </tr>
            <%  
                }
                }
                catch (Exception e)
                {
                    System.out.println(e.toString());
                }
            %>
        </tbody>
    </table>
    </body>
</html>
