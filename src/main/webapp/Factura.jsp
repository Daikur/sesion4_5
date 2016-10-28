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
        <table border="1">
            <thead>
            <th>Nombre</th>
            <th>Cantidad</th>
            <th>Precio por Unidad</th>
        </thead>
        <tbody>     
            <%
                List<Entidades.Producto> lista = (List) session.getAttribute("listaCompra");
                for (Entidades.Producto p : lista) {
                    String nombre = p.getNombre();
                    Integer cantidad = p.getCantidad();
                    Integer precioParcial = p.getPrecio();
            %>
            <tr>
                <td><%=nombre%></td>
                <td><%=cantidad%></td>
                <td><%=precioParcial%></td>
            </tr>
            <% } %>
        </tbody>    
    </table>
    <%    

        Integer precio = (Integer) session.getAttribute("precioFinal");

    %>
    <br>
    Precio Final: <%=precio%>
</body>
</html>
