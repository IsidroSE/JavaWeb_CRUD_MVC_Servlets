<%-- 
    Document   : Mostrar_Personas
    Created on : 14-feb-2017, 19:32:15
    Author     : Isidro
--%>

<%@page import="java.util.List"%>
<%@page import="Entidad.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de personas:</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellidos</th>
            </tr>
        <% List<Persona> lista_personas = (List<Persona>)request.getAttribute("lista");
            for (int i = 0 ; i < lista_personas.size() ; i++) { %>
            <tr>
                <td><%= lista_personas.get(i).getId() %></td>
                <td><%= lista_personas.get(i).getNombre() %></td>
                <td><%= lista_personas.get(i).getApellidos() %></td>
            </tr>
            <% } 
        %>
        </table>
    </body>
</html>
