<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><c:out value="${project.projectName}"/> project details:</h1>
        <div class="my-2"></div>
    </div>


</div>
<div class="card shadow mb-4">
        <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Project name</th>
                    <th>Street</th>
                    <th>Number</th>
                    <th>Postal code</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>

                    <tr>
                        <td><c:out value="${project.id}"/></td>
                        <td><c:out value="${project.projectName}"/></td>
                        <td><c:out value="${project.addressStreet}"/></td>
                        <td><c:out value="${project.addressNumber}"/></td>
                        <td><c:out value="${project.addressZipCode}"/></td>
                        <td><c:out value="${project.addressCity}"/></td>
                        <td><c:out value="${project.addressCountry}"/></td>
                        <td>
                            <a href="<c:url value="/admin/projects/edit/${project.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/admin/projects/delete/${project.id}"/>" class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                <span class="text">Delete</span>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>



<%@ include file="/WEB-INF/views/footer.jsp" %>