<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
	<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' />
	
	<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>


	<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>
		
	<style>
	input{border-radius:10px; min-width:50%;padding:1em}
	select{border-radius:10px; min-width:20%;padding:1em}
	</style>
</head>
<body style="max-height:100%">


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
<script src="js/wangEditor.min.js" type="text/javascript"></script>
<form id=sub action="/blog/article" method="post">
<input type=text name=title id=title placeholder="请输入标题"/><br><br>
<input type=text name=content id = content style="display:none"/>
<input type=text name=ftext id = ftext style="display:none"/>
<select name=tag id=tag>
<option id=tag1 value=1>tag1</option>
<option id=tag2 selected value=2>tag2</option>
<option id=tag3 value=3>tag3</option>
<option id=tag4 value=4>tag4</option>
<option id=tag5 value=5>tag5</option>
</select><br><br>
    <div id="editor">
        <p></p>
    </div>
 <script type="text/javascript">
    var E = window.wangEditor
    var editor  = new E( document.getElementById('editor') )
    
    editor.create()
    function sub()
	{
    	
	document.getElementById("content").value = editor.txt.html();
	document.getElementById("ftext").value = editor.txt.text().substring(0,120);
	
	document.getElementById("sub").submit();
	}
</script>

<br>
<input type=button class="blue-btn" onclick="sub()" value="提交"/>
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