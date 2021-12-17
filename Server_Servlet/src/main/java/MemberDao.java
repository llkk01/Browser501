import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ch18.mvc.vo.EmpDTO;

public class MemberDao {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "mamang";
	String passwd = "mamang";
	
	public MemberDao() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			
		}
	}
	
	public ArrayList<MemberDao> select(){
		 ArrayList<MemberDao> list = new ArrayList<MemberDao>();
		 Connection con = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		
		 try {
			String sql = "select id,password from madang";
			 con = DriverManager.getConnection(url, userid, passwd);
				pstmt= con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					String id = rs.getString("id");
					String password = rs.getString("password");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String tel = rs.getString("tel");
					String reg_date = rs.getString("reg_date");
					
					Member member = new Member();

					list.add(null);
				}
		} catch (SQLException e) {
			
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				
			}
		}
		return list;	
	}
}
