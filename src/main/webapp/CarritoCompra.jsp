<%-- 
    Document   : CarritoCompra
    Created on : 22-oct-2016, 18:05:00
    Author     : orteg
--%>

<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="producto" scope="session" class="Entidades.Producto" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito Compra</title>
    </head>
    <body>
        <form action="CarritoServlet" method="POST">
            <select name="lista" multiple="Multiple">
                <%
                    List<Entidades.Producto> lista = (List) session.getAttribute("listaProductos");

                    for (Entidades.Producto p : lista) {
                        String nombre = p.getNombre();
                        Integer cantidad = p.getCantidad();
                %>
                <option><%=nombre%></option>
                <%
                    }

                %>
            </select>
            <input type="submit" name="Añadir al Carrito" value="" />
        </form>
    </body>
</html>
