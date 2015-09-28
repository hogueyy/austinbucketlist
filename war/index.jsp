<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>

<%@ page import="com.googlecode.objectify.*" %>
<%@ page import="java.util.Collections" %> 
<%@ page import="austinbucketlist.BlogPost" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Austin Bucketlist</title>
<link rel="shortcut icon" href="light/img/favicon.ico" />
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
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
%>
   	<div class="container">
       <div class="item">
           <div class="overlay"></div>
           <div class="carousel-caption">
               <h1 class="upper animation animated-item-1 bottom-margin-20">
                   Welcome to the <span class="text-color"> Austin Bucketlist</span> Blog
               </h1>
               <p class="bottom-margin-20">A growing list of cool things to do in Austin, TX</p>
               <% if (user == null){ %>
               		<a class="btn btn-default animation animated-item-2" href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>
               <% } %>
           </div>
           <img src="light/img/atx-pano.jpg" alt="" />
       </div>
   </div>
   

	<div class="container">
<%
	if (user != null) { 
		pageContext.setAttribute("user", user);	
%>
		  <form action="/newPost" method="get">
		  	<label for="new">What's on your Austin Bucketlist?</label>
	      	<div><input type="submit" value="New Post" id="new" class="btn btn-default animation animated-item-2" /></div>
		  </form>
<%
	}
	else{ 
%>
	<p>Sign in above to create a new post</p>
<% } 

    ObjectifyService.register(BlogPost.class);
	List<BlogPost> posts = ObjectifyService.ofy().load().type(BlogPost.class).list();   
	Collections.sort(posts);	
	if (posts.isEmpty()) {
        %>
        <p>Oh, there's no posts yet! Click 'New Post' to fix this.</p>
        <%

    } else {
    	int count = 2;
        for (BlogPost post : posts) {
            pageContext.setAttribute("post_content", post.getContent());
            pageContext.setAttribute("post_subject", post.getSubject());
            pageContext.setAttribute("post_date", post.getDate().substring(0,9));
            pageContext.setAttribute("post_user", post.getUser());
        %>
       	             <div class="col-sm-4 col-md-3">
       	                 <div class="post-item">
       	                     <h2 class="post-title">
       	                         <a href="blog-single.html">${fn:escapeXml(post_subject)}</a>
       	                     </h2>
       	                     <div class="post-content">${fn:escapeXml(post_content)}</div>
       	                     <div class="post-meta">
       		                     <!-- Author  -->
       		                     <span class="author">
       		                     <i class="fa fa-user"></i>${fn:escapeXml(post_user.nickname)}</span> 
       		                     <!-- Meta Date -->
       		                      
       		                     <span class="time">
       		                     <i class="fa fa-calendar"></i>${fn:escapeXml(post_date)}</span>  
       	                     </div>                    
       	                 </div>
       	             </div>
<%      count += 1;    
        }
    }
%>
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