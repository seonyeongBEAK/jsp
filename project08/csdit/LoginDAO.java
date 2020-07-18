package csdit;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LoginDAO {
	private static LoginDAO instance = new LoginDAO();
	public static LoginDAO getInstance() {
		return instance;
	}

private Connection getConnection() throws Exception{
	Connection con=null;
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/seonyeong");
		con = ds.getConnection();
		
	} catch(Exception e) {
		e.printStackTrace();
		
	}
	return con;


public void insertUser(LoginDTO dto) throws Exception{
Connection con = null;
PreparedStatement pstmt=null;
try{
con = getConnection();
String sql = "insert into login values(?, ?, ?)";
pstmt.setString(1, dto.getId());
pstmt.setString(2, dto.getName());
pstmt.setString(3, dto.getPwd());
pstmt.executeUpdate();

}catch(Exception e) {
	e.printStackTrace();
}finally {
	try {
		if(pstmt != null) pstmt.close();
		if(con != null) con.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
}


}