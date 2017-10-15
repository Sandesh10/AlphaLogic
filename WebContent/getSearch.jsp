<%@page import="com.alphalogic.services.MySqlConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>get User</title>
	</head>
	
	<body>
		
		<%
			String searchitem = request.getParameter("searchdata");
			if(searchitem.length() > 0)
			{
				boolean flag = false;
				try
				{
					Connection con=MySqlConnection.getConnection();

					String query = "select pName,pId from product where pName like ?";
					PreparedStatement ps = con.prepareStatement(query);
					ps.setString(1,searchitem+"%");	
					
					ResultSet rs = ps.executeQuery();
					
					while(rs.next())
					{
						flag = true;
				%>
						
					<a href="fetchdata?pId=<%=rs.getInt("pId")%>"><%=rs.getString("pName")%></a><br>
					
				<%	
					}					
					
				}
				catch(Exception e)
				{
					System.out.println("Error is : "+e);
				}			
				if(!flag)
				{
					out.println("No result found!");
				}
				
			}
			else
			{
				out.println("");
			}
		
		
		%>
		
		
	</body>
</html>