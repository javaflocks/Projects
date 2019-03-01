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

    <h2 class="gtco-left"><s:text name="Update Product Detail"/></h2><br>

    <p>
        <s:form action="searchProduct" name="saveProduct" id="saveProduct" theme="simple" method="post" >
        <input type="hidden" name="productId" id="productId">
        
        <div class="row-fluid" >
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
		 <div class="row">
		   <div class="form-bottom">
			  <input type="submit" class="btn btn-info" name="save" id="save" value="Search" onclick="searchData()" >
            <s:reset key="label.reset" theme="simple" cssClass="btn btn-info" align="center" /> 
		    </div>
		 </div>
           
        </s:form>  
    </p>
    
<div class="table-responsive" style="width: 100%;">
<display:table id="prod" class="tableData" name="productBeans" requestURI="/searchProduct.action"  pagesize="10" export="false">
				<display:column property="productName" title="Product Name" />
				<display:column property="prodCatNm" title="Product Category Name"/>
				<display:column property="mrp" title="MRP"/>
                 <display:column property="offerPrice" title="Offer Price"/>
                  <display:column title="Edit/View" style="text-align:center">
                       <input type="button" value="Edit" onclick="editValue('${prod.productId}','${prod.productName}','${prod.prodCatNm}','${prod.mrp}','${prod.offerPrice}','${prod.prodDesc}');"/>
                   </display:column> 
                    <display:column title="Delete" style="text-align:center">
                       <a href="#"  onclick="deleteProd('${prod.productId}');">Delete</a>
                   </display:column>
                                
       </display:table>
</div> 
<br>
	<div class="row" id="editProduct" align="center">

    <h2 class="gtco-left"><s:text name="Product Detail"/></h2><br>

    <p>
        <s:form action="editProduct" name="saveProduct" id="saveProduct" theme="simple" method="post" >
        <input type="hidden" name="productId" id="productId1"/>
        <input type="hidden" name="operation" id="edit"/>
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
                         <s:select list="productList" required="required" cssClass="form-control"  name="productCat" id="productCat1"/>
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
	$("#editProduct").hide();
 });
 
function searchData() 
{				
 var $form = $("form");
 $form.validator().on("submit", function(e){
 if(!e.isDefaultPrevented()){
   e.preventDefault();
  document.saveProduct.action="searchProduct.action";
  document.saveProduct.submit();
  $("#progress").show();
  }
 });
}

function deleteProd(prodId) 
{				alert(prodId);
  $("#productId").val(prodId);
  document.saveProduct.action="deleteProduct.action";
  document.saveProduct.submit();
  $("#progress").show();
 
}
function editValue(productId,productName,prodCatNm,mrp,offerPrice,prodDesc)
{
	$("#editProduct").show();
	$("#productId1").val(productId);
	$("#productName").val(productName);
	$("#productCat").val(prodCatNm);
	$("#mrp").val(mrp);
	$("#offerPrice").val(offerPrice);
	$("#description").val(prodDesc);
}
function saveData() 
{				
 var $form = $("#saveProduct");
 $form.validator().on("submit", function(e){
 if(!e.isDefaultPrevented()){
   e.preventDefault();
  document.saveProduct.action="editProduct.action";
  document.saveProduct.submit();
  $("#progress").show();
  }
 });
}

</script>	
<style type="text/css">
.tableData {border-left:1px solid #c7ecf9;border-bottom:1px solid #c7ecf9; clear:both;}
.tableData th { background:#02abe4; color:#fff; font-weight:bold; font-size:12px; line-height:18px;}
.tableData th, .tableData td { padding:5px 15px; border-top:1px solid #c7ecf9;border-right:1px solid #c7ecf9; text-align:left; line-height:24px;}
.tableData .leftText { text-align:left;}
.tableData .odd td{ background:#ffffff;}
.tableData .even td{ background:#f3fafd;}
.tableData td .odd td{ background:#f9fafb;}
.tableData td .even td{ background:#ffffff;}
.tableData td.btn { text-align:center !important; padding:12px 0!important;}
.tableData th a {color:#fff; text-decoration:underline; }
.tableData th {line-height:16px;}
</style>
  </body>
  
</html>