package trackRobot.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import trackRobot.dao.UserDAO;
import trackRobot.db.DBConnect;
import trackRobot.vo.User;


public class UserDAOImpl implements UserDAO {

	/*
	 This method is used to check the password of corresponding  user's name.
	*/
	public int queryByUsername(User user) throws Exception {
		int flag = 0;
		String sql = "select * from userinfo where username=?";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;   
  
        try{   

            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setString(1,user.getUsername()) ;   

            ResultSet rs = pstmt.executeQuery();
            //System.out.println(user.getUsername());
            while(rs.next()){  

                if(rs.getString("password").equals(user.getPassword())){
                	flag = 1;
                } 
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
	
	
	/*
	 This method is used to register and add the user information. 
	*/
	public int addUser(User user)throws Exception{
		int flag=0;
		String sql="insert into userinfo(username,password,email) values(?,?,?)";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		try{
			dbc=new DBConnect();
			pstmt=dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,user.getUsername());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3, user.getEmail());
			pstmt.executeUpdate();
			flag=1;
		
		pstmt.close();
			}catch(SQLException e){
				System.out.println(e.getMessage());
			}finally{
				dbc.close();
			}
		return flag;
	}
	

	/*
	 This method is used to check the name haven't been registered before when user register. 
	*/	
	public int checkUnique(User user) throws Exception{
		int flag=1;
		String sql="select*from userinfo where username=?";
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		try{
			dbc=new DBConnect();
			pstmt=dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				if(rs.getString("username").equals(user.getUsername())){
					flag=0;
				}
			}
				rs.close();
				pstmt.close();
			}catch(SQLException e){
				System.out.println(e.getMessage());
		}finally{
			dbc.close();
		}
		return flag;
	}
	
	/*
	 This method is used to modify the password of user.
	 Only when the username and corresponding email input are correct.
	*/		
	public int modifyPassword(String username,String password,String email) throws Exception{

		int flag=0;
		int flag2=0;
		int flag3=0;
		
		String sql="update userinfo set password='"+password+"'where username='"+username+"'and email='"+email+"'";
		String sql2="select*from userinfo where username=?";
		String sql3="select*from userinfo where email=?";
		
		PreparedStatement pstmt=null;
		DBConnect dbc=null;
		
		try{
			dbc=new DBConnect();
			pstmt=dbc.getConnection().prepareStatement(sql2);
			pstmt.setString(1, username);
			
		    ResultSet rs = pstmt.executeQuery();
            while(rs.next()){    
            	if(rs.getString("username").equals(username)){
                	flag = 1;
                } 
            }   
            rs.close() ; 
 
            
            
            if(flag==1){
            	pstmt=dbc.getConnection().prepareStatement(sql3);
    			pstmt.setString(1, email);
    			
    		    ResultSet rs2 = pstmt.executeQuery();
                while(rs2.next()){    
                	if(rs2.getString("email").equals(email)){
                    	flag2 = 1;
                		} 
                	}   
                rs2.close() ; 
                
                if(flag2==1){
    				pstmt=dbc.getConnection().prepareStatement(sql);
    				pstmt.executeUpdate();
    				flag3=1;
    				pstmt.close();
                }
                else pstmt.close();
            }
            else pstmt.close();
    	//System.out.print(flag);	
    	//System.out.print(flag2);	
    	//System.out.print(flag3);	
    	    
    		
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}finally{
				dbc.close();
		}
		
		return flag3;
	}

}


