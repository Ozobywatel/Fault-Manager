<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Create new Account!</h1>
    </div>
</div>
<form:form method="post"
           modelAttribute="user">
    <div class="form-group">
        <div class="col-sm-6">
            <h5>First name:</h5>
            <form:input type="text" class="form-control form-control-user" path="firstName"
                        placeholder="Matt"/>
            <form:errors path="firstName"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Last name:</h5>
            <form:input type="text" class="form-control form-control-user" path="lastName"
                        placeholder="Damon"/>
            <form:errors path="lastName"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>e-mail address:</h5>
            <form:input type="email" class="form-control form-control-user" path="email"
                        placeholder="matt.damon@gmail.com"/>
            <form:errors path="email"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>password:</h5>
            <form:input type="password" class="form-control form-control-user" path="password"
                        placeholder="password"/>
            <form:errors path="password"/><br/>
        </div>
    </div>
    <br/>
    <div class="form-group">
        <div class="col-sm-6">
            <h5> <form:checkbox path="adminRole"/>Do you want to new user had access to admin panel?</h5>

        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <button type="submit" class="btn btn-primary btn-user btn-block" value="Save">
                Register Account
            </button>
        </div>
    </div>
</form:form>
<hr>


<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>