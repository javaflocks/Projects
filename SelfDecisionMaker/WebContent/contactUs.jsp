<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

 <style>

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}


</style>

<div class="container">
<s:if test="hasActionMessages()">
<div class="info alert-warning">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
    <s:actionmessage/>
</div>
</s:if>
<s:if test="hasActionError()">
<div class="alert alert-warning">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
    <s:actionerror/>
</div>
</s:if>
<h2>Contact Us</h2>
<div class="row">
  <form action="sendQuery.action" method="post">
    <label for="name">Full Name</label>
    <input type="text" id="name" name="contact.name" placeholder="Your name..">
	<label for="country">Country</label>
    <select id="country" name="contact.country">
      <option value="India">India</option>
    </select>
    <label for="email">Email</label>
    <input type="text" id="email" name="contact.email" placeholder="Enter Email Address" required="required">
    <label for="phone">Contact</label>
    <input type="text" id="phone" name="contact.phone" placeholder="Enter Mobile No." required="required">
	<label for="query">Subject</label>
    <input type="text" id="query" name="contact.query" placeholder="Your Question" required="required">
    <label for="message">Message</label>
    <textarea id="message" name="contact.message" placeholder="Query Description.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>
</div>