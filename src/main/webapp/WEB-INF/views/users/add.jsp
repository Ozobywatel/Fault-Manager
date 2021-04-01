<%@ include file="/WEB-INF/views/admin-header.jsp" %>

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

    <br/>
    <div class="form-group">
        <form:input type="text" class="form-control form-control-user"
                    placeholder="Login" path="username"/>
        <form:errors path="username"/><br/>
    </div>
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <form:input type="password" class="form-control form-control-user"
                        placeholder="Password" path="password"/>
            <form:errors path="username"/><br/>
        </div>
            <%--                                <div class="col-sm-6">--%>
            <%--                                    <input type="password" class="form-control form-control-user"--%>
            <%--                                           id="exampleRepeatPassword" placeholder="Repeat Password">--%>
            <%--                                </div>--%>
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