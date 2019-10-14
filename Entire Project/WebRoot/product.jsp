<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="trackRobot.vo.Product" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>Products</title>
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
				<div class="header-grid-left animated wow slideInLeft">
					<ul>
					 <%String username = (String)session.getAttribute("username"); %>
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
					<h1><a href="index.html">ROBOT HOME <span>DREAM YOUR DREAM</span></a></h1>
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
							<li><a href="index.jsp">HOME</a></li>	
							<!-- Mega Menu -->
							<li class="active"><a href="./ProductServlet" class="act">PRODUCTS</a></li>
							<li><a href="aboutus.html">ABOUT US</a></li>
							<li><a href="mail.html">CONTACT Us</a></li>
						</ul>
					</div>
					</nav>
				</div>
				<div class="logo-nav-right">
					<div class="search-box">
						<div id="sb-search" class="sb-search">
							<form method="post" action="./SearchServlet">
								<input class="sb-search-input" placeholder="Enter your search term..." type="text" name="proName">
								<input class="sb-search-submit" type="submit" value="Search">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
					</div>
						<!-- search-scripts -->
						<script src="js/classie.js"></script>
						<script src="js/uisearch.js"></script>
							<script>
								new UISearch( document.getElementById( 'sb-search' ) );
							</script>
						<!-- //search-scripts -->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //header -->
<!-- breadcrumbs -->

	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Products</li>
			</ol>
		</div>
	</div>
	
	<div class="products">
		<div class="container">
			<center>
			<div class="col-md-10">
				<div class="products-right-grid">
					<div class="products-right-grids-position">
						<img src="images/18.jpg" alt=" " class="img-responsive" />
						<div class="products-right-grids-position1">
							<h4>2018 New Robot Arrival</h4>
							<p>Temporibus autem quibusdam et aut officiis debitis aut rerum 
								necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae 
								non recusandae.</p>
						</div>
					</div>
				</div>
				<form method="post" action="./servlet/ProductServlet" >
	 			</form>
	 	<%ArrayList<Product> proAL= (ArrayList<Product>)session.getAttribute("proAL"); %> 
				<div class="products-right-grids-bottom">
				<div class="col-md-9 products-right-grids-bottom-grid">
			<%for(Product tem: proAL){
    			String proName = tem.getProName();
    			Integer proID = tem.getProID();
    			double proPrice=tem.getProPrice();
    			String proDetail=tem.getProDetail();
    			String proImg=tem.getProImg();
    		%>
						<div class="new-collections-grid1 products-right-grid1 animated wow slideInUp">
							<div class="new-collections-grid1-image">
								<a href=" proDetail.jsp?proID=<%=proID%> "><img src=<%=proImg %> alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos products-right-grids-pos">
									<a href=" proDetail.jsp?proID=<%=proID%> ">Quick View</a>
								</div>
							</div>
							<h4><a href=" proDetail.jsp?proID=<%=proID%> "> <%=proName %> </a></h4>
							<p><%=proDetail%></p>
							<div class="simpleCart_shelfItem products-right-grid1-add-cart">
								<p>Price:<span> <%=proPrice %> </span><a class="item_add" href=" proDetail.jsp?proID=<%=proID%> ">ADD TO CART</a></p>
							</div>
						</div><%} %>
					</div>
			
					<div class="clearfix"> </div>
				</div>
				<nav class="numbering animated wow slideInRight">
				  <ul class="pagination paging">
					<li>
					  <a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					  </a>
					</li>
					<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
					  <a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					  </a>
					</li>
				  </ul>
				</nav>
			</div>
				</center>
			<div class="clearfix"> </div>
		</div>
	</div>
	
  
	<!-- //breadcrumbs -->
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
</html>ml>