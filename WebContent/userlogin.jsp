<%@page import="com.megainfoware.mail.auth.ConfirmationMailer"%>

<%@page import="com.megainfo.auth.AutoIdGenerator"%>
<!DOCTYPE html>


<html lang="en">


<!-- account 07:01:11 GMT -->
<head>
    <meta charset="UTF-8">
    <title>LifeStyle Interiors</title>

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
  
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
        <header class="main-header header-style2 stricky">
            <div class="inner-container clearfix">
                <div class="logo-box-style2 float-left">
                    <a href="index.jsp">
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

                            </ul>
                        </div>
                    </nav>
                    <div class="mainmenu-right style2">
                        <div class="outer-search-box">
                            <div class="seach-toggle"><i class=></i></div>
                            <ul class="search-box">
                                <li>
                                    <form method="post" action="#">
                                        <div class="form-group">
                                            <input type="search" name="search" placeholder="Search Here" required>
                                            <button type="submit"><i class="fa "></i></button>
                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <div class="cart-box">
                        </div>
                        <div class="button">
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
                                <span>My Account</span>
                                <h1>USER LOGIN PAGE</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="shop.html">Login</a></li>
                                    <li class="active">User-Login</li>
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
                               		<form action="LoginServlet" method="post">

                                   
                                    <div class="col-xl-12">
                                        <div class="input-field">
                                            <input type="text" name="user" placeholder="Enter Mail id *">
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

                    <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
                        <div class="form register">
                            <div class="shop-page-title">
                                <div class="title">Register <span>Here</span></div>
                            </div>

                            <div class="row">
                            				<form action="RegisterServlet" method="post">

  <%
					AutoIdGenerator aig = new AutoIdGenerator();
					String id = aig.getNextId("SELECT id FROM userdetail");
					System.out.println("Last ID " + id);
				%>
<input class="form-control" type="hidden" name="id"
						onkeypress="return /[0-9]/i.test(event.key)" value="<%=id%>">
                                    <div class="col-md-12">
                                        <div class="input-field">
                                            <input type="text" name="user" placeholder="Your Name *">
                                            <div class="icon-holder">
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="input-field">
                                            <input type="text" name="pass" placeholder="Enter Password">
                                            <div class="icon-holder">
                                                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                   <div class="col-md-12">
                                        <div class="input-field">
                                            <input type="text" name="email" placeholder="Enter Mail id *">
                                            <div class="icon-holder">
                                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                      <div class="col-md-12">
                                        <div class="input-field">
                                            <input type="text" name="address" placeholder="Enter Address  *">
                                            <div class="icon-holder">
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                      <div class="col-md-12">
                                        <div class="input-field">
                                            <input type="text" name="phone" placeholder="Enter Phone No *">
                                            <div class="icon-holder">
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                  
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-lg-5 col-md-5 col-sm-12">
                                                <button class="btn-one" type="submit">Register Here</button>
                                            </div>
                                            <div class="col-lg-7 col-md-7 col-sm-12">
                                                <div class="right">
                                                    <h6><span>*</span>You must be a free registered user to submit content. </h6>
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
                                            <p>south-end circle<br> Bangalore 560002</p>
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
                                            <p>Lifestyleinterior@gmail.com</p>
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
                            <p><a href="" target="_blank">LifeStyle Interior</a></p>
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