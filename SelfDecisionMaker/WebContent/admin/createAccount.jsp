<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<div class="container-fluid">
<s:if test="hasActionMessages()">
<div class="info alert-success">
    <s:actionmessage/>
</div>
</s:if>
<s:if test="hasActionError()">
<div class="alert alert-danger">
     <s:actionerror/>
</div>
</s:if>
<h2>Add New Member</h2>
<p>Please Fill Form All Fields are required.</p>
<div class="container">
<form action="saveMember.action" method="post" name="signup" id="signup">
	
    <hr>
	<div class="form-group row">
	<div class="col-12 col-md-4 col-lg-4">
	<label for="name"><b>First Name</b></label>
    <input type="text" class="form-control" placeholder="Enter First Name" name="name" maxlength="100" required/>
    </div>
    <div class="col-12 col-md-4 col-lg-4">
	<label for="lastName"><b>Last Name</b></label>
    <input type="text" class="form-control" placeholder="Enter Last Name" name="lastName" maxlength="100" required/>
    </div>
    </div>
    
   
    <div class="form-group row">
    <div class="col-12 col-md-4 col-lg-4">
    <label for="mobile"><b>Mobile Number</b></label>
    <input type="text" class="form-control" placeholder="Enter Mobile No." name="mobile" maxlength="12"/>
    </div>
    <div class="col-12 col-md-4 col-lg-4">
    <label for="email"><b>Email</b></label>
    <input type="text" class="form-control" placeholder="Enter Email" name="email" maxlength="100" required>
   	</div>
    </div>
  <div class="form-group row"> 
  <div class="col-12 col-md-4 col-lg-4">
    <label for="sponser"><b>Sponser ID</b></label>
    <input type="text" class="form-control" placeholder="Sponsor Id" name="sponser" maxlength="12">
   </div>
    <div class="col-12 col-md-4 col-lg-4">
   <label for="sel1">Leg Side:</label>
  	<select class="form-control" id="sel1">
    <option value="L">Left</option>
    <option value="R">Right</option>
    </select>
    </div>
   </div>
   
    <div class="form-group">
  	<label for="sel1">Package:</label>
  	<select class="form-control" id="sel1">
    <option value="GREEN">2799</option>
    <option value="RED">5499</option>
    </select>
	</div>
	
    
    <div class="form-group">
    <label for="address"><b>Address</b></label>
    <textarea class="form-control" placeholder="Enter Address" rows="5" id="address" name="address"></textarea>
    </div>
   
    
    <div class="form-group">
    <div class="col-12 col-md-4 col-lg-4">
    <label for="pincode"><b>Pin Code</b></label>
    <input type="text" class="form-control" placeholder="Enter Pin Code" name="pincode" maxlength="10">
   </div>
    </div>
   
    <div class="clearfix">
      <button type="button" class="btn btn-default">Cancel</button>
      <button type="submit" class="btn btn-default">Sign Up</button>
    </div>

</form>
</div>
</div>