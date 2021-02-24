<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Document (id nr:<c:out value="${document.id}"/>) details:</h1>
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
                    <th>Document type</th>
                    <th>Building name</th>
                    <th>Unit number</th>
                    <th>User name</th>
                    <th>User last name</th>
                    <th>Created</th>
                    <th>Updated</th>
                    <th>Expiration date</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><c:out value="${document.id}"/></td>
                        <td><c:out value="${document.documentType}"/></td>
                        <td><c:out value="${document.building.buildingName}"/></td>
                        <td><c:out value="${document.unitNumber}"/></td>
                        <td><c:out value="${document.user.firstName}"/></td>
                        <td><c:out value="${document.user.lastName}"/></td>
                        <td><c:out value="${document.created}"/></td>
                        <td><c:out value="${document.updated}"/></td>
                        <td><c:out value="${document.expirationDate}"/></td>
                        <td>
                            <a href="<c:url value="/app/documents/edit/${document.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/app/documents/delete/${document.id}"/>" class="btn btn-danger btn-icon-split">
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