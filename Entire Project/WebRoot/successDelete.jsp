<!DOCTYPE html>
<html>
<head>
<title>SuccessAdd</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Stylesheet -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main-charity.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic" rel="stylesheet" type="text/css">

<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</head>
	
<body>
	<% String username=(String)session.getAttribute("username");%>
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
						<li><i class="cart box_1" aria-hidden="true"></i><a href="./ShowCartServlet?username=<%=username%>"><h3><center><img src="images/bag.png" height="22" alt="" /></center></h3><p>Cart</p></a></li>
						<div class="clearfix"> 
						</div>
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
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Success Delete</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- register -->
	<div class="register">
		<div class="container">
			<h3>Success</h3>
			<div class="login-form-grids">
				<center>
					<h4><strong>Success!</strong></h4>
					You have delete product from shopping cart successfully! 
					<div class="clearfix"> </div>
					<div class="register-home">
						<div>
							<a href="./ShowCartServlet?username=<%=username%>">Show Cart<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a>
						</div>
						<div class="register-home"><a href="./ProductServlet">Continue Shopping<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a>
						</div>
						<div class="register-home"><a href="index.jsp">Back to HomePage<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a>
						</div>
					</div>
					
				</center>
			</div>
			<div class="register-home">
			</div>
		</div>
	</div>
	<!-- //register -->
	<div class="fixxxx">
		<div class="row-fluid">
			<div class="span6">
				<div class="btn-group">
				 	<center>
						<button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
				 		<img src="images/select.png" class="btn" height="100" alt="" />
						<ul class="dropdown-menu">
							<li>
								<a href="./ShowCartServlet?username=<%=username%>">Shopping Cart</a>
							</li>
							<li>
								<a href="login.jsp">Login</a>
							</li>
							<li>
								<a href="register.jsp">Sign up</a>
							</li>
							<li>
								<a href="./ProductServlet">Product</a>
							</li>
							<li class="divider">
							</li>
						</ul>
					</center>
				</div>
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
</body>
</html>