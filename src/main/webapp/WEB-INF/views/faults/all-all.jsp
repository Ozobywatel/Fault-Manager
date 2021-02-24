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
                    <th>Document Type</th>
                    <th>Building name</th>
                    <th>Unit number</th>
                    <th>Creation date</th>
                    <th>Document Action</th>
                    <th>Fault Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${documents}" var="document">
                    <tr>
                        <td>${document.id}</td>
                        <td>${document.documentType}</td>
                        <td>${document.building.buildingName}</td>
                        <td>${document.unitNumber}</td>
                        <td>${document.created}</td>
                        <td>
                            <a href="<c:url value="/app/documents/details/${document.id}"/>" class="btn btn-info btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                <span class="text"> Document details</span>
                            </a>
                            <a href="<c:url value="/app/documents/edit/${document.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit document</span>
                            </a>
                            <a href="<c:url value="/app/documents/delete/${document.id}"/>" class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                <span class="text">Delete document</span>
                            </a>
                        </td>
                        <td>
                            <a href="<c:url value="/app/documents/faults/${document.id}"/>" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-fw fa-table"></i>
                                        </span>
                                <span class="text">FAULT LIST</span>
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