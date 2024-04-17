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
        <title>Add new Job</title>
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

                        <form action="AddJob" method="post">
                            <table>

                                <tr>
                                    <td>Job Name</td>
                                    <td>
                                        <input type="text" name="jobName">
                                    </td>
                                </tr>

                                <tr>
                                    <td>Description</td>
                                    <td>
                                        <input type="text" name="description">
                                    </td>
                                </tr>

                                <tr>
                                    <td>Requirement</td>
                                    <td>
                                        <input type="text" name="requirement">
                                    </td>
                                </tr>

                                <tr>
                                    <td>Benefit</td>
                                    <td>
                                        <input type="text" name="benefit">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Contact Mail</td>
                                    <td>
                                        <input type="text" name="contactMail">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Offer Salary</td>
                                    <td>
                                        <input type="text" name="offerSalary">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Level</td>
                                    <td>
                                        <input type="text" name="level">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Experience</td>
                                    <td>
                                        <input type="text" name="experience">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Qualification</td>
                                    <td>
                                        <input type="text" name="qualification">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Category</td>
                                    <td>
                                        <select name="categoryId">
                                            <c:forEach items="${category}" var="x">
                                                <option value="${x.categoryId}">${x.categoryName}</option>${x.categoryName}
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Type</td>
                                    <td>
                                    <select name="type">
                                        <option value="Full Time">Full Time</option>Full Time
                                        <option value="Part Time">Part Time</option>Part Time   
                                    </select>
                                        </td>
                                </tr>
                                
                                <tr>
                                    <td>Location</td>
                                    <td>
                                        <select name="location">
                                        <option value="Ha Noi">Ha Noi</option>Ha Noi
                                        <option value="Ho Chi Minh">Ho Chi Minh</option>Ho Chi Minh
                                    </select>
                                    </td>
                                </tr>
                         
                                <tr>
                                    <td></td>
                                    <td><button type="submit">Add Job</button></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </main>
            </div>
    </body>
</html>
