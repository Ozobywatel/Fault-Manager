<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users List</title>
</head>
<body>

<table border="1">
    <thead>
    <th>id</th>
    <th>adminRole</th>
    <th>created</th>
    <th>email</th>
    <th>firstName</th>
    <th>lastName</th>
    <th>action</th>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.adminRole}"/></td>
            <td><c:out value="${user.created}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.firstName}"/></td>
            <td><c:out value="${user.lastName}"/></td>
            <td>
                <a href="<c:out value="/admin/users/edit/${user.id}"/>">Edytuj</a>
                <a href="<c:out value="/admin/users/delete/${user.id}"/>">Usuń</a>
                <a href="<c:out value="/admin/users/show/${user.id}"/>">Pokaż</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

