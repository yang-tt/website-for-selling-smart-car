<!doctype html>
<html>
<head>
<!-- General Head Content -->
<!-- meta tags -->
<meta charset="utf-8" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' /><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- title tag-->
<title>Home</title>
<!-- Stylesheet -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main-charity.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic" rel="stylesheet" type="text/css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	
<script type="application/x-javascript"> 
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</head>

	
<body>
	<!-- header -->	
	<div class="header">
		<div class="container">
			<div class="header-grid">
				<div class="header-grid-left">
					<ul>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:RobotHome@bupt.edu.cn">RobotHome@bupt.edu.cn</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+188 <span>1077</span> 8597</li>
						<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="login.jsp">Login</a></li>
						<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="register.jsp">Register</a></li>
						<%String username = (String)session.getAttribute("username"); %>
						<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="./ShowCartServlet?username=<%=username%>">ShowCart</a></li>
						<li><i class="cart box_1" aria-hidden="true"></i><a href="./ShowCartServlet?username=<%=username%>"><h3><center><img src="images/bag.png" height="22" alt="" /></center></h3><p>Cart</p></a></li>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			<div class="logo-nav">
				<div class="logo-nav-left">
					<h1><a href="index.jsp">ROBOT HOME <span>DREAM YOUR DREAM</span></a></h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp" class="act">Home</a></li>	
							<li><a href="./ProductServlet">Products</a></li>
							<li><a href="aboutus.html">ABOUT US</a></li>
							<li><a href="mail.html">CONTACT US</a></li>
						</ul>
					</div>
					</nav>
				</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>

	<div class="site-wrapper">
		<!-- PRELOADER -->
		<div id="pre-loader" class="pre-loader">
			<div class="loader-inner square-spin">
			</div>
		</div> 
		<!-- .pre-loader ends -->
		<!-- lunbo -->
		<section class="hero-section main-slider" id="hero-section">
			<div id="redone-carousel" class="carousel slide carousel-fade animated-slider" data-interval="3000">
				<ol class="carousel-indicators">
					<li data-target="#redone-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#redone-carousel" data-slide-to="1"></li>
					<li data-target="#redone-carousel" data-slide-to="2"></li>
				</ol>
				<!-- background photos -->
				<div class="carousel-inner">
					<div class="active item">
						<img class="carousel-image" src="images/banner.jpg" alt="slider image one">
						<div class="carousel-content">
							<h1><small data-animation="animated bounceInLeft">The most powerful Robot</small> <strong data-animation="animated bounceInRight">Help you improve your life</strong></h1>
							<p class="lead" data-animation="animated bounceInDown">
							This Robot is your best &amp; smart choice to make your work awesome to take your life to the next level 
							</p>
							
						</div> 
						<!-- .carousel-content ends -->
					</div> 
					<!-- .item ends -->
					<div class="item">
						<img class="carousel-image" src="images/bg.jpg" alt="slider image one">
						<div class="carousel-content">
							<h1><small data-animation="animated bounceInLeft">The most powerful Robot</small> <strong data-animation="animated bounceInRight">Help you improve your life</strong></h1>
							<p class="lead" data-animation="animated bounceInDown">
							This Robot is your best &amp; smart choice to make your work awesome to take your life to the next level 
							</p>
							
						</div> <!-- .carousel-content ends -->
					</div> <!-- .item ends -->
					<div class="item">
						<img class="carousel-image" src="images/111.jpg" alt="slider image one">
						<div class="carousel-content">
							<h1><small data-animation="animated bounceInLeft">The most powerful Robot</small> <strong data-animation="animated bounceInRight">Help you improve your life</strong></h1>
							<p class="lead" data-animation="animated bounceInDown">
							This Robot is your best &amp; smart choice to make your work awesome to take your life to the next level 
							</p>
							
						</div> 
						<!-- .carousel-content ends -->
					</div> 
					<!-- .item ends -->	
				</div> 
				<!-- .carousel-inner ends -->
				<!-- Carousel nav -->
				<a class="carousel-control left" href="#redone-carousel" data-slide="prev">
					<span class="fa fa-angle-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control right" href="#redone-carousel" data-slide="next">
					<span class="fa fa-angle-right" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
			</div> 
			<!-- #carousel ends -->
		</section> 
		<!-- .hero section main-slider ends -->
	</div> 
	<!-- .site-wrapper ends -->
	
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container"> 
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid-left">
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/4.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3>Best <span>Store</span><i> in online shopping</i></h3>
								<div>
									<p>Cupidatat non proident, sunt</p>
									<p>Officia deserunt mollit anim</p>
									<p>Laboris nisi ut aliquip consequat</p>
								</div>
							</figcaption>			
						</figure>
					</div>
				</div>
				<div class="banner-bottom-grid-left1 animated wow slideInUp">
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/1.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-pos">
							<p>Discount 45%</p>
						</div>
					</div>
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/2.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-position">
							<div class="banner-bottom-grid-left1-pos1">
								<p>Latest New Collections</p>
							</div>
						</div>
					</div>
				</div>
				<div class="banner-bottom-grid-right animated wow slideInRight">
					<div class="banner-bottom-grid-left-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="grid-left-grid1-pos">
							<p>top and classic designs <span>2016 Collection</span></p>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>	
	
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-logo">
				<h2><a href="index.jsp">RobotHome <span>dream your dream</span></a></h2>
			</div>
			<div class="copy-right">
				<p>Copyright &copy; 2018.Company name All rights reserved. More Templates <a>Robot Home</a></p>
			</div>
		</div>
	</div>
	<!-- //footer -->

<!-- SCRIPTS -->
<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/SmoothScroll.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="js/jquery.countTo.js"></script>
<script type="text/javascript" src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="js/smooth-scroll.min.js"></script>
<script type="text/javascript" src="js/jquery.downCount.js"></script>
<script type="text/javascript" src="js/circle-progress.js"></script>	
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
