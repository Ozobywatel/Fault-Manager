<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Edit document form</h1>
    </div>
</div>
<c:url var="edit_url" value="/app/documents/edit"/>
<form:form method="post" modelAttribute="document" action="${edit_url}">
    <form:hidden path="id"/>
    <form:hidden path="created"/>
    <form:hidden path="expirationDate"/>
    <form:hidden path="updated"/>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Select User:</h5>
            <form:select class="form-control form-control-user" path="user"
                         items="${users}" itemLabel="lastName" itemValue="id"/>
            <form:errors path="user"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Select Building:</h5>
            <form:select class="form-control form-control-user" path="building"
                         items="${buildings}" itemLabel="buildingName" itemValue="id"/>
            <form:errors path="building"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Inspection type:</h5>
            <form:input type="text" class="form-control form-control-user" path="documentType"
                        placeholder="INTERNAL"/>
            <form:errors path="documentType"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Unit number:</h5>
            <form:input type="number" class="form-control form-control-user" path="unitNumber"
                        placeholder="1"/>
            <form:errors path="unitNumber"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <button type="submit" class="btn btn-primary btn-success btn-block" value="Save">
                Save
            </button>
        </div>
    </div>
</form:form>
<hr>


<%@ include file="/WEB-INF/views/admin-footer.jsp" %>