<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("listapro") == null){
        ArrayList<Producto>lisaux=new ArrayList<Producto>();
        session.setAttribute("listapro",lisaux);
    }
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <thead>
    <tr>
        <br>SEGUNDO PARCIAL TECNOLOGÍAS EMERGENTES II</br>
        <br>Nombre: Neyda Zulema Condori Tarqui</br>
        <br>Carnet: 7029472</br>
    </tr>
            </thead>
    </table>
        <h1>Gestión de Productos</h1>
        <a href="MainServlet?op=nuevo">Nuevo producto</a><!-- comment -->
        <table border="1" bgcolor="silver">
            <tr>
                <th>Id</th>
                <th>Descripción</th><!-- comment -->
                <th>Cantidad</th>  
                <th>Precio</th>
                <th>Categoría</th>
                <th></th>
                <th></th>
            </tr>   
            <%
                if(lista != null){
                    for(Producto item :lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td><!-- comment -->
                <td><%=item.getCantidad() %></td><!-- comment -->
                <td><%= item.getPrecio() %></td><!-- comment -->
                <td><%=item.getCategoria()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"onclick
                       ="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
                </td>
            </tr>
            <%
                }
            }
            %>
        </table>
    </body>
</html>
