package com.javaflocks.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.javaflocks.bean.ContactUs;
import com.javaflocks.bean.ProductBean;
import com.javaflocks.dao.ProductDao;
import com.javaflocks.util.JavaflocksUtils;
import com.javaflocks.util.Mail;
import com.javaflocks.util.PropertyUtil;

public class SaiComputerAction extends ActionSupport implements SessionAware, ServletRequestAware, ServletResponseAware {

    private static final long serialVersionUID = 1L;

    private String uname, password, productName, offerPrice, mrp , productCat, description, productId;
    HttpServletRequest request;
    HttpServletResponse response;
    Map<String, Object> session;
    List<String> productList = null;
    List<ProductBean> productBeans = null;
    private ContactUs contact;
    
    public ContactUs getContact() {
		return contact;
	}
	public void setContact(ContactUs contact) {
		this.contact = contact;
	}
	public String about() {
        return "success";
    }
    public String services() {
        return "success";
    }
    public String home() {
        return "success";
    }
    public String products() {
        return "success";
    }
    public String signin() {
        return "success";
    }
    public String signup() {
        return "success";
    }
    public String legal() {
        return "success";
    }
    public String bankers() {
        return "success";
    }
    public String plans() {
        return "success";
    }
    public String contactUs() {
        return "success";
    }
    public String sendQuery()
    {
    	System.out.println(PropertyUtil.getPropertyValues("label.username"));
    	System.out.println(getText("smtp.host"));
    	String message=contact.getMessage()+"\n Name:"+contact.getName()+"\n Email:"+contact.getEmail()+"\n Country:"+contact.getCountry()+"\n Contact No:"+contact.getPhone();
    	System.out.println("Mail Called:"+contact.getMessage()+":=="+contact.getQuery());
    	new Mail().sendMail("smtp.zoho.com","465","noreply@sdmaker.biz","Sher@1987","noreply@sdmaker.biz", "info@sdmaker.biz", contact.getQuery(), message);
    	addActionMessage("Thanks for Contacting Us Will will get back to you Soon.");
    	return "success";
    }
    public String login() {
    	productBeans=ProductDao.fetchProductByCategory(productCat);
        return "login";

    }
    
    public String loginAction() {
     return "loginPage";

 }
public String admin() {
        return "success";
}
public String addMember() {
    return "success";
}
  public String loginVerify() {
	  if(uname!=null && uname!="" && password!=null && password!="" && uname.equalsIgnoreCase("admin") && password.equalsIgnoreCase("India@123")){
		  session.put("userName", "Welcome Admin");
          session.put("loginId", uname);
          return "SUCCESS";
	  }else{
		  return "LOGINFAIL";
	  }

  }
    // Log Out user

    public String logOut() {
        session.remove("loginId");
        session=null;
        addActionMessage("You have been Successfully Logged Out");
        return "login";
    }

    public String addProduct() {
    	productList=ProductDao.getProductList();
    	if(request.getParameter("productId")!=null)
    	{
    		setProductId(request.getParameter("productId"));
    		setProductCat(request.getParameter("productName"));
    		setProductId(request.getParameter("mrp"));
    		setProductId(request.getParameter("offerPrice"));
    		setProductId(request.getParameter("productCat"));
    		setProductId(request.getParameter("description"));
    	}
    	 return "SUCCESS";
    }
    public String saveProduct() {
    	String result=ProductDao.saveProduct(productName,mrp,offerPrice,description,productCat);
    	productList=ProductDao.getProductList();
    	 return "SUCCESS";
    }
    
    public String updateProduct() {
    	productList=ProductDao.getProductList();
    	return "SUCCESS";
    }
    
    public String searchProduct() {
    	productBeans=ProductDao.fetchProductByCategory(productCat);
    	productList=ProductDao.getProductList();
    	return "SUCCESS";
    }
    public String editProduct() {
    	System.out.println("Edit Product Action Called");
    	ProductDao.editProduct(productId, productName, mrp, offerPrice, description, productCat);
    	productBeans=ProductDao.fetchProductByCategory(productCat);
    	productList=ProductDao.getProductList();
    	return "SUCCESS";
    }
    
    public String deleteProduct() {
    	String msg=ProductDao.deleteProduct(productId);
    	productList=ProductDao.getProductList();
    	return "SUCCESS";
    }

    public String backButton() {
        return SUCCESS;

    }

    
// ############## GETTER SETTER  ########################
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    @Override
    public void setSession(Map map) {
        this.session = map;
    }

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	
	public List<String> getProductList() {
		return productList;
	}

	public void setProductList(List<String> productList) {
		this.productList = productList;
	}

	public String getProductCat() {
		return productCat;
	}

	public void setProductCat(String productCat) {
		this.productCat = productCat;
	}

	public String getOfferPrice() {
		return offerPrice;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public void setOfferPrice(String offerPrice) {
		this.offerPrice = offerPrice;
	}

	public List<ProductBean> getProductBeans() {
		return productBeans;
	}

	public void setProductBeans(List<ProductBean> productBeans) {
		this.productBeans = productBeans;
	}

	public String getMrp() {
		return mrp;
	}

	public void setMrp(String mrp) {
		this.mrp = mrp;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
