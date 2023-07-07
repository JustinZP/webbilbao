<%-- 
    Document   : AddEmpleado
    Created on : 23 oct. 2022, 20:13:47
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
        <h1>Registro Cliente</h1>
        <form action="">
            <label>Dni:</label>
            <input type="text" name="txtdni"> <br>
            <label>Nombre:</label>
            <input type="text" name="txtnom">
            <label>Apellido:</label>
            <input type="text" name="txtape"> <br>
            <label>Direcion:</label>
            <input type="text" name="txtdir">
            <label>Celular:</label>
            <input type="text" name="txtcel"> <br>
            <label>Email:</label>
            <input type="text" name="txtemail">
            <label>Contraseña:</label>
            <input type="text" name="txtclave"> <br>
            <center><input type="submit" name="Agregar"></center>
        </form>
    </body>
    <%
        if(request.getParameter("Agregar")!=null)
        {
            Encliente objEcli = new Encliente();
            Negcliente objNcli = new Negcliente();
            int dni=Integer.parseInt(request.getParameter("txtdni"));
            objEcli.setDni(dni);
            objEcli.setNom(request.getParameter("txtnom"));
            objEcli.setApe(request.getParameter("txtape"));
            objEcli.setDir(request.getParameter("txtdir"));
            int cel=Integer.parseInt(request.getParameter("txtcel"));
            objEcli.setCel(cel);
            objEcli.setEmail(request.getParameter("txtemail"));
            objEcli.setClave(request.getParameter("txtclave"));
            if(objNcli.MtdAgregarCliente(objEcli)==true)
            {
                System.out.println("Se a agregado correctamente");
                response.sendRedirect("socio.jsp");
            }
            else
            {
                System.out.println("Error de base de datos");
            }
        }
    %>
</html>
