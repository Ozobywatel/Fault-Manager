<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Edit project form</h1>
    </div>
</div>
<c:url var="edit_url" value="/admin/projects/edit"/>
<form:form method="post" modelAttribute="project" action="${edit_url}">
    <form:hidden path="id"/>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Project name:</h5>
            <form:input type="text" class="form-control form-control-user" path="projectName"
                        placeholder="Studio Mokotów"/>
            <form:errors path="projectName"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Street:</h5>
            <form:input type="text" class="form-control form-control-user" path="addressStreet"
                        placeholder="Marszałkowska"/>
            <form:errors path="addressStreet"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Number:</h5>
            <form:input type="text" class="form-control form-control-user" path="addressNumber"
                        placeholder="6b"/>
            <form:errors path="addressNumber"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Postal code:</h5>
            <form:input type="text" class="form-control form-control-user" path="addressZipCode"
                        placeholder="00-777"/>
            <form:errors path="addressZipCode"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>City:</h5>
            <form:input type="text" class="form-control form-control-user" path="addressCity"
                        placeholder="Warsaw"/>
            <form:errors path="addressCity"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Country:</h5>
            <form:input type="text" class="form-control form-control-user" path="addressCountry"
                        placeholder="Poland"/>
            <form:errors path="addressCountry"/><br/>
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


<%@ include file="/WEB-INF/views/footer.jsp" %>