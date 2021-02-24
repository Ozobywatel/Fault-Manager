<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All buildings list</h1>
        <div class="my-2"></div>
        <a href='<c:url value="/app/documents/add"/>' class="btn btn-secondary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
            <span class="text"> Add new document </span>
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
                    <th>Project</th>
                    <th>Building name</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${buildings}" var="building">
                    <tr>
                        <td>${building.id}</td>
                        <td>${building.project.projectName}</td>
                        <td>${building.buildingName}</td>
                        <td>${building.addressCity}</td>
                        <td>${building.addressCountry}</td>
                        <td>
                            <a href="<c:url value="/admin/buildings/details/${building.id}"/>" class="btn btn-info btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                <span class="text">Details</span>
                            </a>
                            <a href="<c:url value="/admin/buildings/edit/${building.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/admin/buildings/delete/${project.id}"/>" class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                <span class="text">Delete</span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/admin-footer.jsp" %>