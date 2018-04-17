<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客</title>
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
	<style>
	input{border-radius:10px; min-width:40%;padding:1em}
	textarea{border-radius:10px; min-width:60%;padding:1em}
	</style>
</head>
<body style="max-height:100%">

		<nav class="top-nav">
			<div class="shell">
				<a href="#" class="nav-btn">HOMEPAGE<span></span></a>
				<span class="top-nav-shadow"></span>
				<ul>
					<li ><span><a href="#">home</a></span></li>
					<li class="active"><span><a href="#">all</a></span></li>
					<li><span><a href="#">tag1</a></span></li>
					<li><span><a href="#">tag2</a></span></li>
					<li><span><a href="#">tag3</a></span></li>
					<li><span><a href="#">tag4</a></span></li>
					<li><span><a href="#">tag5</a></span></li>
						<c:if test='${isRoot eq "yes"}'><li><span><a href="/blog/editor">editor</a></span></li></c:if>
			
					
				</ul>
			</div>
		</nav>
			<header  id="header" style="max-height:100px">
				<!-- shell -->
				<div class="shell">
					<div class="header-inner">
						<!-- header-cnt -->
						<div class="header-cnt">
							<h1 ><a href="#" style="color:white">WLSDZYZL-Blog</a></h1>		
							<p>
								<span class="mobile">Welcome to Wlsdzyzl's Blog!</span>
								<span class="desktop"> I am an interesting people ,I will share my happiness here!</span>
							</p>
	


						</div>

						<!-- end of slider -->

					</div>

				</div>
				<!-- end of shell -->	
			</header>
			<div class="main" >
				<span class="shadow-top"></span>
				<!-- shell -->
				<div class="shell">
					<div class="container">
						<!-- testimonial -->
						<section class="testimonial" style="left:20%;text-align:left">
							
	<br>			
                                                							<div  style="text-align:left;left:20%">
								<!-- widget -->
								<div class="widget">
									<h3>当前共有${count}篇文章...</h3>
									<ul>
									<c:forEach var = "article" items="${articles}" varStatus="vast">
										<li>
											<div class="img-holder">
												<a href="/blog/article?aid=${article.id}"><h3>${ article.title}</h3></a>
												tag:${ article.tag }
											</div>
											
											<p>${ article.ftext }...</p>
										</li>
										</c:forEach>


									</ul>
									<div class="cl">&nbsp;</div>
								</div>
								<!-- end of widget -->
							</div>	
		</section>
						<!-- testimonial -->

					</div>
				<!-- end of shell -->
				</div>
				<!-- end of container -->
			</div>


</body>
</html>