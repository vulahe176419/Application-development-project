<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Job board HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/price_rangs.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-8szE7YdW9ZJ+ctOvYMkkzr8JX9zksn//5zZVqs2p0rFfYn5C/HH2e+zalX0w9TUC" crossorigin="anonymous">

        <style>
            /* Style for each resume item */
            .resume-item {
                color: white;
                cursor: pointer;
                padding: 10px;
                border-bottom: 1px solid #ddd;
                transition: background-color 0.3s ease;
            }

            .resume-item:hover {
                background-color: #cccccc;
            }
            .popup {
                display: ${message};
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background-color: #ccffff;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                z-index: 9999;
            }
            .overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 9998;
            }
        </style>
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
        <jsp:include page="components/header.jsp"></jsp:include>
            <main>

                <!-- Hero Area Start-->
                <div class="slider-area ">
                    <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="hero-cap text-center">
                                        <h2>${job.categoryName}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero Area End -->
            <!-- job post company Start -->
            <div class="job-post-company pt-120 pb-120">
                <div class="container">
                    <div class="row justify-content-between">

                        <!-- Left Content -->
                        <div class="col-xl-7 col-lg-8">
                            <!-- job single -->
                            <div class="single-job-items mb-50">
                                <div class="job-items">
                                    <div class="job-tittle">
                                        <h4>${job.jobName}</h4>
                                        <ul>
                                            <li>${job.categoryName}</li>
                                            <li><i class="fas fa-map-marker-alt"></i>${job.location}</li>
                                            <li>${job.offerSalary}</li>
                                        </ul>
                                    </div>
                                </div>
                                <c:choose>
                                    <c:when test="${empty sessionScope.userId}">
                                    </c:when>
                                    <c:otherwise>
                                        <c:choose>
                                            <c:when test="${wId==0}">
                                                <!-- wish list -->
                                                <div class="items-link items-link2 f-right">
                                                    <a href="AddWishlist?jobId=${job.jobId}"><i class="fas fa-heart"></i></a>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="items-link5 items-link2 f-right">
                                                    <a href="AddWishlist?jobId=${job.jobId}"><i class="fas fa-heart" style="color: red;"></i></a>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:otherwise>
                                </c:choose>


                            </div>
                            <!-- job single End -->

                            <div class="job-post-details">
                                <div class="post-details1 mb-50">
                                    <!-- Small Section Tittle -->
                                    <div class="small-section-tittle">
                                        <h4>Job Description</h4>
                                    </div>
                                    <p>${job.description}</p>
                                </div>
                                <div class="post-details2  mb-50">
                                    <!-- Small Section Tittle -->
                                    <div class="small-section-tittle">
                                        <h4>Required Knowledge, Skills, and Abilities</h4>
                                    </div>
                                    <ul>
                                        <li>${job.requirement}</li>
                                    </ul>
                                </div>
                                <div class="post-details2  mb-50">
                                    <!-- Small Section Tittle -->
                                    <div class="small-section-tittle">
                                        <h4>Education + Experience</h4>
                                    </div>
                                    <ul>
                                        <li>${job.experience}</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        <!-- Right Content -->
                        <div class="col-xl-4 col-lg-4">
                            <div class="post-details3  mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Job Overview</h4>
                                </div>
                                <ul>
                                    <li>Posted date : <span>${job.postedDate}</span></li>
                                    <li>Location : <span>${job.location}</span></li>
                                    <li>Job type : <span>${job.type}</span></li>
                                    <li>Salary :  <span>${job.offerSalary}</span></li>
                                </ul>
                                <div class="apply-btn2">
                                    <a class="btn" href="#resumeModal" data-toggle="modal" data-target="#resumeModal">Apply Now</a>
                                </div>
                                <p style="color:red">${message}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- job post company End -->
            <div class="overlay" id="overlay"></div>

            <!-- Popup content -->


            <div class="modal fade" id="resumeModal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content rounded-0 border-0 p-4">

                        <!-- LOGIN -->     
                        <div class="modal-body">
                            <c:choose>
                                <c:when test="${empty sessionScope.userId}">
                                    <div class="modal-header border-0">
                                        <h3>Log in to apply</h3>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
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
                                </c:when>
                                <c:otherwise>
                                    <c:choose>
                                        <c:when test="${empty listResume}">
                                            <div class="modal-header border-0">
                                                <h3>No resumes available</h3>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="resume-item">
                                                <a href="CreateResume.jsp" style="color: black">Create a Resume</a>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="modal-header border-0">
                                                <h3>Choose your resume</h3>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <c:forEach var="resume" items="${listResume}">
                                                <div class="resume-item">
                                                    <a href="ApplyJob?resumeId=${resume.resumeId}&jobId=${job.jobId}"><p style="color: black">${resume.resumeName}</p></a>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>

                                </c:otherwise>
                            </c:choose>


                        </div>
                    </div>
                </div>
            </div>

        </main>
        <footer>
            <!-- Footer Start-->
            <div class="footer-area footer-bg footer-padding">
                <div class="container">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <div class="footer-tittle">
                                        <h4>About Us</h4>
                                        <div class="footer-pera">
                                            <p>ABC is a technology company headquartered in Vietnam with $1 billion in revenue and more than 20,000 employees. Founded in 2000, the company has expanded its network to 23 countries and territories, with 60 global offices and 30 development centers.</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
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