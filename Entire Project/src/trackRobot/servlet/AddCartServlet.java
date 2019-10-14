package trackRobot.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import trackRobot.vo.Product;
import trackRobot.vo.User;
import trackRobot.vo.Cart;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import trackRobot.dao.CartDAO;
import trackRobot.dao.impl.CartDAOImpl;
import trackRobot.dao.ProductDAO;
import trackRobot.dao.impl.PDetailDAOImpl;

public class AddCartServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res)
		throws ServletException, IOException{
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
		throws ServletException, IOException{
		int flag=0;
		ArrayList<Product> proAL= new ArrayList<Product>();
		CartDAO dao=new CartDAOImpl();
		
		HttpSession session=req.getSession();
		String username=(String)session.getAttribute("username");
		int amount=Integer.parseInt(req.getParameter("amount"));
		int proID=Integer.parseInt(req.getParameter("proID"));
		int proNum=Integer.parseInt(req.getParameter("proNum"));
		int remain=proNum-amount;
		
		/*
		 Only when the remain number of product and user have login,
		 user can add product to cart. 
		*/	
		if(remain>0&&(username!=null)){
			try{
	
				
				flag=dao.addCart(username, amount, proID);
				session.setAttribute("amount", amount);
				res.sendRedirect("./addSuccess.jsp");
				System.out.println(username);
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
		}
		
		else {res.sendRedirect("./errorCart.jsp");}
		
	}
		
	
}

