<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Edit subcontractor form</h1>
    </div>
</div>
<c:url var="edit_url" value="/admin/subcontractors/edit"/>
<form:form method="post" modelAttribute="subcontractor" action="${edit_url}">
    <form:hidden path="id"/>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Company name (short):</h5>
            <form:input type="text" class="form-control form-control-user" path="companyName"
                        placeholder="Budrem"/>
            <form:errors path="companyName"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Company's scope/responsibilities</h5>
            <form:input type="text" class="form-control form-control-user" path="scope"
                        placeholder="plaster"/>
            <form:errors path="scope"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>e-mail address:</h5>
            <form:input type="email" class="form-control form-control-user" path="email"
                        placeholder="budrem2000@gmail.com"/>
            <form:errors path="email"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Contract number:</h5>
            <form:input type="text" class="form-control form-control-user" path="contractNumber"
                        placeholder="VAR/33/2021"/>
            <form:errors path="contractNumber"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Contract date:</h5>
            <form:input type="date" class="form-control form-control-user" path="contractDate"/>
            <form:errors path="contractDate"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Subcontractor Details:</h5>
            <form:input type="text" class="form-control form-control-user" path="details"
                        placeholder="Budrem Stanislaw Marczak Sp. J."/>
            <form:errors path="details"/><br/>
        </div>
    </div>
    <br/>
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