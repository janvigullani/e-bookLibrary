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
@WebServlet("/add_address")
public class AddAddress extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String address= req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String city=req.getParameter("city");
			String pincode=req.getParameter("zip");
			String state=req.getParameter("state"); 
			User u= new User();
			u.setId(id);
			u.setAddress(address);
			u.setLandmark(landmark);
			u.setCity(city);
			u.setPincode(pincode);
			u.setState(state);
			HttpSession session=req.getSession();
			UserDAOImpl dao= new UserDAOImpl(DBConnect.getConn());
			boolean i = dao.addAddress(u);
			if(i)
			{
				session.setAttribute("succMsg", "Address Added Sucessfully"); 
				resp. sendRedirect( "user_address.jsp");
			}else
			{
				session.setAttribute("failedMsg", "Something wrong on Server"); 
				resp. sendRedirect("user_address.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
