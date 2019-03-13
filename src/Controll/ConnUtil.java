package Controll;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnUtil {
	
	private static String jdbc ="com.mysql.jdbc.Driver";
	
	private ConnUtil(){
	}
	
	static {
		try {
			Class.forName(jdbc);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		String url = "jdbc:mysql://ec2-52-78-222-111.ap-northeast-2.compute.amazonaws.com:3306/SWE?useUnicode=true&characterEncoding=utf8";
		//tring url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "swe"; // 디비 계정명
		String password = "swe";

		return DriverManager.getConnection(url, user, password);
	}
	
	
	public static void close(Connection conn, PreparedStatement ps) {
		if(ps != null) {
			try {
				ps.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(conn !=null) {
			try {
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if(rs !=null) {
			try {
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		close(conn, ps);
	}
	
}
