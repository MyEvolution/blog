<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import = "java.util.*,dao.*" %>
    <%@ page import = "java.util.*,dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title>wlsdzyzl's blog</title>
	<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' />
	
	<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="js/modernizr.custom.js"></script>
	<![endif]-->
	<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>
</head>
<body>
	<div id="wrapper">
		
		<!-- top-nav -->
		<nav class="top-nav">
			<div class="shell">
				<a href="#" class="nav-btn">HOMEPAGE<span></span></a>
				<span class="top-nav-shadow"></span>
				<ul>
					<li class="active"><span><a href="#">home</a></span></li>
					<li><span><a href="#">tag1</a></span></li>
					<li><span><a href="#">tag2</a></span></li>
					<li><span><a href="#">tag3</a></span></li>
					<li><span><a href="/blog/message">message</a></span></li>
					
				</ul>
			</div>
		</nav>
		<!-- end of top-nav -->
			<!-- header -->
			<header  id="header">
				<!-- shell -->
				<div class="shell">
					<div class="header-inner">
						<!-- header-cnt -->
						<div class="header-cnt">
							<h1 ><a href="#" style="color:white">WLSDZYZL-Blog</a></h1>		
							<p>
							<c:if test='${isIn eq "yes" }'><span class="mobile"> Hello,${name }!</span><br></c:if>
								<span class="mobile">Welcome to Wlsdzyzl's Blog!</span>
								<span class="desktop"> I am an interesting people ,I will share my happiness here!</span>
							</p>
							<a href="/blog/signIn.jsp" class="blue-btn">Sign in</a>
						</div>
						<!-- end of header-cnt -->
						<!-- slider -->
						<div class="slider-holder">
							<div class="flexslider">
								<ul class="slides">
									<li><img src="css/images/slide-img.png" alt="" /></li>
								
									<li><img src="css/images/slide-img.png" alt="" /></li>

									<li><img src="css/images/slide-img.png" alt="" /></li>

									<li><img src="css/images/slide-img.png" alt="" /></li>

									<li><img src="css/images/slide-img.png" alt="" /></li>
								</ul>
							</div>
						</div>
						<!-- end of slider -->
						<div class="cl">&nbsp;</div>
					</div>
					<div class="cl">&nbsp;</div>
				</div>
				<!-- end of shell -->	
			</header>
			<!-- end of header -->
			<!-- main -->
			<div class="main">
				<span class="shadow-top"></span>
				<!-- shell -->
				<div class="shell">
					<div class="container">
						<!-- testimonial -->
						<section class="testimonial">
							<h2>Responsive CSS Template with jQuery Slider</h2>
							<p><strong>â</strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum consequat. Nam leo libero, scelerisque tincidunt commodo id, hendrerit vitae orci. <span class="mobile">Suspendisse eget nibh turpis. Sed at accumsan neque. Praesent purus eros, egestas eu tempus ut, mollis et libero"</span></p>
						</section>
						<!-- testimonial -->

						<section class="blog">
							<!-- content -->
							<div class="content">
								<img src="css/images/i-img.png" alt=""  class="alignleft"/>
								<div class="cnt">
									<h3>We Guarantee Commitment &amp; Quality</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum consequat. Nam leo libero, scelerisque tincidunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque. Praesent purus eros, egestas eu temp</p>
									<ul>
										<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
										<li><a href="#">Cras molestie condimentum consequat. </a></li>
										<li><a href="#">Nam leo libero, scelerisque tincidunt commodo id</a></li>
										<li><a href="#">Dae molestie condimentum consequat dolor</a></li>
									</ul>
								</div>
							</div>
							<!-- end of content -->

							<!-- sidebar -->
							<aside class="sidebar">
								<!-- widget -->
								<div class="widget">
									<h3>Latest Blog Posts</h3>
									<ul>
										<li>
											<div class="img-holder">
												<a href="#"><img src="css/images/post-img.png" alt="" /></a>
											</div>
											
											<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em> </a><span>02.02.2012</span></a> </p>
										</li>
										<li>
											<div class="img-holder">
												<a href="#"><img src="css/images/post-img2.png" alt="" /></a>
											</div>
											<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em> </a><span>01.02.2012</span></a> </p>
										</li>
										<li>
											<div class="img-holder">
												<a href="#"><img src="css/images/post-img3.png" alt="" /></a>
											</div>
											<p>
											<a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em> 
											<span>30.01.2012</span></a></p>
										</li>
									</ul>
									<div class="cl">&nbsp;</div>
								</div>
									<a href="#" class="view">View All</a>
								<!-- end of widget -->
							</aside>
							<!-- end of sidebar -->
							<div class="cl">&nbsp;</div>
						</section>	
						
						<!-- cols -->
						<section class="cols">
							<div class="col">
								<h3>Tableless Construction</h3>
								<img src="css/images/cols-img.png" alt="" class="alignleft"/>
								<div class="col-cnt">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
								</div>
								<a href="#" class="view">View More</a>
							</div>
							<div class="col">
								<h3>Weâre Hiring</h3>
								<img src="css/images/cols-img2.png" alt="" class="alignleft"/>
								<div class="col-cnt">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
								</div>
								<a href="#" class="view">View More</a>
							</div>
							<div class="col">
								<h3>Our Partners</h3>
								<img src="css/images/cols-img3.png" alt="" class="alignleft"/>
								<div class="col-cnt">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
								</div>
								<a href="#" class="view">View More</a>
							</div>
							<div class="cl">&nbsp;</div>
						</section>
						<!-- end of cols -->
					</div>
				<!-- end of shell -->
				</div>
				<!-- end of container -->
			</div>
			<!-- end of main -->
		</div>	
		<!-- footer-push -->
		<div id="footer-push"></div>
		<!-- end of footer-push -->
	
	<!-- end of wrapper -->
	<!-- footer -->
	<div  id="footer">
		<span class="shadow-bottom"></span>
		<!-- footer-cols -->
		<div class="footer-cols">
			<!-- shell -->
			<div class="shell">
				<div class="col">
					<h3><a href="#">Solutions</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Lorem lipsum dolor </a></li>
							<li><a href="#">Ame tleo libero dolor</a></li>
							<li><a href="#">Aidpispicing lipsum </a></li>
							<li><a href="#">Commodo id amet </a></li>
							<li><a href="#">Sectetur amet au car </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Services</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Lorem lipsum dolor </a></li>
							<li><a href="#">Ame tleo libero dolor</a></li>
							<li><a href="#">Aidpispicing lipsum </a></li>
							<li><a href="#">Commodo id amet </a></li>
							<li><a href="#">Sectetur amet au car </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Portfolio</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Lorem lipsum dolor </a></li>
							<li><a href="#">Ame tleo libero dolor</a></li>
							<li><a href="#">Aidpispicing lipsum </a></li>
							<li><a href="#">Commodo id amet </a></li>
							<li><a href="#">Sectetur amet au car </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Contact Us</a></h3>
					<div class="col-cnt">
						<p><strong>Email:</strong> <a href="#">info@yourwebsitename.com</a></p>
						<p><strong>Phone:</strong> 655-606-111</p>
						<p><strong>Adress:</strong> East Pixel Bld. 99, Creative City 9000,Republic of Design Email:</p>	
					</div>
				</div>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- end of shell -->
		</div>
		<!-- end of footer-cols -->
		<div class="footer-bottom">
			<div class="shell">
				<nav class="footer-nav">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Projects</a></li>
						<li><a href="#">Solutions</a></li>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contacts</a></li>
					</ul>
					<div class="cl">&nbsp;</div>
				</nav>
				<p class="copy">&copy; Copyright 2012<span>|</span>Sitename. Design by <a href="http://chocotemplates.com" target"_blank">ChocoTemplates.com</a></p>
			</div>
		</div>
	</div>
	<!-- end of footer -->
</body>
</html>