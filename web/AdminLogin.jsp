<%-- 
    Document   : AdminLogin
    Created on : Sep 12, 2022, 2:46:26 AM
    Author     : Hakim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Login Page"/>
    </jsp:include>
    <body>
        <form class="login-center card w-25 p-3" action="LoginServlet" method="post">
            <input name="name" type="text" placeholder="name" class="form-control mb-1"/>
            <input name="password" type="password" placeholder="password" class="form-control mb-1"/>
            
            <input type="submit" value="login"/>
        </form>
    </body>
</html>
