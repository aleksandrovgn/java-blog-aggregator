<%--
  Created by IntelliJ IDEA.
  User: george
  Date: 21.08.2016
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title><tiles:getAsString name="title" /></title>
</head>
<body>
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>
<tilesx:useAttribute name="current" />
<div class="container">
    <!-- Static navbar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<spring:url value="/"/>">JBA</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="${current == 'index' ? 'active' : ''}"><a href='<spring:url value="/"/>'>Home</a></li>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                        <li class="${current == 'users' ? 'active' : ''}"><a href="<spring:url value="/users.html"/>">Users</a></li>
                    </security:authorize>
                    <security:authorize access="! isAuthenticated()">
                        <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/register.html"/>">Registration</a></li>
                        <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/login.html"/>">Login</a></li>
                    </security:authorize>
                    <security:authorize access="isAuthenticated()">
                        <li><a href="<spring:url value="/logout.html"/>">Logout</a></li>
                    </security:authorize>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
    <tiles:insertAttribute name="body" />
    <br><br>
    <tiles:insertAttribute name="footer" />
 </div>
</body>
</html>
