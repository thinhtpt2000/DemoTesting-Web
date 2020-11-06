<%-- 
    Document   : login
    Created on : Nov 7, 2020, 1:23:27 AM
    Author     : ThinhTPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <c:if test="${not empty requestScope.ERR_MSG}">
            <span id="error-msg">
                ${requestScope.ERR_MSG}
            </span>
        </c:if>
        <form method="POST" action="login">
            Username: <input type="text" name="txtUsername" value="${param.txtUsername}" /><br/>
            Password: <input type="password" name="txtPassword" value="" /><br/>
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
