<%-- 
    Document   : Add
    Created on : Sep 21, 2023, 5:45:14 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Job</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/addLesson.css">
        <link rel="stylesheet" href="css/root.css">
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
                    <div class="container"> 
                            <table>
                                <input name="resumeId" type="hidden" value="${resume.resumeId}">
                            <input name="applyId" type="hidden" value="${applyId}">
                            <tr>
                                <th>Resume Name</th>
                                <td><input type="text" name="resumeName" value="${resume.resumeName}" disabled></td>
                            </tr>
                            <tr>
                                <th>Full Name</th>
                                <td><input type="text" name="fullName" value="${resume.fullName}" disabled></td>
                            </tr>
                            <tr>
                                <th>Phone</th>
                                <td><input type="text" name="phone" value="${resume.phone}" disabled></td>
                            </tr>
                            <tr>
                                <th>Address</th>
                                <td><input type="text" name="address" value="${resume.address}" disabled></td>
                            </tr>
                            <tr>
                                <th>Education</th>
                                <td><input type="text" name="education" value="${resume.education}" disabled></td>
                            </tr>
                            <tr>
                                <th>Experience</th>
                                <td><input type="text" name="experience" value="${resume.experience}" disabled></td>
                            </tr>
                            <tr>
                                <th>Portfolio Url</th>
                                <td><a href="uploads/${resume.porfolio}">${resume.porfolio}</a></td>
                            </tr>
                            <tr>
                                <th>Skill</th>
                                <td><input type="text" name="skill" value="${resume.skill}" disabled></td>
                            </tr>
                            <tr>
                                <th>Award</th>
                                <td><input type="text" name="award" value="${resume.award}" disabled></td>
                            </tr>
                            </table>
                            <button style="color: greenyellow"><a href="ApprovalResume?applyId=${applyId}&status=Approved&email=${email}">Approve</a></button>
                            <button style="color: red"><a href="ApprovalResume?applyId=${applyId}&status=Rejected&email=${email}">Reject</a></button>
                    </div>
                </main>
            </div>
    </body>
</html>
