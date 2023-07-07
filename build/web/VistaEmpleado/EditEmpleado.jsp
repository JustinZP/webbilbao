<%-- 
    Document   : EditEmpleado
    Created on : 23 oct. 2022, 20:44:00
    Author     : iFiXiT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="java.util.*"%>
        <%@page import="Conexion.*"%>
        <%@page import="Entidad.*"%>
        <%@page import="Negocio.*"%>
        <%
            String dni,nom,ape,dir;
            dni=request.getParameter("dni");
            nom=request.getParameter("nom");
            ape=request.getParameter("ape");
            dir=request.getParameter("dir");
        %>
        <h1>Modificar Datos</h1>
        <form action="" method="get">
            <table>
                <tr><td>DNI: </td>
                    <td><input type="text" value="<%=dni%>" name="txtdni"/></td>
                </tr>
                <tr><td>NOMBRE: </td>
                    <td><input type="text" value="<%=nom%>" name="txtnom"/></td>
                </tr>
                <tr><td>APELLIDO: </td>
                    <td><input type="text" value="<%=ape%>"  name="txtape"/></td>
                </tr>
                <tr><td>DIRECCION: </td>
                    <td><input type="text" value="<%=dir%>" name="txtdir"/></td>
                </tr>
                <tr><td colspan="2"><input type="submit" name="enviar" value="Guardar"/></td></tr>
            </table>
        </form>
    </body>
    <%
        if(request.getParameter("Guardar")!=null)
        {
            Enempleado objEemp = new Enempleado();
            Negempleado objNemp = new Negempleado();
            int dni1=Integer.parseInt(request.getParameter("txtdni"));
            objEemp.setDni(dni1);
            objEemp.setNom(request.getParameter("txtnom"));
            objEemp.setApe(request.getParameter("txtape"));
            objEemp.setDir(request.getParameter("txtdir"));
            if(objNemp.MtdEditEmpleado(objEemp)==true)
            {
                System.out.println("Se a agregado correctamente");
                response.sendRedirect("index.jsp");
            }
            else
            {
                System.out.println("Error de base de datos");
            }
        }
    %>
</html>
