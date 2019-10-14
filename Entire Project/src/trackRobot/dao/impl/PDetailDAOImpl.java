package trackRobot.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import trackRobot.db.DBConnect;
import trackRobot.dao.PDetailDAO;
import trackRobot.vo.Product;

public class PDetailDAOImpl implements PDetailDAO {

	/*
	 This method is used to search the product according to product name
	*/
	public int queryByProductName(Product p) throws Exception {
		int flag = 0;
	  	String sql = "select * from productinfo where proName=?";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;   
  

        try{   
       
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setString(1,p.getProName()) ;   
        
            ResultSet rs = pstmt.executeQuery();
            System.out.println(p.getProName());
            while(rs.next()){  

                if(rs.getString("proName").equals(p.getProName())){
                	flag = 1;
                } 
                
                p.setProName(rs.getString("proName"));
                p.setProPrice(Double.parseDouble(rs.getString("proPrice")));
                p.setProNum(rs.getInt("proNum"));
                p.setProID(rs.getInt("proID"));
                p.setProDetail(rs.getString("proDetail"));
                p.setProImg(rs.getString("proImg"));
            }   
            rs.close() ; 
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
           
            dbc.close() ;   
        }   
		return flag;
	}

}
