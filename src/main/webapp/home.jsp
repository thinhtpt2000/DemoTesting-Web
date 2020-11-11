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
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
            />
    </head>
    <body>
        <h2 class="text-center my-4 shop-name text-warning">
            <strong>
                Demo Automation Testing
            </strong>
        </h2>
        <div class="container">
            <div class="row my-4 mx-auto col-sm-6">
                <h3 id="welcome-msg" class="text-success col-sm-6 mx-auto">
                    Ahihi, ${sessionScope.USER_INFO.fullName}!
                </h3>
                <div class="col-sm-3 mx-auto">
                    <a class="btn btn-warning" href="signOut">Sign Out</a>
                </div>
            </div>
            <div class="row">
                <img src="img/TestOps.svg" class="mx-auto"/>
            </div>
        </h3>
    </div>
    <script
        src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"
    ></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"
    ></script>
</body>
</html>
