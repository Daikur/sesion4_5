<%-- 
    Document   : CarritoCompra
    Created on : 22-oct-2016, 18:05:00
    Author     : orteg
--%>

<%@page import="java.util.List"%>
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
            <select name="lista">
                <%
                    List<Entidades.Producto> lista = (List) session.getAttribute("listaProductos");
                    for (Entidades.Producto p : lista) {
                        String nombre = p.getNombre();
                %>
                <option><%=nombre%></option>
                <%
                    }%>

            </select>
            <br>
            <br>
            <select>
                <%
                    for (Entidades.Producto p : lista) {
                        if (p.getCantidad() != 0) {
                            String nombre = p.getNombre();
                            Integer cantidad = p.getCantidad();
                %>
                <option><%=nombre%> - <%=cantidad%></option>
                <% }
                    }%>
            </select>
            <input type="submit" value="Añadir" />
            <br>
        </form>
        <form action="FinalizarCompra" method="POST" >
            <input type="submit" value="Total" />
        </form>
    </body>
</html>
