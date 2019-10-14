package trackRobot.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.persistence.criteria.Order;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import trackRobot.dao.CartDAO;
import trackRobot.dao.impl.CartDAOImpl;
import trackRobot.dao.ProductDAO;
import trackRobot.dao.impl.ProductDAOImpl;
import trackRobot.dao.OrderDAO;
import trackRobot.dao.impl.OrderDAOImpl;
import trackRobot.vo.Cart;
import trackRobot.vo.Product;


public class OrderServlet extends HttpServlet {

    	  
      public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		
  		doPost(request,response);
  			
  		
  	}

  		  
  	  
      public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
  	
    	  OrderDAO dao=new OrderDAOImpl();
    	  CartDAO cartDao=new CartDAOImpl();
    	  ProductDAO proDao=new ProductDAOImpl();
    	  HttpSession session=req.getSession();  
  		  ArrayList<Cart> cartAL= (ArrayList<Cart>)session.getAttribute("cartAL");
  		  String username = (String)session.getAttribute("username");
  		  
    	  int flag3=1;
    	  String orderNum =dao.getTwo();
    	  session.setAttribute("orderNum", orderNum);

    	
    	  
    	  for(Cart tem: cartAL){
    		  Product pro = tem.getPro();
    		  int proID = pro.getProID();
    		  int num = pro.getProNum();  
    		  int amount = tem.getAmount();    		  
    		  int cartID = tem.getCartID();
    		 
    		  try{
    			 
        		 int flag=dao.addGoodsInOrder(username, amount,proID, orderNum);
        		 System.out.println("flag="+flag);
        		 int flag1=proDao.reduceNum(num,proID,amount);
        		 System.out.println("flag1="+flag1);
        		 int flag2=cartDao.removeGoodsFromCart(cartID);
        		 System.out.println("flag2="+flag2);
        		 if(flag==0 || flag1==0 || flag2==0)
        			 flag3 = 0;
        		 
        	  }catch(Exception e){
        		  e.printStackTrace();
        	  }

    	  }
    	  
    	  String address=req.getParameter("ordAddress");
		  String name=req.getParameter("ordName");
		  String phone=req.getParameter("ordPhone");
		  String code=req.getParameter("zipcode");
		  
		  try {
			dao.addDetail(name,address,code,phone,orderNum);
			res.sendRedirect("./successPay.jsp");
		  	} catch (Exception e) {
			e.printStackTrace();
		  }
		  
 		//System.out.println("flag3="+flag3);
 			  
      	}

}
