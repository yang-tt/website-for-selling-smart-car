package trackRobot.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import trackRobot.dao.OrderDAO;
import trackRobot.db.DBConnect;
import trackRobot.vo.Product;
import trackRobot.vo.Cart;

public class OrderDAOImpl implements OrderDAO {

	/*
	 * The method is to check if the user is login.
	 */
	public int query(String username) throws Exception {
		
		int flag=0;
		String sql="select* from cart where username=?";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		try{
			dbc=new DBConnect();
			pstmt=(PreparedStatement)dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				if(rs.getString("username")!=null){
					flag=1;
				}
			}
			rs.close();
			pstmt.close();
		}catch(SQLException e){
			e.printStackTrace();
		}finally
		{
	    dbc.close();
		}
		return flag;
	}


	/*
	 * The method is used to add goods into the orderList
	 */
	public int addGoodsInOrder(String username, int number, int proID,String orderNum) throws Exception {
		
		int flag = 0;
		String sql="insert into orderlist(username,proID,num,orderNum) values(?,?,?,?)";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		try{
			dbc=new DBConnect();
			pstmt=(PreparedStatement)dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setInt(2, proID);
			pstmt.setInt(3,number);
			pstmt.setString(4,orderNum);
			pstmt.executeUpdate();
			pstmt.close();
			flag = 1;
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally{
		dbc.close();
	}
		return flag;
}



	/*
	 * The method is remove goods from orderList according to the orderNum.
	 */
	public void removeGoodsFromOrder(String orderNum) throws Exception {
		
         String sql="delete from orderlist where orderNum=?";
         PreparedStatement pstmt=null;
         DBConnect dbc=null;
         dbc=new DBConnect();
         try{
        	 dbc=new DBConnect();
        	 pstmt=(PreparedStatement)dbc.getConnection().prepareStatement(sql);
        	 ResultSet rs=pstmt.executeQuery();
        	 while(rs.next()){
        		 pstmt.setString(1, orderNum);
        		 }
        	 pstmt.executeUpdate();
        	 pstmt.close();
         }catch(SQLException e){
        	 e.printStackTrace();
         }finally{
        	 dbc.close();
         }
	}
	
	/*
	 * The method is add the detail into the orderList with the information of  the recipients. 
	 */
	public int addDetail(String name,String address,String code,String phone,String ordNum)throws Exception{
		
				int flag = 0;
				String sql="Update orderlist set name=?,address=?,code=?,phone=? where orderNum=?";
				PreparedStatement pstmt=null;
				DBConnect dbc=null;
				try{
					dbc=new DBConnect();
					pstmt=(PreparedStatement)dbc.getConnection().prepareStatement(sql);
					pstmt.setString(1,name);
					pstmt.setString(2, address);
					pstmt.setString(3,code);
					pstmt.setString(4,phone);
					pstmt.setString(5,ordNum);		
					pstmt.executeUpdate();
					pstmt.close();
					flag = 1;
				}catch(SQLException e)
				{
					e.printStackTrace();
				}finally{
				dbc.close();
			}
				return flag;
	}
	
	/*
	 * The method is used to generate random orderNum
	 */
      public  String getTwo(){
    	  Random rad=new Random();
    	  String result=rad.nextInt(100)+"";
    	  if(result.length()==1){
    		  result="0"+result;
    	  }
    	  return result;
      }
	}




	