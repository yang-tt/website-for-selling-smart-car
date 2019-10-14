package jspservlet.db;

import java.sql.DriverManager;
import java.sql.Connection;

public class DBConnect {
	private final String DBDRIVER="com.mysql.jdbc.Driver";
	private final String DBURL="jdbc:mysql://127.0.0.1:3306/JavaWebDB";
	private final String DBUSER="root";
	private final String DBPASSWORD="shine1998";
	private Connection conn=null;
	public DBConnect(){
		try{
			Class.forName(DBDRIVER);
			this.conn=DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);	
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}

	public Connection getConnection(){
		return this.conn;
	}
	
	public void close(){
		try{
			this.conn.close();
		}catch(Exception e){}
	}
}
