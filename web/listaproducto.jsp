<%-- 
    Document   : listaproducto
    Created on : 02-may-2017, 23:16:50
    Author     : Eduardo
--%>

<%@page import="java.io.EOFException"%>
<%@page import="Almancen.Fichero"%>
<%@page import="java.io.*"%>
<%@page import="Almancen.Almacen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de producto</title>
    </head>
    <body>
        <h1>Lista alumno</h1>
        <%@include file="html/nav.html" %>
        <table>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
                <th>codigo</th>
            </tr>
        <%
            ObjectInputStream ois;
            String respuesta="Cuesta ...";
            
           
                Fichero f = new Fichero("fichero.bin","rb");
             Almacen aux = ( Almacen) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr>\n"
                            + "<td>"+aux.getProducto()+"</td>\n"
                            + "<td>"+aux.getprecios()+"<td>\n"
                            + "<td>"+aux.getcodigo()+"</td>\n"
                            + "</tr>\n";
                    //respuesta+=aux.toString();
                   
                    
                    aux = ( Almacen) f.leerObjeto();
                }
            
            f.close();
        %>
        <%=respuesta%>
       </table>
        
    </body>
</html>
