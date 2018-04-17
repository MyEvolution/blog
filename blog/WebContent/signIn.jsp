<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
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
	input{border-radius:10px; min-width:30%;padding:1em}
	</style>
</head>
<body style="max-height:100%">

		<c:if test='${isIn eq "no" }'><script> alert("用户名或密码错误！")</script></c:if>
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
						<section class="testimonial">
							<h2>Sign In</h2>
					
<form action="/blog/signin" method="post">
<input type=text name=email id=email placeholder="请输入邮箱"/><br><br>
<input type=password id=password name=password placeholder="请输入密码"/><br><br>
<input type=submit class="blue-btn" value="登录"/>
</form>			</section>
						<!-- testimonial -->
						
						<!-- end of cols -->
					</div>
				<!-- end of shell -->
				</div>
				<!-- end of container -->
			</div>

</body>
</html>