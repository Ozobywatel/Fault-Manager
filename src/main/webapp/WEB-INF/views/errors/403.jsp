<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- 404 Error Text -->
    <div class="text-center">
        <div class="error mx-auto" data-text="403">403</div>
        <p class="lead text-gray-800 mb-5">Access denied!</p>
        <p class="text-gray-500 mb-0">Access for page administration only!</p>
        <a href="<c:url value="/app/dash"/>">&larr; Back to Dashboard</a>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@ include file="/WEB-INF/views/admin-footer.jsp" %>