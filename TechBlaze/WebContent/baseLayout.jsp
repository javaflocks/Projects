<%-- 
    Document   : baseLayout
    Created on : Mar 16, 2017, 11:45:39 AM
    Author     : KPFIUSer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML>

<html>
	<head>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/gif" href="images/KP3.gif" />
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
        <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	 <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/overwrite.css">
	<link href="css/animate.min.css" rel="stylesheet"> 
	<link href="css/style.css" rel="stylesheet" />
	 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>	
	<script src="js/parallax.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="js/functions.js"></script>
	<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/anmt.css">
    <!-- Bootstrap  -->
	<link rel="stylesheet" href="css/btstrp.css">
    <!-- Flexslider -->
	<link rel="stylesheet" href="css/flxslder.css">
	<!-- Icon Fonts-->
	<link rel="stylesheet" href="css/icon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/thmfy-icns.css">
	
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/mgnfc-ppup.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/o.c.min.css">
	<link rel="stylesheet" href="css/o.t.default.min.css">
	
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/styl.css">
        <link rel="stylesheet" href="css/jquery-ui.css">

	<!-- Modernizr JS -->
	<script src="js/mdrnisr2.6.2.min.js"></script>
    
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jqury.esing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/btstrp.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.validationEngine-en.js"></script>
         <script src="js/jquery.validationEngine.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
        <script src="js/combodate.js"></script>
        <script src="js/moment.js"></script>
        <script src="js/calander.js"></script>
        
<meta charset="utf-8">
	<link href="css/iconic.css" media="screen" rel="stylesheet" type="text/css" />
	<script src="js/prefix.js"></script>
        <link rel="stylesheet" href="css/ms.css">
        <link rel="stylesheet" href="css/colorbox.css" />
	<script src="js/jquery.colorbox.js"></script>
        
	<link href="css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />	
	</head>
<body>

<tiles:insertAttribute name="header" />

<div class="row">
    <div id="left_Menu" class="left_menu1">
<tiles:insertAttribute name="menu" />
</div>

<div>
    <br><br> <br><br> 
<tiles:insertAttribute name="body" />
</div>
  
</div>

<tiles:insertAttribute name="footer" />	
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</body>
</html>
