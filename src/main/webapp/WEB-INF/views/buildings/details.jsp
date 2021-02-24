<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><c:out value="${building.buildingName}"/> details:</h1>
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
                    <th>Project</th>
                    <th>Building name</th>
                    <th>Street</th>
                    <th>Number</th>
                    <th>Postal code</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Min unit number</th>
                    <th>Max unit number</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>

                    <tr>
                        <td><c:out value="${building.id}"/></td>
                        <td><c:out value="${building.project.projectName}"/></td>
                        <td><c:out value="${building.buildingName}"/></td>
                        <td><c:out value="${building.addressStreet}"/></td>
                        <td><c:out value="${building.addressNumber}"/></td>
                        <td><c:out value="${building.addressZipCode}"/></td>
                        <td><c:out value="${building.addressCity}"/></td>
                        <td><c:out value="${building.addressCountry}"/></td>
                        <td><c:out value="${building.minUnitNumber}"/></td>
                        <td><c:out value="${building.maxUnitNumber}"/></td>
                        <td>
                            <a href="<c:url value="/admin/buildings/edit/${building.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/admin/buildings/delete/${building.id}"/>" class="btn btn-danger btn-icon-split">
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



<%@ include file="/WEB-INF/views/admin-footer.jsp" %>