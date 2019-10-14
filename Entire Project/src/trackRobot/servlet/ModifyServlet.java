package trackRobot.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import trackRobot.dao.UserDAO;
import trackRobot.dao.impl.UserDAOImpl;
import trackRobot.vo.User;

public class ModifyServlet extends HttpServlet {
	

	public void doGet(HttpServletRequest req,HttpServletResponse res)
		throws IOException,ServletException{
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
		throws IOException,ServletException{
		int flag=0;
		
		User user=new User();
		UserDAO dao=new UserDAOImpl();

		
		HttpSession session=req.getSession();
		String username=(String) session.getAttribute("username");
		String email=req.getParameter("email");
		user.setUsername(username);
			//System.out.println(username);
		user.setEmail(email);
			//System.out.println(email);
		String password=req.getParameter("password");
			//System.out.println(password);
		user.setPassword(req.getParameter("password"));
	
		try{
			flag=dao.modifyPassword(username, password,email);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if(flag==1){
			res.sendRedirect("./success.jsp");
		}
		
		else {
			
			res.sendRedirect("./errorLogin.jsp");
		}
			
		System.out.println(flag);

	 	
	}
	

}


