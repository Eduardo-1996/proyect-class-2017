<%-- 
    Document   : insertaProducto
    Created on : 04-may-2017, 12:01:38
    Author     : Eduardo
--%>

<%@page import="Almancen.Fichero"%>
<%@page import="Almancen.Almacen"%>
<%@page import="java.io.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar producto</title>
    </head>
    <%
            String Producto=request.getParameter("Producto");
            String Precios=request.getParameter("Precios");
            int codigo;
            String respuesta;
            
            
            try{
                Fichero f = new Fichero("Almacen.bin","ab");
               codigo= Integer.parseUnsignedInt(request.getParameter("codigo"));   
                if(Producto==null 
                        || Precios==null 
                        || request.getParameter("codigo")==null)
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    f.escribirObjeto(new Almacen (Producto,Precios,codigo));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta="Error en los numeros";
            }
            
            
        %>
    <body>
        <h1>Insertar compra</h1>
        <%@include file="html/nav.html" %>
        <h2>Lista Provisional</h2>
        <form action="insertaProducto.jsp" method="GET">
            Producto:<input type="text" name="Producto"><br>
            Precios:<input type="number" name="Precios"><br>
            codigo:<input type="number" name="codigo"><br>
            <input type="submit" value="Enviar">
            <input type="reset" value="Limpiar lista">
        </form>
        <p><%=respuesta%></p>
              
    </body>
</html>
