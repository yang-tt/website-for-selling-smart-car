<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="trackRobot.vo.Product" %>
<%@ page import="trackRobot.vo.Cart" %>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = (String)session.getAttribute("username");%>


<!DOCTYPE html>
<html>
<head>
<title>ShoppingCart</title>
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
				<li class="active">Shopping Cart Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
	<div class="checkout">
		<div class="container">
			<h3>Your shopping cart contains following products: </h3>
			<div class="checkout-right">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>ProductID</th>	
							<th>Product</th>
							<th>Quatity</th>
							<th>Product Name</th>
							<th>Price</th>
							<th>Remove</th>
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
						<td class="invert-image"><a href=" proDetail.jsp?proID=<%=proID%> "><img src="<%=proImg%>" alt=" " class="img-responsive" /></a></td>
						<td class="invert"><%=amount %></td>
						<td class="invert"><%=proName %></td>
						<td class="invert"><strong>$</strong><%=proPrice %></td>
						<td class="invert">
						<div class="rem">
								<form method="post" action="./RemoveCartServlet?cartID=<%=cartID%>&username=<%=username%>" >
								<input type="submit" name="remove" value="DELETE"/>
								</form>
						</div>
						</td>
					</tr>
  	<%} %>
	<div class="checkout-left">	
				<div class="checkout-left-basket">
					<h4>Continue to basket</h4>
					<ul>
						<li><strong>Total <i>-</i> <span>$<%=sum%></span></strong></li>
					</ul>
				</div>
					<div class="checkout-right-basket">
					<a href="./ProductServlet"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a></div>
					<div class="checkout-right-basket">
					<a href="./order.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Generate Order</a></div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!-- //checkout -->
</body>
</html>