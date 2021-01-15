<%-- 
    Document   : notamedia
    Created on : 15-ene-2021, 21:14:52
    Author     : Juanjo Cortés
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String nombre = request.getParameter("nombre"); 
           int nota1 = Integer.parseInt(request.getParameter("nota1"));
           int nota2 = Integer.parseInt(request.getParameter("nota2"));
           int nota3 = Integer.parseInt(request.getParameter("nota3"));
           int notamedia = (nota1+nota2+nota3)/3;
           
           if(notamedia<5){
        %>
          <h1 style="color:red">La nota media de <%=nombre%> es: SUSPENSO</h1>
        <% }else{ %>
          <h1 style="color:green">La nota media de <%=nombre%> es: APROBADO</h1>  
        <% } %>
    </body>
</html>
