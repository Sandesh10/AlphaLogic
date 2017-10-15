package com.alphalogic.services;

import com.alphalogic.model.Customer;
import com.alphalogic.services.Insert;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Insert {

	public Insert() {
		
	}
	public static boolean isInserted(Customer cu){
		boolean flag=false;
		try{
			Connection con=MySqlConnection.getConnection();
	
			PreparedStatement ps = con.prepareStatement("insert into customer(cFirstName, cLastName, cEmail,cPassword,cStatus) values(?,?,?,?,?)");
			ps.setString(1, cu.getFirstName());
			ps.setString(2, cu.getLastName());
			ps.setString(3, cu.getEmail());
			ps.setString(4, cu.getPassword());
			ps.setInt(5, 1);
			
			if(ps.executeUpdate()>0){
				flag=true;
				System.out.println("User Inserted:"+flag);
			}
		
		}catch(Exception e){
			System.out.println("Exception in "+new Insert().getClass()+":"+e);
			
		}
		
		return flag;
	}
	
	
	public static boolean insertdata(String phone,String city, String address,String postalcode, int cid){
		boolean flag=false;
		try{
			Connection con=MySqlConnection.getConnection();
	
			PreparedStatement ps = con.prepareStatement("insert into customerpersonalinfo(cPhoneNo, cCity, cAddress,cPostalCode,cId) values(?,?,?,?,?)");
			ps.setString(1, phone);
			ps.setString(2, city);
			ps.setString(3, address);
			ps.setString(4, postalcode);
			ps.setInt(5, cid);
			
			if(ps.executeUpdate()>0){
				flag=true;
				System.out.println("User Inserted:"+flag);
			}
		
		}catch(Exception e){
			System.out.println("Exception in "+new Insert().getClass()+":"+e);
			
		}
		
		return flag;
	}
	
}
