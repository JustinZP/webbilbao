<%-- 
    Document   : OffEmpleado
    Created on : 23 oct. 2022, 20:44:08
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
    </body>
</html>
<%
    Enempleado objEemp = new Enempleado();
    Negempleado objNemp = new Negempleado();
    int dni1=Integer.parseInt(request.getParameter("dni"));
    objEemp.setDni(dni1);
    objNemp.MtdOnEmpleado(dni1);
    response.sendRedirect("index.jsp");
%>
