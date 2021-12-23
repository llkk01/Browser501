package ch15.jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//P.442
public class ConnectionProvider {

	public static Connection getConnection() throws SQLException {
		//pool 등록: 이름("ch14_Db") <DBCPInit.java>
		//driver.registerPool("Ch14_Db", connectionPool);
		return DriverManager.getConnection(
				"jdbc:apache:commons:dbcp:Ch14_Db");
	
	}
}
