<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Job Finder </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/price_rangs.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/userProfile.css">
    </head>

    <body>
        <!-- Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="assets/img/logo/logo.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->

        <!-- Header Start -->
        <jsp:include page="components/header.jsp"></jsp:include>
            <!-- Header End -->
            <main>
                <h1>Profile</h1>
                <div class="container profile-container mt-3">           

                    <div class="profile-details mt-4">
                        <form action="UpdateProfile" method="POST">
                            <table class="table">
                                <tr>
                                    <th>User Name</th>
                                    <td><input style="background-color: black; color: white;" type="text" name="userName" value="${account.userName}" required></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><input style="background-color: black; color: white;" type="text" name="email" value="${account.email}" required></td>
                            </tr>
                            <tr>
                                <th>Phone</th>
                                <td><input style="background-color: black; color: white;" type="text" name="phone" value="${account.phone}" required></td>
                            </tr>
                            <tr>
                                <th>Address</th>
                                <td><input style="background-color: black; color: white;" type="text" name="address" value="${account.address}" required></td>
                            </tr>
                            <tr>
                                <th>Specialism</th>
                                <td><input style="background-color: black; color: white;" type="text" name="specialism" value="${account.specialism}" required></td>
                            </tr>
                        </table>
                        <button type="submit">Save Change</button>
                    </form>
                    <p style="color: red">${Error}</p>
                </div>
            </div>

            <svg height="2" width="100%">
            <line x1="0" y1="1" x2="100%" y2="1" style="stroke:black;stroke-width:2" />
            </svg>

            <button><a href="CreateResume.jsp">Create New Resume</a></button>
            <h1>List Resume</h1>
            <c:forEach var="j" items="${listResume}">
                <div class="single-job-items mb-30">
                    <div class="job-items">
                        <div class="company-img">
                            <a href="UpdateResumeController?resumeId=${j.resumeId}"><img src="assets/img/icon/job-list1.png" alt=""></a>
                        </div>
                        <div class="job-tittle job-tittle2">
                            <a href="UpdateResumeController?resumeId=${j.resumeId}">
                                <h4>${j.resumeName}</h4>
                            </a>
                            <ul>
                                <li>${j.fullName}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="items-link items-link2 f-right">
                        <span>Available to apply</span>
                    </div>
                    <a href="DeleteResume?resumeId=${j.resumeId}&cvUrl=${j.porfolio}" class="btn btn-danger" onclick="return confirmDelete()"><i class="fa-solid fa-trash"></i></a>
                </div>
                <!-- single-job-content -->
            </c:forEach>

        </main>
        <footer>
            <!-- Footer Start-->
            <div class="footer-area footer-bg footer-padding">
                <div class="container">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Contact Info</h4>
                                    <ul>
                                        <li>
                                            <p>Address: Education Zone, Hoa Lac Hi-tech Park, Km29, Thang Long Boulevard, Thach Hoa, Thach That, Ha Noi, Vietnam.</p>
                                        </li>
                                        <li><a href="#">Phone : +848 8888 8888</a></li>
                                        <li><a href="#">Email : donnylee2003@gmail.com</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End-->
        </footer>

        <!-- JS here -->

        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <script src="./assets/js/price_rangs.js"></script>

        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>

    </body>
</html>