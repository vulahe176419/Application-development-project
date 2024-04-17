<%-- 
    Document   : Show
    Created on : Sep 21, 2023, 5:45:14 PM
    Author     : Acer
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/lesson.css">
        <link rel="stylesheet" href="css/root.css">
        <title>Apply Management</title>
    </head>
    <body class="fade-in">
        <header>
            <div class="logo">
                <img src="assets/img/logo/logo.png">
            </div>

            <div class="login">
                <a class="fas fa-sign-out-alt " href ="/SWP391_JobSearching/logout"></a>
            </div>
        </header>

        <div class="bodya">
            <div class="row dashboard__container_admin">
                <jsp:include page="components/navAdmin.jsp"></jsp:include>
                    <main class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="breadcrumb">
                                    <a href="load"><b>Apply List</b></a>
                                </div>
                                <div id="clock"></div>
                            </div>


                        </div>

                        <div class="container">

                            <div class="add">

                                <div class="search-container">
                                    <form action="ApplyManager" method="get" class="form-inline">
                                        <div class="form-group">
                                            <input type="text" name="search" class="form-control"/>
                                        </div>
                                        <button type="submit" name="action" value="Search" class="fa fa-solid fa-magnifying-glass"> </button>
                                    </form>
                                </div>
                            </div>
                        <c:set var="listApply" value="${requestScope.listApply}" />
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Contact Mail</th>
                                    <th scope="col">Job Name</th>
                                    <th scope="col">Apply Date</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <c:forEach items="${listApply}" var="x" varStatus="loop">
                                <tr>
                                    <td>${loop.index + 1}</td>
                                    <td>${x.accountEmail}</td>
                                    <td>${x.jobName}</td>
                                    <td>${x.submissionDate}</td>
                                    <c:choose>
                                        <c:when test="${empty x.status}">
                                            <td><strong style="color: blue;">Approving...</strong></td>
                                        </c:when>
                                        <c:when test="${x.status == 'Approved'}">
                                            <td><strong style="color: green;">${x.status}</strong></td>
                                            </c:when>
                                            <c:when test="${x.status == 'Rejected'}">
                                            <td><strong style="color: red;">${x.status}</strong></td>
                                            </c:when>
                                        </c:choose>
                                    <td>
                                        <c:choose>
                                            <c:when test="${empty x.status}">
                                                <div class="btn-group">
                                                    <a href="ViewResume?resumeId=${x.resumeId}&applyId=${x.applyId}&email=${x.accountEmail}" class="btn btn-success"><i class="fa-solid fa-file-pen"></i></a>
                                                </div>
                                            </c:when>
                                        </c:choose>
                                    </td>

                                </tr>
                            </c:forEach>

                        </table>
                        
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>

