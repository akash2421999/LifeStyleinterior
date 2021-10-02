<!DOCTYPE html>
<html lang="en">


<!-- account 07:01:11 GMT -->
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
        <header class="main-header header-style2 stricky">
           	<%@include file="header3.jsp"%>
           
        </header>
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
      
        <!--End Main Header-->

        <!--Start breadcrumb area-->
        <section class="breadcrumb-area style2" style="background-image: url(images/resources/breadcrumb-bg-2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="inner-content-box clearfix">
                            <div class="title-s2 text-center">
                                <span>My Account</span>
                                <h1>Admin Login</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="index-2.html">Home</a></li>
                                    <li><a href="shop.html">Hidden</a></li>
                                    <li class="active">AdminLogin</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End breadcrumb area-->

        <!--Start login register area-->
        <section class="login-register-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
                        <div class="form">
                            <div class="shop-page-title">
                                <div class="title">Login <span>Now</span></div>
                            </div>
                            <div class="row">
                     <form action="AdminlogServlet" method="post">
                                   
                                    <div class="col-xl-12">
                                        <div class="input-field">
                                            <input type="text" name="user" placeholder="Enter">
                                            <div class="icon-holder">
                                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="input-field">
                                            <input type="text" name="pass" placeholder="Enter Password">
                                            <div class="icon-holder">
                                                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="row">
                                            <div class="col-xl-6 col-lg-6 col-sm-12">
                                                <button class="btn-one" type="submit">Login Now</button>
                                                <div class="remember-text">
                                                    <div class="checkbox">
                                                        <label>
                                                    <input name="remember" type="checkbox">
                                                    <span>Remember Me</span>
                                                </label>
                                                    </div>
                                                </div>
                                            </div>
                                          
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                  </div>
              </div>
          </section>
        <!--End login register area-->

        <!--Start footer area Style4-->
       
        <!--End footer area style4-->

        <!--Start Footer Contact Info Area-->
        
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
    <script src="js/jquery.bootstrap-touchspin.js"></script>

    <script src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
    <script src="assets/timepicker/timePicker.js"></script>
    <script src="assets/html5lightbox/html5lightbox.js"></script>

    <script src="assets/bootstrap-sl-1.12.1/bootstrap-select.js"></script>
    <script src="assets/jquery-ui-1.11.4/jquery-ui.js"></script>

    <!-- thm custom script -->
    <script src="js/custom.js"></script>



</body>


<!-- account 07:01:11 GMT -->
</html>