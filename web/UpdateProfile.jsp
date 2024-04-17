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
        <title>Update User</title>
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
                <a class="fas fa-sign-out-alt " href ="MainController?action=Logout"></a>
            </div>
        </header>

        <div class="bodya">
            <div class="row dashboard__container_admin">
                <jsp:include page="components/navAdmin.jsp"></jsp:include>

                <main class="col-md-10">

                    <div class="container"> 
                        
                        <form action="UpdateUser" method="post">
                            <table>
                                <input type="hidden" name="accountId" value="${account.id}">
                                <tr>
                                    <td>User Name</td>
                                    <td>
                                        <input type="text" name="userName" value="${account.userName}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>
                                        <input type="text" name="email" value="${account.email}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td>
                                        <input type="text" name="password" value="${account.password}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Phone</td>
                                    <td>
                                        <input type="text" name="phone" value="${account.phone}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>
                                        <input type="text" name="address" value="${account.address}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Specialism</td>
                                    <td>
                                        <input type="text" name="specialism" value="${account.specialism}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Role</td>
                                    <td>
                                    <select name="roleId">
                                        <option value="1" ${account.role=="user"?"selected":""}>User</option>User
                                        <option value="2" ${account.role=="admin"?"selected":""}>Admin</option>Admin  
                                    </select>
                                        </td>
                                </tr>
                         
                                <tr>
                                    <td></td>
                                    <td><button type="submit">Update Account</button></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </main>
            </div>
    </body>
</html>
