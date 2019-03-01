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

    <h2 class="gtco-left"><s:text name="Product Detail"/></h2><br>

    <p>
        <s:form action="saveProduct" name="saveProduct" id="saveProduct" theme="simple" method="post" >
        
        <div class="row-fluid" >
            <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                        <label><s:text name="label.productName" /> <span style="color: red">*</span>:</label>
                    </div>
            </div>
             <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <input class="form-control"  id="productName" pattern="^[0-9a-zA-Z\s]+$" name="productName" type="text" required />
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
             
              <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                        <label><s:text name="label.productCat" /> <span style="color: red">*</span>:</label>
                    </div>
            </div>
             <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <s:select list="productList" required="required" cssClass="form-control"  name="productCat" id="productCat"/>
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
             
            
      </div>
      <br><br><br>
      <div class="row-fluid" >
          <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                        <label><s:text name="label.mrp"/> <span style="color: red">*</span>:</label>
                    </div>
            </div>
             <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <input class="form-control"  id="mrp" pattern="^[0-9]+$" name="mrp" type="text" required />
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
      
         <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                        <label><s:text name="label.offerPrice"/> <span style="color: red">*</span>:</label>
                    </div>
            </div>
             <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <input class="form-control"  id="offerPrice" pattern="^[0-9]+$" name="offerPrice" type="text" required />
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
      </div>
      
       <br><br><br>
      <div class="row-fluid" >
          <div class="col-sm-2" >
             		<div class="form-group float-label-control">
                        <label><s:text name="label.desc"/> <span style="color: red">*</span>:</label>
                    </div>
            </div>
             <div class="col-xs-3">
     			<div class="form-group float-label-control">
                         <textarea class="form-control"  id="description"  required rows="4" name="description" ></textarea>
                         <div class="help-block with-errors"></div>
             	</div>
             </div>
      
         
      </div>
            
         <br><br><br><br><br><br>
		 <div class="row">
		   <div class="form-bottom">
			  <input type="submit" class="btn btn-info" name="save" id="save" value="Save" onclick="saveData()" >
            <s:reset key="label.reset" theme="simple" cssClass="btn btn-info" align="center" /> 
		    </div>
		 </div>
           
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
 
function saveData() 
{				
 var $form = $("form");
 $form.validator().on("submit", function(e){
 if(!e.isDefaultPrevented()){
   e.preventDefault();
  document.saveProduct.action="saveProduct.action";
  document.saveProduct.submit();
  $("#progress").show();
  }
 });
} 
</script>	
