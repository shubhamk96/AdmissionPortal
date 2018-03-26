<%-- 
    Document   : logout
    Created on : Mar 26, 2018, 12:31:48 PM
    Author     : sbk11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<META http-equiv="refresh" content="3,URL=http://localhost:8080/AdmissionPortal">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session=request.getSession();  
            session.invalidate();  
        %>
        <div align="center" style="margin-top: 150px;">
        <h2>You are successfully logged out!!!</h2>
        <h3>You will automatically redirect in some seconds.... If not <a href="index.html">Click Here</A> </H3>
        </div>
    </body>
</html>
