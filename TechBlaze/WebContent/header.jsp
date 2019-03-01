<%-- 
    Document   : header
    Created on : Mar 16, 2017, 11:45:59 AM
    Author     : KPFIUSer
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="gtco-loader"></div>
<header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Sai Om</a>
                </div>				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#header">Home</a></li>
                        <% if (session.getAttribute("loginId") == null) {%>
                        <li><a href="#feature">Offers</a></li>
                        <li><a href="#gallery">Rent Services</a></li>
                        <li><a href="#pricing">Products & Price</a></li>
                        <li><a href="#our-team">Our Services</a></li> 
                        <li><a href="#contact">Contact</a></li>   
                        <li><a href="<s:url action='loginAction.action'/>">Login</a></li> 
                         <%}else{%> 
                        <li><a>${userName}</a></li>
                        <li><a href="<s:url action='addProduct'/>">Add Product</a></li>
                        <li><a href="<s:url action='updateProduct'/>">Update Product</a></li>  
                        <li><a href="<s:url action='logOut'/>">Log out</a></li>
                        <%}%>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
