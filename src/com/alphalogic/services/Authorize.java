package com.alphalogic.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.alphalogic.model.Customer;
import com.alphalogic.services.MySqlConnection;


	public class Authorize {

		public static boolean isAuthorize(Customer cus)
		{
			boolean flag = false;
		try{
			Connection con = MySqlConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from customer where cEmail=? and cPassword =?");
			ps.setString(1,cus.getEmail());
			ps.setString(2,cus.getPassword());
			ResultSet rs = ps.executeQuery();
				if(rs.next()){
					flag = true;
					System.out.println("User Authorized:"+flag);	
				}
			}
			catch(Exception e){
				System.out.println("Exception in Authorize method :"+new Authorize().getClass()+" "+e);
			}

		return flag;
			
		}
	}
