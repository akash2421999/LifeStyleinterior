<!DOCTYPE html>
<html lang="en">


<!-- project-v2 06:48:42 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>

    <!-- responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- master stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">

    <!-- Fixing Internet Explorer-->
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/html5shiv.js"></script>
    <![endif]-->

</head>

<body>
    <div class="boxed_wrapper">

        <div class="preloader"></div>

        <!-- Start Top Bar style2 -->
        	<%@include file="header1.jsp"%>
        
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
        
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
        <header class="main-header header-style2 stricky">
            <div class="inner-container clearfix">
                <div class="logo-box-style2 float-left">
                    <a href="adminpage.jsp">
                        <img src="images/resources/logo.png" alt="Awesome Logo">
                    </a>
                </div>
                <div class="main-menu-box float-right">
                    <nav class="main-menu style2 clearfix">
                        <div class="navbar-header clearfix">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        </div>
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li class=""><a href="adminpage.jsp">Home</a>
                                    <ul>
                                      
                                        </li>
                                    </ul>
                                </li>
                                <li class=""><a href="apackdeatils.jsp">Package Details</a>
                                    <ul>
                                      
                                    </ul>
                                </li>
                               
                              
                                <li class=""><a href="acomplaindetails.jsp">Complains</a>
                                    <ul>
                                      
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="">Setting
                                    <ul>
                                        <li><a href="change-password.jsp">Change password</a></li>
                                       
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="mainmenu-right style2">
                        <div class="outer-search-box">
                            <div class="seach-toggle"><i class=""></i></div>
                            <ul class="search-box">
                                <li>
                                    <form method="post" action="#">
                                        <div class="form-group">
                                           
                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <div class="cart-box">
                            <a href="shoping-cart.html"><span class="-bag"><span class="number"></span></span></a>
                        </div>
                        <div class="button">
                            <a class="btn-one" href="adminlogin.jsp">LOGOUT<span class="flaticon-next"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--End Main Header-->

        <!--Start breadcrumb area-->
        <section class="breadcrumb-area style2" style="background-image: url(images/resources/breadcrumb-bg-2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="inner-content-box clearfix">
                            <div class="title-s2 text-center">
                                <span>Control panal</span>
                                <h1>Admin Page</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="adminpage.jsp">Home</a></li>
                                    <li><a href="project.html">Admin</a></li>
                                    <li class="active">Admin Panal</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End breadcrumb area-->

        <!--Start Main project area style2-->
        <section class="main-project-area style2">
            <div class="container">
              
                <div class="row filter-layout masonary-layout">
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item contem ret">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-1.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="auserdetails.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="auserdetails.jsp">USER DETAILS</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item mod trad">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-2.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="aotherdetails.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="aotherdetails.jsp">OTHER REGISTER DETAILS</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item mod contem">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-3.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="bookcontadmin.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="bookcontadmin.jsp">CONTRACTOR BOOKED</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->

                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item mod trad">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-4.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="bookplumadmin.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="bookplumadmin.jsp">PLUMBER BOOKED</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item mod contem">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-5.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="bookelectadmin.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="bookelectadmin.jsp">ELECTRION BOOKED</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item contem ret">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-6.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="apaintdetails.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="apaintdetails.jsp">PAINTER DETAILS</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->

                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item mod contem">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-7.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="addprod.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="addprod.jsp">ADD Product</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item contem ret">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-8.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="aproddetails.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="project-single.html">PRODUCT DETAILS</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                    <!--Start single project item-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 filter-item mod trad">
                        <div class="single-project-style5">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v2-9.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="arenovatedetails.jsp"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title">
                                <span></span>
                                <h3><a href="arenovatedetails.jsp">RENOVATION</a></h3>
                            </div>
                        </div>
                    </div>
                    <!--End single project item-->
                </div>
                
            </div>
        </section>
        <!--End Main project area style2-->

        <!--Start footer area Style4-->
     
        <!--End footer area style4-->

        <!--Start Footer Contact Info Area-->
        <section class="footer-contact-info-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <ul class="footer-contact-info clearfix">
                            <li>
                                <div class="single-footer-contact-info">
                                    <div class="inner">
                                        <div class="icon">
                                            <span class="icon-global"></span>
                                        </div>
                                        <div class="text">
                                            <p>South end circle<br> Bangalore 560002</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-footer-contact-info">
                                    <div class="inner">
                                        <div class="icon">
                                            <span class="icon-support1"></span>
                                        </div>
                                        <div class="text">
                                            <p>+91 9741765401<br> <span>Mon - Friday:</span> 9.00am to 6.00pm</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-footer-contact-info">
                                    <div class="inner">
                                        <div class="icon">
                                            <span class="icon-shipping-and-delivery"></span>
                                        </div>
                                        <div class="text">
                                            <p>Lifestyle@gmail.com</p>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!--End Footer Contact Info Area-->

        <!--Start footer bottom area-->
        <section class="footer-bottom-area style3">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="copyright-text text-center">
                            <p><a href="https://www.templateshub.net" target="_blank">LifeStyle</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End footer bottom area-->

    </div>


    <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>



    <script src="js/jquery.js"></script>
    <script src="js/appear.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/isotope.js"></script>
    <script src="js/jquery.bootstrap-touchspin.js"></script>
    <script src="js/jquery.countTo.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.enllax.min.js"></script>
    <script src="js/jquery.fancybox.js"></script>
    <script src="js/jquery.mixitup.min.js"></script>
    <script src="js/jquery.paroller.min.js"></script>
    <script src="js/owl.js"></script>
    <script src="js/validation.js"></script>
    <script src="js/wow.js"></script>

    <script src="js/map-helper.js"></script>

    <script src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
    <script src="assets/timepicker/timePicker.js"></script>
    <script src="assets/html5lightbox/html5lightbox.js"></script>

    <!-- thm custom script -->
    <script src="js/custom.js"></script>



</body>


<!-- project-v2 06:49:15 GMT -->
</html>