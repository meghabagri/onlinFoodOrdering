package com.exp;

import java.io.*;  
import java.sql.*;  
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  //jsp konsi h ??jp
 //kya?
//konsa page tha jisme abhi last m form bhrte h jisme error aa rha h
public class Reserve extends HttpServlet {  
	
public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException { 
	doPost(request,response);
}
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String name=request.getParameter("name");  
String date=request.getParameter("date");  
String time=request.getParameter("time");  
String phone=request.getParameter("phone");  
String email=request.getParameter("email");  
String people=request.getParameter("people");  
String region=request.getParameter("region");
int max=7000;
int min=100;
Random rand = new Random(); 
int value = rand.nextInt((max - min) + 1) + min; 
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/onlinefoodordering","root","Megha@1234");
PreparedStatement ps=conn.prepareStatement( "insert into reservations(name,email,contact,date,time,people,region,token) values(?,?,?,?,?,?,?,?)");  
ps.setString(1,name);  
ps.setString(2,email);  
ps.setString(3,phone);  
ps.setString(4,date);  
ps.setString(5,time);  
ps.setString(6,people);  
ps.setString(7,region);  
ps.setInt(8, value);
int i=ps.executeUpdate();  
if(i>0)  {
request.setAttribute("token", value);
RequestDispatcher rd=request.getRequestDispatcher("success.jsp");  
rd.forward(request, response); 
}
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
}  
  
}  
