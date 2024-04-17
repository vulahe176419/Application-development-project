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
                                    <a href="load"><b>Account List</b></a>
                                </div>
                                <div id="clock"></div>
                            </div>


                        </div>

                        <div class="container">

                            <div class="add">

                                <div class="search-container">
                                    <form action="AccountManager" method="get" class="form-inline">
                                        <div class="form-group">
                                            <input type="text" name="search" class="form-control"/>
                                        </div>
                                        <button type="submit" name="action" value="Search" class="fa fa-solid fa-magnifying-glass"> </button>
                                    </form>
                                </div>
                                <div class="addpro">
                                    <a href="AddAccount.jsp">Create Account</a>
                                </div>
                            </div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">User Name</th>
                                        <th scope="col">Email </th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Role</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                            <c:forEach var="u" items="${listAccount}" varStatus="loop">
                                <tr>
                                    <td>${loop.index + 1}</td>
                                    <td>${u.userName}</td>
                                    <td>${u.email}</td>
                                    <td>${u.phone}</td>
                                    <td>${u.address}</td>
                                    <c:choose>
                                        <c:when test="${u.status == true}">
                                            <td><strong style="color: green;">Active</strong></td>
                                        </c:when>
                                        <c:when test="${u.status == false}">
                                            <td><strong style="color: red;">Locked</strong></td>
                                        </c:when>
                                    </c:choose>
                                    <td>${u.role}</td>
                                    <td>
                                        <div class="btn-group text-center" >
                                            <c:choose>
                                                <c:when test="${u.role eq 'admin'}">
                                                    <a href="UpdateUser?id=${u.id}" class="btn btn-success"><i class="fa-solid fa-file-pen"></i></a>
                                                    </c:when>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${u.status == true && u.role ne 'admin' }">
                                                    <a href="BlockUser?id=${u.id}" class="btn btn-danger" onclick="return confirmDelete()"><i class="fas fa-lock"></i></a>
                                                    </c:when>
                                                    <c:when test="${u.status == false && u.role ne 'admin' }">
                                                    <a href="BlockUser?id=${u.id}" class="btn btn-warning" onclick="return confirmDelete()"><i class="fas fa-unlock"></i></a>
                                                    </c:when>
                                                </c:choose>
                                        </div>
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

