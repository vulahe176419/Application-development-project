<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
        <div class="header-area header-transparrent">
           <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="home"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>  
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">
                                            <li><a href="home">Home</a></li>
                                            <li><a href="JobController?search=&location=">Find a Jobs </a></li>
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <div class="header-btn d-none f-right d-lg-block">
                                    <c:choose>
                                        <c:when test="${not empty sessionScope.loggedIn and sessionScope.loggedIn}">
                                            <li class="list-inline-item">
                                               <a style="color: red" href="MyApply">Applied</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a style="color: red" href="MyWishlist">Wishlist</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a style="color: red" href="ResumeController">Profile</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a style="color: red" href="changepassword.jsp">Change Password</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a style="color: red" href="${pageContext.request.contextPath}/logout">Logout</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>

                                            <li class="list-inline-item">
                                                <a class="btn head-btn1" href="#loginModal" data-toggle="modal" data-target="#loginModal">login</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="btn head-btn2" href="#signupModal" data-toggle="modal" data-target="#signupModal">register</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
           </div>
       </div>
        </header>
        <!-- /header -->
        <!-- Modal -->

        <!-- Sign in -->



        <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    <div class="modal-header border-0">
                        <h3>Register</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="login">
                            <form action="register" method="post" class="row">
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="username" name="username" placeholder="Full Name">
                                </div>
                                <div class="col-12">
                                    <input type="email" class="form-control mb-3" id="email" name="email" placeholder="Email">
                                </div>
                                <div class="col-12">
                                    <input type="password" class="form-control mb-3" id="password" name="password" placeholder="Password">
                                </div>

                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="mobile" name="phone" placeholder="Phone Number">
                                </div> 
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="address" name="address" placeholder="Address">
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">SIGN UP</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    <div class="modal-header border-0">
                        <h3>Login</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!-- LOGIN -->     
                    <div class="modal-body">
                        <form action="login" method="post" class="row">

                            <div class="col-12">
                                <input type="text" class="form-control mb-3" id="email" name="email" placeholder="Email" required="">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control mb-3" id="password" name="password" placeholder="Password" required="">
                            </div>
                            <div class="col-12 d-flex justify-content-between">
                                <button type="submit" class="btn btn-primary mb-2">LOGIN</button>
                                <label class="checkbox"><input type="checkbox" name="remember" checked=""><i> </i>Remember me</label>
                                <a href="ForgotPassword" class="btn btn-link mt-2">FORGOT PASSWORD</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
