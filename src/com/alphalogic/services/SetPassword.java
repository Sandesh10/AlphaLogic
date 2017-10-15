package com.alphalogic.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.alphalogic.model.Customer;

public class SetPassword {

	public static boolean newPassword(String newPassword,Customer cu){
		boolean flag=false;
		try{
			Connection con=MySqlConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update customer set cPassword=? where cEmail= ? ");
			ps.setString(1, newPassword);
			ps.setString(2,cu.getEmail());
			
			int num = ps.executeUpdate();
			
			if(num > 0){
				flag = true;
			}
			else
				flag = false;
		}
		
		catch(Exception e){
			System.out.println("Exception in Check"+e);
		}
		return flag;
		
	}
}
