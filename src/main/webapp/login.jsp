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
        <title>Login Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <div class="row">
                <!-- SIGN IN -->
                <div class="card col-sm-6 mx-auto bg-dark text-light">
                    <article class="card-body">
                        <h4 class="card-title mb-4 mt-1">Sign in</h4>
                        <form method="POST" action="login">
                            <div class="form-group">
                                <label>Username</label>
                                <input
                                    name="txtUsername"
                                    class="form-control"
                                    placeholder="Email"
                                    type="email"
                                    value="${param.txtUsername}"
                                    />
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input
                                    name="txtPassword"
                                    class="form-control"
                                    placeholder="******"
                                    type="password"
                                    />
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-block bg-warning text-light">
                                    <strong>
                                        Sign in
                                    </strong>
                                </button>
                            </div>
                        </form>
                        <c:if test="${not empty requestScope.ERR_MSG}">
                            <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
                                <strong id="error-msg" >${requestScope.ERR_MSG}</strong>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </c:if>
                    </article>
                </div>
            </div>
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
