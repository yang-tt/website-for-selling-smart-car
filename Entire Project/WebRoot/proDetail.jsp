<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="trackRobot.vo.Product" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'addCartTest.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
 	<% ArrayList<Product> proAL= (ArrayList<Product>)session.getAttribute("proAL"); 
  		int proID = Integer.parseInt(request.getParameter("proID"));
  		String username = (String)session.getAttribute("username");
  		String proName = null;
    	int proNum= 0;
    	double proPrice = 0;
    	String proDetail = null;
    	String proImg=null;%> 
    	
    <%for(Product tem: proAL){
    	if(tem.getProID()==proID){
    		proName = tem.getProName();
    		proPrice= tem.getProPrice();
    		proNum=tem.getProNum();
    		proDetail=tem.getProDetail();
    		proImg=tem.getProImg();
    		
    	} %>
    	<%} %>
    
    		<div class="single">
		<div class="container">
			<center><div class="col-md-8 single-right">
				<div class="col-md-5 single-right-left">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb=" <%=proImg%> ">
								<div class="thumb-image"> <img src=" <%=proImg%> " alt="" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
					<!-- flixslider -->
						<script defer src="js/jquery.flexslider.js"></script>
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>
					<!-- flixslider -->
				</div>
				<div class="col-md-7 single-right-left simpleCart_shelfItem">
					<h3> <%=proName %> </h3>
					<br>
					<p>Product ID: <strong> <%=proID %> </strong></p>
					<p>Stocks Remain: <span class="item_price"><strong><%=proNum%></strong></span></p>
					
					<h4>Price: <span class="item_price"> <%=proPrice %> </span></h4>
					
					<div class="description">
						<h5><i>Description</i></h5>
						<p> <%=proDetail%> </p>
					</div>
					<div class="col-md-12 column">
					<%if(proNum>0){ %>
						<form method="post" action="./AddCartServlet?proID=<%=proID%>&proNum=<%=proNum%>&username=<%=username%>" role="form">
							<div class="form-group111">
					 			<label for="inputEmail3" class="col-sm-2111 control-label">Quantity:</label>
								<div class="clearfix"> </div>
								<div class="col-sm-10111">
									<input type="TEXT" name="amount" class="form-control" style="width:60px; height=100px" />
								</div>
							</div>
							<div class="clearfix"> </div>
							<div class="occasion-cart">
								<input type="SUBMIT" name="submit" value="ADD TO CART" style="width:150px; color:#d8703f;background-color: #FFFFFF; border:  solid #d8703f; border-radius: 6px;margin-right: 0px; margin-top: 0px; float: right;">
							</div>
						</form>
					<%} else{%>
						Inventory shortage!<br>	
	  				<%} %>
					</div>
					<div class="occasion-cart">
						<a class="item_add" href="./ShowCartServlet?username=<%=username%>">Show Cart </a>
					</div>	
					<div class="occasion-cart">
						<a class="item_add" href="./ProductServlet">BACK TO SHOPPING </a>
					</div>
				</div>
				<div class="clearfix"> </div>
				
			</div>
			</center>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //single -->
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
<!-- zooming-effect -->
	<script src="js/imagezoom.js"></script>
<!-- //zooming-effect -->
</body>
</html>