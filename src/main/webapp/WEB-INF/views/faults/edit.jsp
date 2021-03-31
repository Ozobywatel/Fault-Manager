<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Edit fault form</h1>
    </div>
</div>

<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Subcontractor</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:url var="edit_url" value="/app/faults/edit"/>
                <form:form method="post" modelAttribute="fault" action="${edit_url}">
                    <form:hidden path="id"/>
                    <form:hidden path="document"/>
                    <form:hidden path="deleted"/>
                    <tr>
                        <td><form:select class="form-control form-control-user" path="subcontractor"
                                         items="${subcontractors}" itemLabel="companyName" itemValue="id"/>
                            <form:errors path="subcontractor"/><br/></td>
                        <td><form:input type="text" class="form-control form-control-user" path="description"
                                        placeholder="Door lock cover missing"/>
                            <form:errors path="description"/></td>
                        <td>
                            <div class="form-group">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <button type="submit" class="btn btn-primary btn-success btn-block" value="Save">
                                        Save
                                    </button>
                                </div>
                            </div>
                        </td>
                    </tr>
                </form:form>
                </tbody>
            </table>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/footer.jsp" %>