<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Subcontractor <c:out value="${subcontractor.companyName}"/> details:</h1>
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
                    <th>Company name</th>
                    <th>Company's scope/responsibilities</th>
                    <th>email</th>
                    <th>Contract number</th>
                    <th>Contract date</th>
                    <th>Subcontractor details</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>

                    <tr>
                        <td><c:out value="${subcontractor.id}"/></td>
                        <td><c:out value="${subcontractor.companyName}"/></td>
                        <td><c:out value="${subcontractor.scope}"/></td>
                        <td><c:out value="${subcontractor.email}"/></td>
                        <td><c:out value="${subcontractor.contractNumber}"/></td>
                        <td><c:out value="${subcontractor.contractDate}"/></td>
                        <td><c:out value="${subcontractor.details}"/></td>
                        <td>
                            <a href="<c:url value="/admin/subcontractors/edit/${subcontractor.id}"/>" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/admin/subcontractors/delete/${subcontractor.id}"/>" class="btn btn-danger btn-icon-split">
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