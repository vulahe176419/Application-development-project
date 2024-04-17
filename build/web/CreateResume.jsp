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

                <div class="container profile-container mt-3">           

                    <div class="profile-details mt-4">
                        <h2>Create a Resume</h2>
                        <form action="ResumeController" method="POST" enctype="multipart/form-data">
                            <table class="table">
                                <tr>
                                    <th>Name of Resume *</th>
                                    <td><input style="background-color: black; color: white;" type="text" name="resumeName" value="" required></td>
                                </tr>
                                <tr style="display: none;">
                                    <th>Full Name</th>
                                    <td><input type="hidden" name="fullName" value="${account.userName}"></td>
                            </tr>
                            <tr style="display: none;">
                                <th>Phone</th>
                                <td><input type="hidden" name="phone" value="${account.phone}"></td>
                            </tr>
                            <tr style="display: none;">
                                <th>Address</th>
                                <td><input type="hidden" name="address" value="${account.address}"></td>
                            </tr>
                            <tr>
                                <th>Education *</th>
                                <td><input style="background-color: black; color: white;" type="text" name="education" value="" required></td>
                            </tr>
                            <tr>
                                <th>Experience *</th>
                                <td><input style="background-color: black; color: white;" type="text" name="experience" value="" required></td>
                            </tr>
                            <tr>
                                <th>CV File *</th>
                                <td><input type="file" name="pdfFile" accept=".pdf" /></td>
                            </tr>
                            <tr>
                                <th>Skill *</th>
                                <td><input style="background-color: black; color: white;" type="text" name="skill" value="" required></td>
                            </tr>
                            <tr>
                                <th>Award</th>
                                <td><input style="background-color: black; color: white;" type="text" name="award" value=""></td>
                            </tr>
                        </table>
                        <button type="submit">Submit</button>
                    </form>
                    <p style="color: red">${Error}</p>
                </div>
            </div>

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