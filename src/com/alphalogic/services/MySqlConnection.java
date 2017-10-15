package com.alphalogic.services;

import java.sql.Connection;
import java.sql.DriverManager;

	public class MySqlConnection {
		public static Connection con= null;
		
		public static Connection getConnection(){
			if(con==null){
				try{
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alphalogic", "root", "admin");
				}
				catch(Exception e){
					System.out.println("Error while making connection :"+e);
				}
			return con;
			}
			else
			{
				return con;
			}
		}
}
