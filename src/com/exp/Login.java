package com.exp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

public class Login extends HttpServlet {

    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String user=request.getParameter("username");
		String pass=request.getParameter("password");
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/onlinefoodordering","root","Megha@1234");
		    Statement  stmt = (Statement) conn.createStatement();
			ResultSet rs=stmt.executeQuery("select password from signup where username='"+user+"'");
			//System.out.println("select password from signup where username='"+user+"'");
			//System.out.println(rs);
			System.out.println(user+" Pass: "+pass);
			while(rs.next()){

				String word=rs.getString("password");
				//System.out.println(word);
				if(pass.equals(word)){//
					HttpSession session=request.getSession();
					session.setAttribute("username", user);
					//System.out.println("Hello");
					RequestDispatcher rDispatcher=request.getRequestDispatcher("index.jsp");
					rDispatcher.forward(request, response);
				}
				else{
					RequestDispatcher rDispatcher=request.getRequestDispatcher("index.jsp");
					out.println("<script>");
					out.println("alert('You have entered a wrong initials')");
					out.println("</script>");
				}
			}
			rs.close();
			conn.close();
		}
		catch(Exception e){
			out.print("oops! some error occured");
			System.out.println(e);
		}

	}

}
