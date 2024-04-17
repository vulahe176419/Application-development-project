<%-- 
    Document   : JobListing
    Created on : Jan 31, 2024, 12:47:20 AM
    Author     : trand
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Job board</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/price_rangs.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
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
                                        <h2>Get your job</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Hero Area End -->
                <!-- Job List Area Start -->
                <div class="job-listing-area pt-120 pb-120">
                    <div class="container">
                        <div class="row">
                            <!-- Left content -->
                            <div class="col-xl-3 col-lg-3 col-md-4">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="small-section-tittle2 mb-45">
                                            <div class="ion"> <svg 
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                                    width="20px" height="12px">
                                                <path fill-rule="evenodd"  fill="rgb(27, 207, 107)"
                                                      d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                                                </svg>
                                            </div>
                                            <h4>Filter Jobs</h4>
                                        </div>
                                    </div>
                                </div>
                                <form name="job-filter" action="FilterJob" method="post">
                                    <!-- Job Category Listing start -->
                                    <div class="job-category-listing mb-50">
                                        <!-- single one -->
                                        <div class="single-listing">
                                            <div class="small-section-tittle2">
                                                <h4>Job Category</h4>
                                            </div>
                                            <!-- Select job items start -->
                                            <div class="select-job-items2">
                                                <select name="categoryId" id="jobCategorySelect">
                                                    <option value="1">Marketing</option>
                                                    <option value="2">Graphic Design</option>
                                                    <option value="3">Information Technology</option>
                                                    <option value="4">Finance</option>
                                                    <!-- INSERT CATEGORY HERE -->
                                                </select>
                                            </div>
                                            <!--  Select job items End-->
                                            <!-- select-Categories start -->
                                            <div class="select-Categories pt-80 pb-50">
                                                <div class="small-section-tittle2">
                                                    <h4>Job Type</h4>
                                                </div>
                                                <label class="container">Full Time
                                                    <input name="checkboxF" type="checkbox" id="fullTimeCheckbox" ${type eq 'Full Time'?"checked":""} >
                                                    <span class="checkmark"></span>
                                                </label>
                                                <label class="container">Part Time
                                                    <input name="checkboxP" type="checkbox" id="partTimeCheckbox" ${type eq 'Part Time'?"checked":""}>
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                            <!-- select-Categories End -->
                                        </div>
                                        <!-- single two -->
                                        <div class="single-listing">
                                            <div class="small-section-tittle2">
                                                <h4>Job Location</h4>
                                            </div>
                                            <!-- Select job items start -->
                                            <div class="select-job-items2">
                                                <select name="location" id="jobLocationSelect">
                                                    <option value="">Anywhere</option>
                                                    <option value="Ha Noi" ${location eq 'Ha Noi'?"selected":""}>Ha Noi</option>
                                                    <option value="Ho Chi Minh" ${location eq 'Ho Chi Minh'?"selected":""}>Ho Chi Minh</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <button style="color: black" type="submit">Filter Job</button>
                                </form>
                                <!-- Job Category Listing End -->
                            </div>
                            <!-- Right content -->
                            <div class="col-xl-9 col-lg-9 col-md-8">
                                <!-- Featured_job_start -->
                                <section class="featured-job-area">
                                    <div class="container">
                                        <!-- Count of Job list Start -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="count-job mb-35">
                                                    <span>${listJob.size()} Jobs found</span>
                                                <!-- Select job items start -->
<!--                                                <div class="select-job-items">
                                                    <span>Sort by</span>
                                                    <select name="select">
                                                        <option value="">None</option>
                                                        <option value="">job list</option>
                                                        <option value="">job list</option>
                                                        <option value="">job list</option>
                                                    </select>
                                                </div>-->
                                                <!--  Select job items End-->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Count of Job list End -->
                                    <!-- single-job-content -->
                                    <div id="jobList">
                                        <!-- Jobs will be dynamically loaded here -->
                                    </div>
                                    <!-- Pagination -->
                                    <div id="pagination" class="pagination-area pb-115 text-center">
                                        <!-- Pagination links will be inserted here -->
                                    </div>
                                </div>
                            </section>
                            <!-- Featured_job_end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Job List Area End -->
            <!--Pagination Start  -->
            <!--Pagination End  -->
            <script>
                // Sample job data
                var listJob = [];

                // Iterate over your server-side job data and populate listJob array
                <c:forEach var="job" items="${listJob}">
                // Create JavaScript object for each job and add it to the listJob array
                listJob.push({
                    jobId: "${job.jobId}",
                    jobName: "${job.jobName}",
                    categoryName: "${job.categoryName}",
                    location: "${job.location}",
                    offerSalary: "${job.offerSalary}",
                    type: "${job.type}"
                });
                </c:forEach>

                // Display jobs for the selected page
                function showJobs(pageNumber) {
                    var pageSize = 5; // Number of jobs per page
                    var startIndex = (pageNumber - 1) * pageSize;
                    var endIndex = Math.min(startIndex + pageSize, listJob.length);

                    var jobListHtml = '';
                    for (var i = startIndex; i < endIndex; i++) {
                        var job = listJob[i];
                        // Build HTML for each job
                        jobListHtml += '<div class="single-job-items mb-30">';
                        jobListHtml += '<div class="job-items">';
                        jobListHtml += '<div class="company-img">';
                        jobListHtml += '<a href="JobDetailController?id=' + job.jobId + '"><img src="assets/img/icon/job-list1.png" alt=""></a>';
                        jobListHtml += '</div>';
                        jobListHtml += '<div class="job-tittle job-tittle2">';
                        jobListHtml += '<a href="JobDetailController?id=' + job.jobId + '"><h4>' + job.jobName + '</h4></a>';
                        jobListHtml += '<ul>';
                        jobListHtml += '<li>' + job.categoryName + '</li>';
                        jobListHtml += '<li><i class="fas fa-map-marker-alt"></i>' + job.location + '</li>';
                        jobListHtml += '<li>' + job.offerSalary + '</li>';
                        jobListHtml += '</ul>';
                        jobListHtml += '</div>';
                        jobListHtml += '</div>';
                        jobListHtml += '<div class="items-link items-link2 f-right">';
                        jobListHtml += '<a href="JobDetailController?id=' + job.jobId + '">' + job.type + '</a>';
                        jobListHtml += '<span>7 hours ago</span>';
                        jobListHtml += '</div>';
                        jobListHtml += '</div>';
                    }

                    // Update job list
                    document.getElementById('jobList').innerHTML = jobListHtml;
                }

                // Generate pagination links
                function generatePagination(totalJobs) {
                    var totalPages = Math.ceil(totalJobs / 5); // Assuming 5 jobs per page
                    var paginationHtml = '';
                    for (var i = 1; i <= totalPages; i++) {
                        paginationHtml += '<li class="page-item"><a class="page-link" href="#" onclick="showJobs(' + i + ')">' + i + '</a></li>';
                    }
                    // Update pagination
                    document.getElementById('pagination').innerHTML = '<ul class="pagination justify-content-start">' + paginationHtml + '</ul>';
                }

                // Initially show jobs for the first page
                showJobs(1);
                // Generate pagination
                generatePagination(${listJob.size()}); // Replace ${listJob.size()} with actual number of jobs
            </script>
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
        <script>
            document.getElementById('submitButton1').addEventListener('click', function (event) {
                document.forms["job-filter"].submit();
            });
        </script>
        <!-- JS here -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Range -->
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