<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">


    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Do you really want that?</h1>
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
            Are You sure you want to delete this fault?
<c:url var="edit_url" value="/app/faults/delete"/>
<form:form method="post" modelAttribute="fault" action="${edit_url}">
    <form:hidden path="id"/>
    <form:hidden path="deleted"/>
    <form:hidden path="description"/>
    <form:hidden path="documentId"/>
    <form:hidden path="subcontractorId"/>
    <div class="form-group">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <button type="submit" class="btn btn-primary btn-success btn-block" value="Save">
                Yes
            </button>
        </div>
    </div>
</form:form>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/footer.jsp" %>