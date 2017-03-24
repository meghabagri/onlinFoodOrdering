package com.exp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignUp extends HttpServlet {

    public SignUp() {
        super();
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String cpassword=request.getParameter("cpassword");
		if(password.length()!=6){
		        RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");  
		        rd.include(request, response);  
		}
		else if(password==cpassword){;  
		        RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");  
		        rd.include(request, response);  	
		}
		else if(Pattern.matches("[a-z]", password)){;  
        RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");  
        rd.include(request, response);  	
}
		else if(Pattern.matches("[A-Z]", password)){;  
        RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");  
        rd.include(request, response);  	
}
		else if(Pattern.matches("[0-9]", password)){;  
        RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");  
        rd.include(request, response);  	
}
		else{
//		HttpSession session=request.getSession();
//		session.setAttribute("username", name);
		//jab session expire hga tabhi hatega lgaya hi kyu aur kb expire hoga
			//ummmmmm.....
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/onlinefoodordering","root","Megha@1234");
			PreparedStatement ps=conn.prepareStatement( "insert into signup (username,email,password) values(?,?,?)");  
			ps.setString(1,name);  
			ps.setString(2,email);
			ps.setString(3,password);  

			int i=ps.executeUpdate();  
			if(i>0) {
				RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp"); 
				dispatcher.forward(request, response);
					
		}
			else{
				out.print("oops!! some error occured");
			}
		}
		catch(Exception e){
			System.out.println(e);
			out.print("oops! Some error occured.");
		}
	}
	}
}
