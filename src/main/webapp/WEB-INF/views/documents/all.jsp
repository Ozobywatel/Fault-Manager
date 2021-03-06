<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All documents list</h1>
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
                    <th>Document Type</th>
                    <th>Building name</th>
                    <th>Unit number</th>
                    <th>Fault Action</th>
                    <th>Creation date</th>
                    <th>Document Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${documents}" var="document">
                    <tr>
                        <td>${document.id}</td>
                        <td>${document.documentType}</td>
                        <td>${document.building.buildingName}</td>
                        <td>${document.unitNumber}</td>
                        <td>
                            <a href="<c:url value="/app/faults/documents/${document.id}/add"/>" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-fw fa-table"></i>
                                        </span>
                                <span class="text">GO TO FAULT LIST</span>
                            </a>
                        </td>
                        <td>${document.created}</td>
                        <td>
                            <a href="<c:url value="/app/documents/details/${document.id}"/>" class="btn btn-info btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                <span class="text"> Details</span>
                            </a><br/>
                            <a href="<c:url value="/app/documents/edit/${document.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a><br/>
                            <a href="<c:url value="/app/documents/delete/${document.id}"/>" class="btn btn-danger btn-icon-split">
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


<%@ include file="/WEB-INF/views/footer.jsp" %>