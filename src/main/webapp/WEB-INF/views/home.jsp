<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>
<body>

<sec:authorize access="isAnonymous()">
<a class="btn btn-primary btn-user btn-block" href="<c:url value="/login"/>">Login</a>
</sec:authorize>
<br/>
<sec:authorize access="isAuthenticated()">
<a class="btn btn-primary btn-user btn-block" href="<c:url value="/app/dash"/>">Application Fault Manager ---></a>
</sec:authorize>
<br/>
<sec:authorize access="hasRole('ADMIN')">
<a class="btn btn-primary btn-user btn-block" href="<c:url value="/admin/panel"/>">Admin panel ---></a>
</sec:authorize>
<br/>
<sec:authorize access="isAuthenticated()">
    <form action="<c:url value="/logout"/>" method="post">
        <input type="submit" class="btn btn-primary btn-user btn-block" value="Logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</sec:authorize>

</body>
</html>
