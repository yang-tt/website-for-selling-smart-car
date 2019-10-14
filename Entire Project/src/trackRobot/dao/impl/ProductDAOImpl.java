package trackRobot.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import trackRobot.db.DBConnect;
import trackRobot.vo.Product;
import trackRobot.dao.ProductDAO;

	public class ProductDAOImpl implements ProductDAO {
		ArrayList<Product> proAL= new ArrayList<Product>();
		
		/*
		 This method is used to get all the product information
		*/
		public ArrayList<Product> showProList() throws Exception {
				
			String sql="select* from productinfo";
			PreparedStatement pstmt=null;
			DBConnect dbc=null;
			
			try{
				dbc=new DBConnect();
				pstmt=dbc.getConnection().prepareStatement(sql);

				ResultSet rs=pstmt.executeQuery();
				
				while(rs.next()){
					Product pro = new Product();
					pro.setProID(rs.getInt("proID"));
					pro.setProName(rs.getString("proName"));
					pro.setProNum(rs.getInt("proNum"));
					pro.setProPrice(rs.getDouble("proPrice"));
					pro.setProDetail(rs.getString("proDetail"));
					pro.setProImg(rs.getString("proImg"));
					proAL.add(pro);
					//System.out.println(pro);
				}
				rs.close();
				pstmt.close();
			}catch(SQLException e){
				System.out.println(e.getMessage());
			}finally{
				dbc.close();
			}
		return proAL;
		}
		
		
		/*
		 This method is used to reduce the number of product according to correspond proID 
		*/
		public int reduceNum(int proNum,int proID,int amount) throws Exception{
			int number= proNum - amount;
			String sql="update productinfo set proNum ="+number+" where proID = "+proID;
			PreparedStatement pstmt=null;
			DBConnect dbc=null;
			int flag = 0;
			
			try{
				dbc=new DBConnect();
				pstmt=dbc.getConnection().prepareStatement(sql);
				pstmt.executeUpdate();
				flag = 1;
			
				pstmt.close();
			}catch(SQLException e){
				System.out.println(e.getMessage());
			}finally{
				dbc.close();
			}
			return flag;
		}
		
		/*
		 This method is used to find the number of product according to correspond proID 
		*/
		public int findNum(int proID)throws Exception{
			int number=0;
			String sql="select * from productinfo where proID = ?";
			PreparedStatement pstmt=null;
			DBConnect dbc=null;
			
			try{
				dbc=new DBConnect();
				pstmt=dbc.getConnection().prepareStatement(sql);
				pstmt.setInt(1,proID);
				ResultSet rs=pstmt.executeQuery();
				
				while(rs.next()){
					if(rs.getInt("proID")==proID){
						number=rs.getInt("proNum");
					}
				}
				rs.close();
				pstmt.close();
			}catch(SQLException e){
				System.out.println(e.getMessage());
			}finally{
				
				dbc.close();
			}
			return number;
		}
}


