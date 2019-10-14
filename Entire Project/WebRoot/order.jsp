<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="trackRobot.vo.Product" %>
<%@ page import="trackRobot.vo.Cart" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>Pay</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Stylesheet -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main-charity.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic" rel="stylesheet" type="text/css">
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
						<li><i class="cart box_1" aria-hidden="true"></i><a href="./ShowCartServlet?username=<%=username%>"><h3><center><img src="images/bag.png" height="22" alt="" /></center></h3><p>Cart</p></a></li>
						<div class="clearfix"> 
						</div>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="logo-nav">
				<div class="logo-nav-left">
					<h1><a href="index.html">ROBOT HOME <span>DREAM YOUR DREAM</span></a></h1>
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
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Confirm an Order</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Order -->
	<div class="mail">
		<div class="container">
			<h3>Order</h3>
			<p class="est"><strong>Please fill in the following information in detail to complete the order.</strong></p>
			<div class="login-form-grids">
				<center>
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>ProductID</th>	
								<th>Product Name</th>
								<th>Quantity</th>
								<th>Price/Unit</th>
							</tr>
						</thead>
     <%ArrayList<Cart> cartAL= (ArrayList<Cart>)session.getAttribute("cartAL");
 	 	double sum = 0;
 		int i=1;%> 
 	 Welcome to <%=username%>'s Cart. <br>	 
    
   <% for(Cart tem: cartAL){
    	Product pro = tem.getPro();
    	int proID = pro.getProID();
    	String proName = pro.getProName();
    	double proPrice = pro.getProPrice();
    	String proImg=pro.getProImg();
    	
    	int cartID =tem.getCartID();
    	int amount =tem.getAmount();
    	sum+=tem.getTotalPrice();
    	%>
						<tr class="rem1">
							<td class="invert"><%=proID %></td>
							<td class="invert"><%=proName %></td>
							<td class="invert"><%=amount %></td>
							<td class="invert"><%=proPrice %></td>
						</tr>
		  	<%} %>				
					</table>
				</center>
			</div>
			<div class="mail-grids">
				<center>
					<div class="col-md-8 mail-grid-left">
						<form method="post" action="./OrderServlet">
							<div class="bbbbb">
								<label class="control">Receiver Name:</label>
								<input type="text" name="ordName" placeholder="Input name who will receive the robot..." required >
                                
							</div>
							<div class="bbbbb">
								<label class="control">Phone Number:</label>
								<input type="text" name="ordPhone" placeholder="Input phone number who will receive the robot..." required >
							</div>
							<div class="bbbbb">
								<label class="control">Receiver Address:</label>
								<input type="text" name="ordAddress" placeholder="Input address who will receive the robot..." required >
							</div>
							<div class="bbbbb">
								<label class="control">Zip Code:</label>
								<input type="text" name="zipcode" placeholder="Input zip code who will receive the robot..." required >
							</div>
							<div class="aaaaa">
								<input type="submit" value="Pay Now" >
							</div>
							<div>
								<a href="./ProductServlet"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
							</div>
						</form>
					</div>
				</center>
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
</body>
</html>