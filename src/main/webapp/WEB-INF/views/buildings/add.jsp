<%@ include file="/WEB-INF/views/admin-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
    <div class="col-sm-6">
        <h1 class="h4 text-gray-900 mb-4">Create new Building!</h1>
    </div>
</div>
<form:form method="post"
           modelAttribute="building">

    <div class="form-group">
        <div class="col-sm-6">
            <h5>Select Project:</h5>
            <form:select class="form-control form-control-user" path="project"
                        items="${projects}" itemLabel="projectName" itemValue="id"/>
            <form:errors path="project"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Building name:</h5>
            <form:input type="text" class="form-control form-control-user" path="buildingName"
                        placeholder="Building A"/>
            <form:errors path="buildingName"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Building number:</h5>
            <form:input type="text" class="form-control form-control-user" path="buildingNumber"
                        placeholder="klatka 1"/>
            <form:errors path="buildingNumber"/><br/>
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
            <h5>Number: (address)</h5>
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
        <div class="col-sm-6">
            <h5>Min unit number</h5>
            <form:input type="number" class="form-control form-control-user" path="minUnitNumber"
                        placeholder="1"/>
            <form:errors path="minUnitNumber"/><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6">
            <h5>Max unit number</h5>
            <form:input type="number" class="form-control form-control-user" path="maxUnitNumber"
                        placeholder="1"/>
            <form:errors path="maxUnitNumber"/><br/>
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