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
        <link rel="stylesheet" href="css/dashboard.css">
        <link rel="stylesheet" href="css/root.css">
        <title>Dashboard</title>
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
                                    <a href="DashboardController"><b>Dashboard</b></a>
                                </div>

                                <div id="clock"></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="section-container">
                                    <div class="logo-main first-logo">
                                        <i class="fa-solid fa-user fa-2xl" style="color: #22AD56;"></i>
                                    </div>
                                    <div>
                                        <h4>Total Users</h4>
                                        <p><b>${requestScope.countUser} User</b></p>
                                    <hr>
                                    <p>Total User Managed.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="section-container">
                                <div class="logo-main second-logo">
                                    <i class="fa-solid fa-weight-hanging fa-2xl" style="color: #1D5AAB;"></i>                           
                                </div>
                                <div>
                                    <h4>Total Jobs</h4>
                                    <p><b>${requestScope.countJob} Jobs</b></p>
                                    <hr>
                                    <p>Total Jobs Managed.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="section-container">
                                <div class="logo-main third-logo">
                                    <i class="fa-solid fa-cart-shopping fa-2xl" style="color: #FE9115;"></i>                            
                                </div>
                                <div>
                                    <h4>Total Apply</h4>
                                    <p><b>${requestScope.countApply} Applies</b></p>
                                    <hr>
                                    <p>Total Applies Managed.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-12">
                        <div class="order">
                            <h3>Latest Applies</h3>
                            <hr>
                            <div>
                                <c:set var="listApply" value="${requestScope.listApply}" />
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Contact Mail</th>
                                            <th scope="col">Job Name</th>
                                            <th scope="col">Submission Date</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <c:forEach items="${listApply}" var="x">
                                        <tr>
                                            <td>${x.applyId}</td>
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
                                        </tr>
                                    </c:forEach>

                                </table>    
                            </div>
                        </div>
                    </div>
                    <br>
                </main>
            </div>
        </div>
    </body>
</html>

