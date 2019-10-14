package trackRobot.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import trackRobot.dao.CartDAO;
import trackRobot.db.DBConnect;
import trackRobot.vo.Cart;
import trackRobot.vo.Product;
import trackRobot.vo.User;

public class CartDAOImpl implements CartDAO{
	
	/*
	 * The method is use to find the information of product according to proID
	 */
	public Product findPro(int proID)throws Exception{
		Product pro=new Product();
		
		String sql="select*from productinfo where proID=?";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		try{
			dbc=new DBConnect();
			pstmt=dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1, proID);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				if(rs.getInt("proID")==proID){
					pro.setProID(rs.getInt("proID"));
					pro.setProName(rs.getString("proName"));
					pro.setProImg(rs.getString("proImg"));
					pro.setProPrice(rs.getDouble("proPrice"));
					pro.setProNum(rs.getInt("proNum"));
					pro.setProDetail(rs.getString("proDetail"));
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
	
	
	/*
	 * The method is use to Show the CarList detail
	 */
	public ArrayList<Cart> showCart(String username) throws Exception{
		ArrayList<Cart> cartAL=new ArrayList<Cart>();
		Product pro=new Product();
		String sql="select*from cart where username=?";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		try{
			dbc=new DBConnect();
			pstmt=dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next()){
				if(rs.getString("username").equals(username)){
					Cart cart=new Cart(rs.getInt("cartID"),findPro(rs.getInt("ProID")),rs.getInt("amount"));
					cartAL.add(cart);
				}
				else cartAL=null;
			}
			rs.close();
			pstmt.close();
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}finally{
			dbc.close();
		}
		return cartAL;
	}
	
	
	/*
	 * The method is use to add product to cart
	 */
	public int addCart(String username,int amount,int proID)throws Exception{
		int flag=0;
		String sql="insert into cart(username,proID,amount)value(?,?,?)";
		
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		try{
			dbc=new DBConnect();
			pstmt=(PreparedStatement)dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setInt(2, proID);
			pstmt.setInt(3, amount);
			pstmt.executeUpdate();
			pstmt.close();
			flag=1;
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			dbc.close();
		}
		
		return flag;
			
	}
	
	/*
	 * The method is remove the product from cart
	 */
	public int removeGoodsFromCart(int cartID)throws Exception{
		int flag=0;
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		String sql="delete from cart where cartID=?";
		try{
			dbc=new DBConnect();
			pstmt=dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,cartID);
			pstmt.executeUpdate();
			pstmt.close();
			flag=1;
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			dbc.close();
		}
		return flag;
	}
	
	
	
} 
