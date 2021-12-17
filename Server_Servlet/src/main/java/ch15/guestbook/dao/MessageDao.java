package ch15.guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import ch15.guestbook.model.Message;

//P.450
public class MessageDao {
	
	public int insert(Connection conn, Message message) {
		
		String sql = "insert into guestbook_message values(message_id_seq.nextval,?,?,?)";
		//PreparedStatement pstmt = conn.prepareStatement(sql);
		
		return 0;
	}
	
	//P.451(80라인)
	public List<Message> selectList(Connection conn, int firstRow, int endRow){
		
		//String sql = "select * from () where rnum >=?";
		//PreparedStatement pstmt = conn.prepareStatement(sql);
		
		return null;
	}
}
