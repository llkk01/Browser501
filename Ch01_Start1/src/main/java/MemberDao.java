import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MemberDao {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "scott";
	String passwd = "scott";
	
	public MemberDao() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			
		}
	}
		//id, password, name, reg_date
		public ArrayList<Member> select(){
			 ArrayList<Member> list = new ArrayList<Member>();
			 
			 Connection con = null;
			 PreparedStatement pstmt = null;
			 ResultSet rs = null;
			
			 try {
				String sql = "select id, password, name, reg_date from member1";
				 con = DriverManager.getConnection(url, userid, passwd);
					pstmt= con.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()) {
						
						String id = rs.getString("id");
						String password = rs.getString("password");
						String name = rs.getString("name");
						Date reg_date = rs.getDate("reg_date");
						
						Member member = new Member();
						list.add(member);	
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

