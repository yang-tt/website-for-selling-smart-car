package trackRobot.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import trackRobot.dao.CartDAO;
import trackRobot.dao.impl.CartDAOImpl;
import trackRobot.vo.Cart;

public class ShowCartServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException,IOException{
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException,IOException{
		
		CartDAO dao=new CartDAOImpl();
		ArrayList<Cart> cartAL=new ArrayList<Cart>();
		HttpSession session=req.getSession();
		String username=(String)session.getAttribute("username");
		
		
		/*
		 If the user haven't login can not show the information of cart. 
		*/	
		if(username!=null){  
		try{
			cartAL=dao.showCart(username);
			
			session.setAttribute("cartAL", cartAL);
			if(username!=null){
			res.sendRedirect("./showCart.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
			}
		}
	
		else{
			res.sendRedirect("./errorCart.jsp");
		}
		
		
		
		
}
}
	

