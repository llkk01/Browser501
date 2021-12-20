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
	
	public ArrayList<Member> select(){
		 ArrayList<Member> list = new ArrayList<Member>();
		 Connection con = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		
		 try {
			String sql = "select id,password, name, address, tel, reg_date from member2;";
				con = DriverManager.getConnection(url, userid, passwd);
				pstmt= con.prepareStatement(sql);
				rs = pstmt.executeQuery();
					
					if(rs != null) {
						list = new ArrayList<Member>();
						while(rs.next()) {
							Member member = new Member();
							member.setId(rs.getString("id"));
							member.setPassword(rs.getString("password"));
							member.setName(rs.getString("name"));
							member.setAddress(rs.getString("address"));
							member.setTel(rs.getString("tel"));
							member.setReg_date(rs.getDate("reg_date"));
							
							list.add(member);
						}
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
