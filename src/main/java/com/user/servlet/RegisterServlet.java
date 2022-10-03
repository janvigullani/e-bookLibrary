package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			
			User us =new User();
			us.setName(name);
			us.setPassword(password);
			us.setEmail(email);
			us.setPhno(phno);
			
			HttpSession session= req.getSession();

			if(check!=null)
			{
					UserDAOImpl  dao = new UserDAOImpl(DBConnect.getConn());
					boolean f=dao.userRegister(us);
					if(f)
					{
						//System.out.println("User Registered");
						session.setAttribute("success", "User Registered successfully....");
						resp.sendRedirect("register.jsp");
					}
					else
					{
						//System.out.println("Something went wrong...");
						session.setAttribute("fail", "Something went wrong...");
						resp.sendRedirect("register.jsp");
					}
			} 
			else {
				//System.out.println("Please Check Agree");
				session.setAttribute("fail2", "Please Check Agree Terms and Conditions.");
				resp.sendRedirect("register.jsp");
			}
			
			
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
