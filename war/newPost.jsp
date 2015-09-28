<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Post - Austin Bucketlist</title>
        <!-- Font -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Arimo:300,400,700,400italic,700italic' />
        <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' />
        <!-- Font Awesome Icons -->
        <link href='light/css/font-awesome.min.css' rel='stylesheet' type='text/css' />
        <!-- Bootstrap core CSS -->
        <link href="light/css/bootstrap.min.css" rel="stylesheet" />
        <link href="light/css/hover-dropdown-menu.css" rel="stylesheet" />
        <!-- Icomoon Icons -->
        <link href="light/css/icons.css" rel="stylesheet" />
        <!-- Revolution Slider -->
        <link href="light/css/revolution-slider.css" rel="stylesheet" />
        <link href="light/rs-plugin/css/settings.css" rel="stylesheet" />
        <!-- Animations -->
        <link href="light/css/animate.min.css" rel="stylesheet" />

        <!-- Owl Carousel Slider -->
        <link href="light/css/owl/owl.carousel.css" rel="stylesheet" />
        <link href="light/css/owl/owl.theme.css" rel="stylesheet" />
        <link href="light/css/owl/owl.transitions.css" rel="stylesheet" />
        <!-- PrettyPhoto Popup -->
        <link href="light/css/prettyPhoto.css" rel="stylesheet" />
        <!-- Custom Style -->
        <link href="light/css/style.css" rel="stylesheet" />
       <link href="light/css/responsive.css" rel="stylesheet" />
        <!-- Color Scheme -->
        <link href="light/css/color.css" rel="stylesheet" />
</head>
<body>
<div class="container">
	<h1>New Post</h1>
	<form action="/newPost" method="post">
		<div class="form-group">
			<div class="col-md-10">
				<label for="subject">Subject</label>
				<input name="subject" class="form-control" id="subject" placeholder="What's on your Austin Bucketlist?">
			</div>
			
			<div class="col-md-10">	
				<label for="content">Content</label>
				<textarea name="content" id="content" class="form-control" placeholder="Tell the people more..." rows="3"></textarea>
			</div>
			
			<div class="text-right"><input type="submit" value="Create post" /></div>
		</div>
    </form>
</div>
    
    <!-- Scripts -->
    <script type="text/javascript" src="light/js/jquery.min.js"></script> 
    <script type="text/javascript" src="light/js/bootstrap.min.js"></script> 
    <!-- Menu jQuery plugin -->
     
    <script type="text/javascript" src="light/js/hover-dropdown-menu.js"></script> 
    <!-- Menu jQuery Bootstrap Addon --> 
    <script type="text/javascript" src="light/js/jquery.hover-dropdown-menu-addon.js"></script> 
    <!-- Scroll Top Menu -->
     
    <script type="text/javascript" src="light/js/jquery.easing.1.3.js"></script> 
    <!-- Sticky Menu --> 
    <script type="text/javascript" src="light/js/jquery.sticky.js"></script> 
    <!-- Bootstrap Validation -->
     
    <script type="text/javascript" src="light/js/bootstrapValidator.min.js"></script> 
    <!-- Animations -->
     
    <script type="text/javascript" src="light/js/jquery.appear.js"></script> 
    <script type="text/javascript" src="light/js/effect.js"></script> 
    <!-- Parallax BG -->
     
    <script type="text/javascript" src="light/js/jquery.parallax-1.1.3.js"></script> 
    <!-- Fun Factor / Counter -->
     
    <script type="text/javascript" src="light/js/jquery.countTo.js"></script> 
    <!-- Custom Js Code -->
     
    <script type="text/javascript" src="light/js/custom.js"></script> 
    <!-- Scripts -->
</body>
</html>