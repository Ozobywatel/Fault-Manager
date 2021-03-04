<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Inspection document edit form</h1>
        <%--            <br/> Document id: <c:out value="${document.id}"/>--%>
        <%--            <br/> Building name: <c:out value="${document.building.buildingName}"/>--%>
        <%--            <br/> Unit number: <c:out value="${document.unitNumber}"/>--%>
        <%--            <br/> Expiration date: <c:out value="${document.expirationDate}"/>--%>
    </div>
</div>

<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Subcontractor</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${faults}" var="fault">
                    <form:hidden path="fault.document.id"/>
                    <tr>
                        <td>${fault.id}</td>
                        <td>${fault.subcontractor.companyName}</td>
                        <td>${fault.description}</td>
                        <td>
                            <a href="<c:url value="/app/faults/details/${fault.id}"/>"
                               class="btn btn-info btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                <span class="text"> Fault details</span>
                            </a><br/>
                            <a href="<c:url value="/app/faults/edit/${fault.id}"/>"
                               class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                <span class="text">Edit</span>
                            </a>
                            <a href="<c:url value="/app/faults/delete/${fault.id}"/>"
                               class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                <span class="text">Delete</span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                <form:form method="post"
                           modelAttribute="newFault">
                    <form:hidden path="document.id"/>
                    <tr>
                        <td>add new -></td>
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


<hr>


<%@ include file="/WEB-INF/views/admin-footer.jsp" %>