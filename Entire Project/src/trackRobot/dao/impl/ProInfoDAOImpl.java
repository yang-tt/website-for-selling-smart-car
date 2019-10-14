package trackRobot.dao.impl;

import trackRobot.vo.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import trackRobot.dao.ProInfoDAO;
import trackRobot.db.DBConnect;
import trackRobot.vo.Product;

public class ProInfoDAOImpl implements ProInfoDAO {
	
	/*
	 This method is used to find the detail information of product according to correspond proID 
	*/
	public Product searchProinfo(int proID) throws Exception{
		Product pro=new Product();
		String sql="select*from productinfo where proID=?";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		try{
			 dbc=new DBConnect();
			 pstmt=(PreparedStatement) dbc.getConnection().prepareStatement(sql);
			 pstmt.setInt(1, proID);
			 ResultSet rs = pstmt.executeQuery();
			 while(rs.next()){
				 if(rs.getInt("proID")==proID){
					 pro.setProID(rs.getInt("proID"));
					 pro.setProName(rs.getString("proName"));
					 pro.setProImg(rs.getString("ProImg"));
					 pro.setProPrice(rs.getDouble("proPrice"));
					 pro.setProDetail(rs.getString("ProDetail"));
					 pro.setProNum(rs.getInt("proNum"));
					 
				 }
			 }	 
			 rs.close();
			 pstmt.close();
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}finally{
			dbc.close();
		}
		return pro;
	}
}
