package com.exp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException { 
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	            throws ServletException, IOException {  
		  
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String pin=request.getParameter("pin");
		String count=request.getParameter("count");
		String sum=request.getParameter("sum");
		
		int pin_num=Integer.parseInt(pin);
		int count_num=Integer.parseInt(count);
		int sum_num=Integer.parseInt(sum);
		int max=7000;
		int min=100;
		Random rand = new Random(); 
		int value = rand.nextInt((max - min) + 1) + min; 
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/onlinefoodordering","root","Megha@1234");
			PreparedStatement ps=conn.prepareStatement( "insert into ordrers (name,email,contact,address,pin,quantity,total,token) values(?,?,?,?,?,?,?,?)");  
			ps.setString(1,name);  
			ps.setString(2,email);
			ps.setString(3,contact);  
			ps.setString(4,address);  
			ps.setInt(5,pin_num);  
			ps.setInt(6,count_num);  
			ps.setInt(7,sum_num);  
			ps.setInt(8, value);
			int i=ps.executeUpdate();  
			if(i>0) {
				request.setAttribute("orderToken", value);
				RequestDispatcher rd=request.getRequestDispatcher("successOrder.jsp");  
				rd.forward(request, response); 
			}        
			}catch (Exception e2) {System.out.println(e2);}  			          
			out.close();  
	}
}
