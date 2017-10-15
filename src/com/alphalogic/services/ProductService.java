package com.alphalogic.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.alphalogic.model.Customer;
import com.alphalogic.model.Product;

public class ProductService {
	public static boolean isPresent(Product p)
	{
		boolean flag = false;
	try{
		Connection con = MySqlConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from product where pId= ?");
		ps.setInt(1,p.getpId());
		ResultSet rs = ps.executeQuery();
			if(rs.next()){
				flag = true;
				System.out.println("Product Present:"+flag);	
			}
		}
		catch(Exception e){
			System.out.println("Exception in ProductService.isPresent method :"+new ProductService().getClass()+" "+e);
		}

	return flag;
		
	}
	
	public static Product productdetail(Product p){
			Product product = new Product();
		try{
			Connection con = MySqlConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product where pId= ?");
			ps.setInt(1,p.getpId());
			ResultSet rs = ps.executeQuery();
				while(rs.next()){
					product.setpId(rs.getInt("pId"));
					product.setpName(rs.getString("pName"));
					product.setpDescription(rs.getString("pDescription"));
					product.setpImageUrl(rs.getString("pImageUrl"));
					product.setpQuatityPerUnit(rs.getInt("pQuatityPerUnit"));
					product.setpUnitPrice(rs.getInt("pUnitPrice"));
					product.setpUnitWeight(rs.getInt("pUnitWeight"));
					product.setpUnitInStocks(rs.getInt("pUnitInStocks"));
					product.setUnitinOrder(rs.getInt("pUnitInOrder"));
					product.setDiscount(rs.getString("pDiscount"));
				}
				
			}
			catch(Exception e){
				System.out.println("Exception in ProductService.productdetail method :"+new ProductService().getClass()+" "+e);
			}
		return product;
	}


public static ArrayList<Product> search(String keyword){
	ArrayList<Product> dbentry = new ArrayList<Product>();
	
	try{
		Connection con = MySqlConnection.getConnection();
		String query = "select * from product where pName like ?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1,keyword+"%");
		
		ResultSet rs = ps.executeQuery();
		//if (!rs.next()){
		//	rs = stmt.executeQuery("select * from product where jobrole like '"+keyword+"%'");
		//}
		
		while(rs.next()){
			Product p = new Product();
			p.setpId(rs.getInt("pId"));
			p.setpName(rs.getString("pName"));
			p.setpDescription(rs.getString("pDescription"));
			p.setpImageUrl(rs.getString("pImageUrl"));
			p.setpQuatityPerUnit(rs.getInt("pQuatityPerUnit"));
			p.setpUnitPrice(rs.getInt("pUnitPrice"));
			p.setpUnitWeight(rs.getInt("pUnitWeight"));
			p.setpUnitInStocks(rs.getInt("pUnitInStocks"));
			p.setUnitinOrder(rs.getInt("pUnitInOrder"));
			p.setDiscount(rs.getString("discount"));
			p.setCatId(rs.getInt("catId"));
			p.setsId(rs.getInt("sId"));
			
			dbentry.add(p);
		}
			
	}
	catch(Exception e){
		System.out.println("Error in listing all the ProductService.search data : "+e);
	}
	return dbentry;
}
}
