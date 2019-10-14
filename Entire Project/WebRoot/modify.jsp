<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Change</title>
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
	<!-- header -->	
	<div class="header">
		<div class="container">
			<div class="header-grid">
				<div class="header-grid-left">
					<ul>
					<% String username = (String)session.getAttribute("username");%>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:RobotHome@bupt.edu.cn">RobotHome@bupt.edu.cn</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+188 <span>1077</span> 8597</li>
						<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="login.jsp">Login</a></li>
						<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="register.jsp">Register</a></li>
						<li><i class="cart box_1" aria-hidden="true"></i><a href="./ShowCartServlet?username=<%=username%>">
							<h3><center> 
								<img src="images/bag.png" height="22" alt="" />
							</center></h3><p>Cart</p>
						</a>
						</li>
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
							<li class="active"><a class="act" href="index.jsp">HOME</a></li>	
							<li><a href="./ProductServlet">PRODUCTS</a></li>
							<li><a href="aboutus.html">ABOUT US</a></li>
							<li><a href="mail.html">CONTACT US</a></li>
						</ul>
					</div>
					</nav>
				</div>
				<div class="clearfix"> </div>
			</div>	
		</div>
		<div class="clearfix"> </div>
	</div>
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Forgot your password</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- login -->
	<div class="login">
		<div class="container">
			<h3>Password <br>Assistance</h3>
			<p class="est">You can change your password by entering your name and email <br>associated with your<strong> RobotHome</strong> account.</p>
			<div class="login-form-grids">
				<form method="post" action="./ModifyServlet">
					<input type="TEXT" name="username" placeholder="Your Name..." required >
					<input type="TEXT" name="email" placeholder="Email Address..." required>
					<input type="PASSWORD" name="password" placeholder="New Password..." required>
					<input type="SUBMIT" name="submit" value="Verify">
				</form>
			</div>
			<h4>New to Robot Home?</h4>
			<p><a href="register.jsp">Create your account</a> (or) Go Back to <a href="index.jsp">HomePage<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
	<!-- //login -->
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