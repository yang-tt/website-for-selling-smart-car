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

public class RemoveCartServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res)
		throws ServletException,IOException{
		this.doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
		throws ServletException,IOException{
		int flag=0;
		ArrayList<Cart> cartAL=new ArrayList<Cart>();
		CartDAO dao=new CartDAOImpl();
		
		int cartID=Integer.parseInt(req.getParameter("cartID"));
		String username=req.getParameter("username");
		
		try{
			dao.removeGoodsFromCart(cartID);
			flag=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		if(flag==1){
		HttpSession session=req.getSession();
		session.setAttribute("cartAL", cartAL);
		res.sendRedirect("./successDelete.jsp");

		}
		
	}
}
