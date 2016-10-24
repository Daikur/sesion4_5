<%-- 
    Document   : Factura
    Created on : 24-oct-2016, 10:50:22
    Author     : alumno
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factura</title>
    </head>
    <body>
        Precio Final : <% session.getAttribute("precio"); %> €
    </body>
</html>
