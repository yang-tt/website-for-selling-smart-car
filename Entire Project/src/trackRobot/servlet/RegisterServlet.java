package trackRobot.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import trackRobot.dao.UserDAO;
import trackRobot.dao.impl.UserDAOImpl;
import trackRobot.vo.User;

public class RegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest req,HttpServletResponse res)
		throws IOException,ServletException{	
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
		throws IOException,ServletException{
		int flag=1;
		int flag2=0;
		
		User user=new User();
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setEmail(req.getParameter("email"));
		
		UserDAO dao=new UserDAOImpl();

		try{	
			flag=dao.checkUnique(user);
			}catch(Exception e){
				e.printStackTrace();
		}
		
		if(flag==1){	//When register the name must be unique.
			try{
				flag2=dao.addUser(user);
				}catch(Exception e){
					e.printStackTrace();
			}
			
			if(flag2==1){
				HttpSession session=req.getSession();
				session.setAttribute("username", user.getUsername());
				res.sendRedirect("./success.jsp");
			}
			else{
				res.sendRedirect("./errorRegister.jsp");
			}
			
		}
		else{
			res.sendRedirect("./errorRegister.jsp");
		}
		
		
		
	}
	
}
