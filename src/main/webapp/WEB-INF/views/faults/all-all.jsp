<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All faults list</h1>
        <div class="my-2"></div>
        <a href='<c:url value="/app/documents/all"/>' class="btn btn-secondary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
            <span class="text"> Go to documents list </span>
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
                    <th>Document id</th>
                    <th>Description</th>
                    <th>Subcontractor</th>
                    <th>Expiration date</th>
                    <th>Building</th>
                    <th>Number</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${faults}" var="fault">
                    <tr>
                        <td>${fault.id}</td>
                        <td>${fault.document.id}</td>
                        <td>${fault.description}</td>
                        <td>${fault.subcontractor.companyName}</td>
                        <td>${fault.document.expirationDate}</td>
                        <td>${fault.document.building.buildingName}</td>
                        <td>${fault.document.unitNumber}</td>
                        <td>
                            <a href="<c:url value="/app/faults/details/${fault.id}"/>" class="btn btn-info btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                <span class="text"> Fault details</span>
                            </a><br/>
                            <a href="<c:url value="/app/faults/edit/${fault.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a><br/>
                            <a href="<c:url value="/app/faults/deleteFromList/${fault.id}"/>" class="btn btn-danger btn-icon-split">
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