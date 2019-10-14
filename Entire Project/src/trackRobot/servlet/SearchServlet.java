package trackRobot.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import trackRobot.dao.PDetailDAO;
import trackRobot.dao.impl.PDetailDAOImpl;
import trackRobot.vo.Product;

public class SearchServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{}

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		Product p=new Product();
		p.setProName(req.getParameter("proName"));
		
		
		PDetailDAO dao=new PDetailDAOImpl();
		int flag=0;
		try{
			flag=dao.queryByProductName(p);
		}catch(Exception e){
			e.printStackTrace();
		}
		if(flag==1){
			HttpSession session=req.getSession();
			session.setAttribute("proName",p.getProName());
			session.setAttribute("proID",p.getProID());
			session.setAttribute("proDetail",p.getProDetail());
			session.setAttribute("proNum",p.getProNum());
			session.setAttribute("proImg",p.getProImg());
			session.setAttribute("proPrice",p.getProPrice());
			res.sendRedirect("./proSearch.jsp");
		}
		else{
			res.sendRedirect("./errorSearch.jsp");
		}
}
}
