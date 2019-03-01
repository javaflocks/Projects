<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- 
    Document   : baseLayout
    Created on : Mar 16, 2017, 11:45:39 AM
    Author     : KPFIUSer
--%>

<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width,initial-scale=1,shrink-to-fit=no">
<link rel="icon" href="admin/images/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css"
	rel="stylesheet">
<link href="admin/dist/admin4b.min.css" rel="stylesheet">
<link rel="stylesheet" href="admin/css/Treant.css">
    <link rel="stylesheet" href="admin/css/collapsable.css">
    <link rel="stylesheet" href="admin/css/perfect-scrollbar.css">
<title>SD Maker Admin Panel</title>
</head>
<body>
<div class="app">
<div class="app-body">
<tiles:insertAttribute name="menu" />
<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="body" />
<tiles:insertAttribute name="footer" />	
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.0/moment.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
	<script src="admin/dist/admin4b.min.js"></script>
	<script src="admin/assets/js/admin4b.docs.js"></script>
	</div>
	</div>
</body>
</html>

