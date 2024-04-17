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
        <title>Add new account</title>
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
                <a class="fas fa-sign-out-alt " href ="/SWP391_JobSearching/logout""></a>
            </div>
        </header>

        <div class="bodya">
            <div class="row dashboard__container_admin">
                <jsp:include page="components/navAdmin.jsp"></jsp:include>

                <main class="col-md-10">

                    <div class="container"> 

                        <form action="AccountManager" method="post">
                            <table>
                                <tr>
                                    <td>User Name</td>
                                    <td>
                                        <input type="text" name="username">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>
                                        <input type="text" name="email">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td>
                                        <input type="text" name="password">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Phone</td>
                                    <td>
                                        <input type="text" name="phone">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>
                                        <input type="text" name="address">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Specialism</td>
                                    <td>
                                        <input type="text" name="specialism">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Role</td>
                                    <td>
                                    <select name="roleId">
                                        <option value="1">User</option>User
                                        <option value="2">Admin</option>Admin  
                                        <option value="3">Staff</option>Staff  
                                    </select>
                                        </td>
                                </tr>
                                
                                <tr>
                                    <td></td>
                                    <td><button type="submit">Add User</button></td>
                                </tr>
                            </table>
                            
                        </form>
                    </div>
                </main>
            </div>
    </body>
</html>
