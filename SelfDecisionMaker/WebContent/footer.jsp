<%-- 
    Document   : footer
    Created on : Mar 16, 2017, 11:46:07 AM
    Author     : KPFIUSer
--%>

	<footer>
		<div class="nl-area">
			<div class="container">
			<form name="subscribe" id="subscribe" method="post" action="subscribe.action">
				<h1 class="col-md-6">Subscribe to our newsletter &amp; be in touch.</h1>
				<div class="col-md-4" style="padding-top:10px;">
						  <input type="text" class="form-control" placeholder="Enter Email Address" required="required" aria-describedby="basic-addon2">
				</div>
				<div class="col-md-2" style="padding-top:10px;">
						  <a href="#" class="btn btn-lg btn-default" onclick="subscribe()" role="button">Submit</a>
				</div>
				</form>
			</div>
		</div>
		
		<div class="nav-area">
			<div class="container">
				<div class="col-md-3">
					<p>
						<img src="images/logo.png" class="img-responsive"><br>
						The growth and development of S.D Makers  is the highest calling of leadership . 
						<br>
						<br>
						Earn How Much You can.
					</p>
				</div>

				<div class="col-md-3">
        <h2 class="title">Latest News</h2>
        <div class="new-penal">
        <iframe src="ShowNews.html" style="width:270px;"></iframe>

        
        
        </div>
        
        
      </div>
				<div class="col-md-3">
					<h2 class="title">Reach us</h2>
					<p> <strong>Address : </strong><br>
        S.D.M<br>
H.O Jol Thana Mandi <br>
SunderNagar Road, <br>
District Mandi- (H.P)<br>

          Customer Care :<tcxspan>Comming Soon</tcxspan><br>
          <a href="mailto:info@sdmaker.biz">info@sdmaker.biz</a><br>
          <a href="mailto:ayurveda@sdmaker.biz">ayurveda@sdmaker.biz</a><br>
          <a href="http://www.sdmaker.biz/">www.sdmaker.biz</a> </p>
					<div class="col-md-12">
						<a class="fa fa-facebook social-icon fb" href="#"></a>
						<a class="fa fa-twitter social-icon tw" href="#"></a>
						<a class="fa fa-linkedin social-icon in" href="#"></a>
						<a class="fa fa-google-plus social-icon gp" href="#"></a>
					</div>
					
					
				</div>

				<div class="col-md-3">
        <h2 class="title">Copyright </h2>
        <p> <a href="#" title="Home"><span class="fa fa-angle-right"> </span> Privacy Policy</a> <br>
          <a href="#" title="About us"><span class="fa fa-angle-right"> </span> Sitemap </a><br>
          <a href="#" title="Services"><span class="fa fa-angle-right"> </span> Help</a><br>
          Copyright 2018 &copy; Self Decision Maker <br>
          All Rights Reserved.<br>
      
 Powered By  <a href="https://www.javaflocks.com/" target="_blank" style="color:#ffcd22;">JavaFlocks Business Solution Pvt. Ltd.</a>
        </p>
      </div>
			</div>
		</div>
		
		
	</footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
	<script type="text/javascript">
	function subscribe(){
	$("#subscribe").submit();
	}
	</script>