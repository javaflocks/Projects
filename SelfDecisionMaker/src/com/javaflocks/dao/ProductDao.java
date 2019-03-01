/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaflocks.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.javaflocks.bean.ProductBean;
import com.javaflocks.util.PropertyUtil;

/**
 *
 * @author Pramod
 */
public class ProductDao {
     static Connection con;
	static PreparedStatement ps;
	static ResultSet rs;
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(PropertyUtil.getPropertyValues("database.url"),PropertyUtil.getPropertyValues("database.user"),PropertyUtil.getPropertyValues("database.pass"));
		} catch (SQLException|ClassNotFoundException  e) {
			e.printStackTrace();
		}
	return con;
	}

	public List<ProductBean> getProductDetail() {
		List<ProductBean> productBeans = new ArrayList<ProductBean>();
		Connection con = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String sql = "";
			System.out.println("@@@@@@@@ query " + sql);
			statement = con.prepareStatement(sql);
			rs = statement.executeQuery();
			while (rs.next()) {
				ProductBean bean = new ProductBean();
				productBeans.add(bean);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				rs.close();
				statement.close();
				con.close();
			} catch (SQLException ex) {
				Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return productBeans;
	}

	/**
	 * @param productName
	 * @param productPrice
	 * @param productCat 
	 * @param productCat2 
	 * @param description 
	 * @return
	 */
	public static  String saveProduct(String productName, String mrp, String offerPrice, String description, String productCat) {
		Connection con = null;
		Statement statement = null;

		try {
			 con = getConnection(); 
			 String insQuery ="INSERT INTO product (PRODUCT_CAT_NAME,PRODUCT_NAME,MRP_PRICE,OFFER_PRICE,DESCRIPTION) VALUE('"+productCat+"','"+productName+"','"+mrp+"','"+offerPrice+"','"+description+"')";
			   System.out.println("insQuery >> "+insQuery);
			  statement = con.createStatement();
			  
			  statement.execute(insQuery); 
			 
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				statement.close();
				con.close();
			} catch (SQLException ex) {
				Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
			}

		}
		return "save";
	}

	
	/**
	 * @param productName
	 * @param productPrice
	 * @param productCat 
	 * @param productCat2 
	 * @param description 
	 * @return
	 */
	public static  String editProduct(String productId,String productName, String mrp, String offerPrice, String description, String productCat) {
		Connection con = null;
		Statement statement = null;

		try {
			 con = getConnection(); 
			 String insQuery ="update product set PRODUCT_CAT_NAME='"+productCat+"',PRODUCT_NAME='"+productName+"',MRP_PRICE="+mrp+",OFFER_PRICE="+offerPrice+",DESCRIPTION='"+description+"' WHERE PRODUCT_ID="+productId;
			   System.out.println("insQuery >> "+insQuery);
			  statement = con.createStatement();
			  
			  statement.executeUpdate(insQuery); 
			 
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				statement.close();
				con.close();
			} catch (SQLException ex) {
				Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
			}

		}
		return "save";
	}

	/**
	 * @return
	 */
	public static List<String> getProductList() {
		List<String> productList = new ArrayList();

		Connection con = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String query = "SELECT PRODUCT_CAT_NAME FROM product_category";
			statement = con.prepareStatement(query);
			rs = statement.executeQuery();
			while (rs.next()) {
				productList.add(rs.getString("PRODUCT_CAT_NAME").trim());
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				rs.close();
				statement.close();
				con.close();
			} catch (SQLException ex) {
				Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return productList;
	}

	/**
	 * @param productCat
	 * @return
	 */
	public static List<ProductBean> fetchProductByCategory(String productCat) {
		List<ProductBean> productBeans = new ArrayList<ProductBean>();

		Connection con = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String query ="";
			if(productCat!=null && productCat!=""){
				query = "SELECT PRODUCT_ID,PRODUCT_NAME,MRP_PRICE,OFFER_PRICE,PRODUCT_CAT_NAME,DESCRIPTION FROM product WHERE PRODUCT_CAT_NAME='"+productCat+"'";
			}else{
				query = "SELECT PRODUCT_ID,PRODUCT_NAME,MRP_PRICE,OFFER_PRICE,PRODUCT_CAT_NAME,DESCRIPTION FROM product";
			}
			System.out.println("searchProduct>> "+query);
			statement = con.prepareStatement(query);
			rs = statement.executeQuery();
			while (rs.next()) {
				ProductBean bean=new ProductBean();
				bean.setProductId(rs.getString("PRODUCT_ID"));
				bean.setProductName(rs.getString("PRODUCT_NAME"));
				bean.setProdCatNm(rs.getString("PRODUCT_CAT_NAME"));
				bean.setMrp(rs.getString("MRP_PRICE"));
				bean.setOfferPrice(rs.getString("OFFER_PRICE"));
				bean.setProdDesc(rs.getString("DESCRIPTION"));
				productBeans.add(bean);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				rs.close();
				statement.close();
				con.close();
			} catch (SQLException ex) {
				Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return productBeans;
	}

	/**
	 * @param productId
	 * @return
	 */
	public static String deleteProduct(String productId) {
		Connection con = null;
		Statement statement = null;
		try {
			con = getConnection();
			String query = "DELETE FROM product WHERE PRODUCT_ID='"+productId+"'";
			System.out.println("query> "+query);
			statement = con.createStatement();
			int i=statement.executeUpdate(query);
			System.out.println("Output> "+i);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				statement.close();
				con.close();
			} catch (SQLException ex) {
				Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return "delete";
	}

	
}
