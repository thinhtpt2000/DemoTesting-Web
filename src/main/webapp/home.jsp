<%-- 
    Document   : home
    Created on : Nov 7, 2020, 1:27:45 AM
    Author     : ThinhTPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Home Page</h1>
        <h3 id="welcome-msg">
            Hi, ${sessionScope.USER_INFO.fullName}!
        </h3>
    </body>
</html>
