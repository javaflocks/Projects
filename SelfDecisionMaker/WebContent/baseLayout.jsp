<%-- 
    Document   : baseLayout
    Created on : Mar 16, 2017, 11:45:39 AM
    Author     : KPFIUSer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.ico">
<title>Welcome to SD Maker </title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Owl Carousel Assets -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">
<script src="js/jquery-1.9.1.min.js"></script> 
 <script src="js/assets/vendors/jquery.min.js"></script>
<script src="js/owl.carousel.js"></script>
 <script src="js/bootstrap.min.js"></script>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">//<![CDATA[
	$(function() {
		$("#myModal").modal();
	});
	//]]> 
</script>
<script language="JavaScript" type="text/javascript">
$(document).ready(function(){
$("#owl-example").owlCarousel();
$(".owl-nav").hide();
$(".owl-dots").hide();
});
$("body").data("page", "frontpage");

	function winclose()
	{
	document.getElementById("popup").style.display="none";
	}
</script>

<style type="text/css">
#apDiv2 {
	position:absolute;
	left:400px;
	width:530px;
	height:354px;
	z-index:8888;
	top:200px;
	   }
	   video {
    background-color: #fff;
}
* {
    box-sizing: border-box;
}

.columns {
    float: left;
    width: 33.3%;
    padding: 8px;
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
    background-color: #111;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: #eee;
    font-size: 20px;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}
</style>


  <style type="text/css">tcxspan{text-decoration: underline;	cursor: pointer;}</style>


<style type="text/css">tcxspan{text-decoration: underline;	cursor: pointer;}</style></head>
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

</body>
</html>
