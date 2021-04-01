<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Edit account form</h1>
    </div>
</div>
<c:url var="edit_url" value="/admin/users/edit"/>
<form:form method="post" modelAttribute="user" action="${edit_url}">
    <form:hidden path="id"/>


    <div class="form-group">
        <div class="col-sm-6">
            <h5>e-mail address:</h5>
            <form:input type="text" class="form-control form-control-user" path="username"/>
            <form:errors path="username"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>New password (REQUIRED):</h5>
            <form:input type="password" class="form-control form-control-user" path="password"/>
            <form:errors path="password"/><br/>
        </div>
    </div>
    <br/>
    <div class="form-group">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <button type="submit" class="btn btn-primary btn-success btn-block" value="Save">
                Update account and password!
            </button>
        </div>
    </div>
</form:form>
<hr>


<%@ include file="/WEB-INF/views/footer.jsp" %>