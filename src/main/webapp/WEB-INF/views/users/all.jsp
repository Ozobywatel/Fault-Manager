<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All users list</h1>
        <div class="my-2"></div>
        <a href='<c:url value="/admin/users/add"/>' class="btn btn-secondary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
            <span class="text"> Add new user </span>
        </a>

    </div>


</div>
<div class="card shadow mb-4">
        <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>username</th>
                    <th>enabled</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>username</th>
                    <th>enabled</th>
                    <th>Action</th>
                </tr>
                </tfoot>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.enabled}</td>
                        <td>

                            <a href="<c:url value="/admin/users/edit/${user.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/admin/users/delete/${user.username}"/>" class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                <span class="text">Delete</span>
                            </a>
                            <a href="<c:url value="/admin/users/enable/${user.username}"/>" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                <span class="text">Enable</span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/footer.jsp" %>