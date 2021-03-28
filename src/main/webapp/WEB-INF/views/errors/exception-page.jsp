<%@ include file="/WEB-INF/views/app-header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-fluid">

    <!-- 404 Error Text -->
    <div class="text-center">
        <div class="error mx-auto" data-text="ERROR">EOR</div>
        <p class="lead text-gray-800 mb-5">An error occured</p>
        <p class="text-gray-500 mb-0">It looks like you found a glitch in the matrix...</p>
        <a href="<c:url value="/app/dash"/>">&larr; Back to Dashboard</a>
    </div>

</div>
<p>${url}</p>
<p>${errorMessage}</p>
<p>${exception}</p>

<%@ include file="/WEB-INF/views/admin-footer.jsp" %>