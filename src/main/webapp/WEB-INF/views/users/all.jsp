<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All users</h1>
        <a href='<c:url value="/admin/users/add"/>' class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Add new user </a>

    </div>


</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Users list</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Email</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Email</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Action</th>
                </tr>
                </tfoot>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.email}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>
                            <a href="<c:url value="/admin/users/${user.id}"/>"
                               class="btn btn-danger rounded-0 text-light m-1">Delete</a>
                            <a href="<c:url value="/admin/users/${user.id}"/>"
                               class="btn btn-info rounded-0 text-light m-1">Details</a>
                            <a href="<c:url value="/admin/users/${user.id}"/>"
                               class="btn btn-warning rounded-0 text-light m-1">Edit</a>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>



<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>