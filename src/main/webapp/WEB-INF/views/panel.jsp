<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">
    <h3>Shortcuts:</h3>
    <a href='<c:url value="/admin/users/add"/>' class="btn btn-secondary btn-icon-split">
         <span class="icon text-white-50">
         <i class="fas fa-arrow-right"></i>
         </span>
        <span class="text"> Add new user </span>
    </a>
    <a href='<c:url value="/admin/subcontractors/add"/>' class="btn btn-secondary btn-icon-split">
         <span class="icon text-white-50">
         <i class="fas fa-arrow-right"></i>
         </span>
        <span class="text"> Add new subcontractor </span>
    </a>
    <a href='<c:url value="/admin/projects/add"/>' class="btn btn-secondary btn-icon-split">
         <span class="icon text-white-50">
         <i class="fas fa-arrow-right"></i>
         </span>
        <span class="text"> Add new project </span>
    </a>
    <a href='<c:url value="/admin/buildings/add"/>' class="btn btn-secondary btn-icon-split">
         <span class="icon text-white-50">
         <i class="fas fa-arrow-right"></i>
         </span>
        <span class="text"> Add new building </span>
    </a>

    <br/>
    <br/>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All your projects:</h1>
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
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${projects}" var="project">
                    <tr>
                        <td>${project.id}</td>
                        <td>${project.projectName}</td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
            <div class="form-group">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <a href='<c:url value="/admin/projects/all"/>' class="btn btn-primary btn-success btn-block">
                        Go to projects management page
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>