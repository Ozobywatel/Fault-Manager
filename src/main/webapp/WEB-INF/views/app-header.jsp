<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="newauthor">

    <title>Fault Manager</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>
<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <!-- Divider -->
        <hr class="sidebar-divider my-0">
        <!-- Nav Item - Dashboard -->
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <a class="sidebar-brand d-flex align-items-center justify-content-center" href='<c:url value="/app/dash"/>'>


            <div class="sidebar-brand-text mx-3">Fault manager</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">
        <!-- Nav Item - Dashboard -->
        </li>
        <li class="nav-item active">
            <a href='<c:url value="/app/documents/all"/>' class="nav-link" >
                <i class="fas fa-fw fa-table"></i>
                <span>Documents</span></a>
        </li>
        <li class="nav-item active">
        <a href='<c:url value="/app/faults/all"/>' class="nav-link" >
        <i class="fas fa-fw fa-table"></i>
        <span>Faults</span></a>
            <sec:authorize access="hasRole('ADMIN')">
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <li class="nav-item active">
            <a href='<c:url value="/admin/panel"/>' class="nav-link" >
                <i class="fas fa-fw fa-wrench"></i>
                <span>Admin panel</span></a>
        </li>
        </sec:authorize>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <li class="nav-item active">
        <form action="<c:url value="/logout"/>" method="post">
            <input class="fa fa-id-badge" type="submit" value="Wyloguj">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>


    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


            </nav>
            <!-- End of Topbar -->
