<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Fault id: <c:out value="${fault.id}"/></h1><br/>
        <div class="my-2"></div>
    </div>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Selected fault details: </h1>
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
                    <th>Document Id</th>
                    <th>Subcontractor</th>
                    <th>Description</th>
                    <th>Expiration date</th>
                    <th>deleted?</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>

                    <tr>
                        <td><c:out value="${fault.id}"/></td>
                        <td><c:out value="${fault.document.id}"/></td>
                        <td><c:out value="${fault.subcontractor.companyName}"/></td>
                        <td><c:out value="${fault.description}"/></td>
                        <td><c:out value="${fault.document.expirationDate}"/></td>
                        <td><c:out value="${fault.deleted}"/></td>
                        <td>
                            <a href="<c:url value="/app/faults/edit/${fault.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/app/faults/deleteFromList/${fault.id}"/>" class="btn btn-danger btn-icon-split">
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