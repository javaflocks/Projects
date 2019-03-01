<%-- 
    Document   : 
    Created on : Apr 21, 2018, 2:14:00 PM
    Author     : Pramod
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
	
	
	<div class="row" align="center">

    <h2 class="gtco-left"><s:text name="loginPage"/></h2>

    <p>
        <s:form action="loginVerify" name="loginForm" id="loginForm" theme="simple" method="post" >
            <div class="row-fluid" >
            <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                <label><s:text name="label.username" /> <span style="color: red">*</span>:</label>
            </div></div>
            <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <input class="form-control"  id="uname" pattern="^[0-9a-zA-Z\s]+$" name="uname" type="text" required />
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
             
             <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                <label><s:text name="label.password" /> <span style="color: red">*</span>:</label>
            </div></div>
            <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <input class="form-control"  id="password"  name="password" type="password" required />
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
             
            </div>
            <br><br><br><br>
           <div class="row">
		   <div class="form-bottom">
	            <input type="submit" class="btn btn-info" name="save" id="save" value="Login" onclick="login()" >
	            <s:reset key="label.reset" theme="simple" cssClass="btn btn-info" align="center" /> 
            </div></div>
        </s:form>   
    </p>

</div>

	
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	
	</script>
	<script type="text/javascript">

$(document).ready(function()
{   
	
 });
function login() 
{				
 var $form = $("form");
 $form.validator().on("submit", function(e){
 if(!e.isDefaultPrevented()){
   e.preventDefault();
  document.loginForm.action="loginVerify.action";
  document.loginForm.submit();
  $("#progress").show();
  }
 });
}         
</script>	
  </body>
</html>