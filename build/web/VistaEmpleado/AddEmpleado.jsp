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
        <h1>Registro de Un Empleado</h1>
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
            Enempleado objEemp = new Enempleado();
            Negempleado objNemp = new Negempleado();
            int dni=Integer.parseInt(request.getParameter("txtdni"));
            objEemp.setDni(dni);
            objEemp.setNom(request.getParameter("txtnom"));
            objEemp.setApe(request.getParameter("txtape"));
            objEemp.setDir(request.getParameter("txtdir"));
            int cel=Integer.parseInt(request.getParameter("txtcel"));
            objEemp.setCel(cel);
            objEemp.setEmail(request.getParameter("txtemail"));
            objEemp.setClave(request.getParameter("txtclave"));
            objEemp.setEst("A");
            if(objNemp.MtdAgregarEmpleado(objEemp)==true)
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
