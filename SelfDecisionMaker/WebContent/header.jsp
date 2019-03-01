<%-- 
    Document   : header
    Created on : Mar 16, 2017, 11:45:59 AM
    Author     : KPFIUSer
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div id="un-head">
	<div class="container">
    	<div class="col-md-12">
      		<div class="col-md-9 link" style="text-align:left">
        		<li class="fa fa-envelope-o"></li>
        		Email : <a href="mailto:info@sdmaker.biz">info@sdmaker.biz</a>&nbsp;&nbsp; 
        
        		<a href="index.html#" style="background:#9bdf70; color:#020f30; padding:12px 20px; text-transform:uppercase; font-weight:bold">Notice</a>
        		<!--  <li class="fa fa-phone twitter"></li> Tel : +91 99283 12345  --> 
			</div>
      		<div class="col-md-3" style="text-align:right"> <a class="fa fa-facebook social-icon" href="index.html#"></a> <a class="fa fa-twitter social-icon" href="index.html#"></a> <a class="fa fa-linkedin social-icon" href="index.html#"></a> <a class="fa fa-google-plus social-icon" href="index.html#"></a>
            </div>
    	</div>
	</div>
</div>

<header>
	<div class="navbar-wrapper container">
    	<div class="row">
      		<div class="col-md-12 col-sm-12">
        		<nav class="navbar navbar-default" style="margin-top:5px;">
          			<div class="navbar-header">
            			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                        </button>
          			</div>
          			<a class="navbar-brand" href="home.action"><img src="images/logo.png" alt="SD Maker" style="height:75px" class="img-responsive"></a>
          			<div id="navbar" class="collapse navbar-collapse" style="float:right;margin-top:">
            			<ul class="nav navbar-nav">
              				<li class="activef"><a href="home.action">Home</a></li>
              				<li><a href="about.action">About</a></li>
              				<li><a href="services.action">Services</a></li>
              				<li><a href="products.action">PRODUCTS</a></li>     
             				<li><a href="plans.action">Business Plan</a></li>
             				<!-- <li><a href="bankers.action">Our  Bankers</a></li>
                            <li><a href="legal.action">Legal</a></li> -->
              				<li><a href="signin.action">Sign In</a></li> 
                            <li><a href="signup.action">Sign up</a></li>
              				<li class="activel"><a href="contactUs.action">Contact</a></li>
            			</ul>
          			</div>
          			<!--/.nav-collapse --> 
        		</nav>
			</div>
		</div>
	</div>
  	<div style="clear:both"></div>
</header><!--/header-->	
<!-- Carousel -->
<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	<!-- Indicators -->
  	<ol class="carousel-indicators">
    	<li data-target="#myCarousel" data-slide-to="0" class=""></li>
    	<li data-target="#myCarousel" data-slide-to="1" class=""></li>
    	<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
  	</ol>
  	<div class="carousel-inner" role="listbox">
    	<div class="item" style="rgba(0, 0, 0, 0.6)"> <img src="images/main-slider1.jpg" alt="First slide">
      		<div class="container">
        		<div class="carousel-caption">
          			<h1 class="heading1"> <span class="heading2">Welcome to </span><br>
            Self Decision Maker </h1>
          			<h1 class="heading3"> We Deliver Our Promises. </h1>
          			<p class="para1"> Management, Leadership and Team Building for <br>
            		Business Analysts and Program Managers. </p>
          			<p class="para2"><a href="index.html" class="anchor">Read More</a></p>
        		</div>
      		</div>
    	</div>
    	<div class="item"> <img src="images/main-slider2.jpg" alt="2nd slide">
      		<div class="container">
        		<div class="carousel-caption">
          			<h1 class="heading1"> <span class="heading2">WE PROVIDE </span><br>
            		BUSINESS OPPORTUNITIES</h1>
          			<h1 class="heading3"> We Deliver Our Promises. </h1>
          			<p class="para1"> Management, Leadership and Team Building for <br>
            		Business Analysts and Program Managers. </p>
          			<p class="para2"><a class="anchor" href="index.html#">Read More</a></p>
        		</div>
      		</div>
    	</div>
    	<div class="item active"> <img src="images/main-slider3.jpg" alt="3rd slide">
      		<div class="container">
        		<div class="carousel-caption">
          			<h1 class="heading1"> <span class="heading2">WE ARE </span><br>
            		UNIQUE IN THE MARKET</h1>
          			<h1 class="heading3"> We Deliver Our Promises. </h1>
          			<p class="para1"> Management, Leadership and Team Building for <br>
            		Business Analysts and Program Managers. </p>
          			<p class="para2"><a class="anchor" href="index.html#">Read More</a></p>
        		</div>
      		</div>
    	</div>
	</div>
 	<a class="left carousel-control" href="index.html#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="index.html#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
</div>

