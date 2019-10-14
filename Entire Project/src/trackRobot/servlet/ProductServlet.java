package trackRobot.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import trackRobot.dao.ProductDAO;
import trackRobot.dao.impl.ProductDAOImpl;
import trackRobot.vo.Product;

public class ProductServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException,IOException{
			doPost(req, res);
		}
		
		public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException,IOException{
			
			ProductDAO dao=new ProductDAOImpl();
			Product pro=new Product();
			ArrayList<Product> proAL= new ArrayList<Product>();
			
			try{
				proAL=dao.showProList();
				HttpSession session=req.getSession();
				session.setAttribute("proAL", proAL);
				res.sendRedirect("./product.jsp");
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
		
		}
}
