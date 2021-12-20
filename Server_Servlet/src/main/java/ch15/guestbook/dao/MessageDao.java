package ch15.guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import ch15.guestbook.model.Message;
import jdbc.jdbcUtil;

//P.450
public class MessageDao {

	private static MessageDao messageDao = new MessageDao();

	public static MessageDao getInstance() {
		return messageDao;
	}

	private MessageDao() {

	}

	public int insert(Connection conn, Message message) throws SQLException {
		PreparedStatement pstmt = null;
		//String sql = "insert into guestbook_message values(message_id_seq.nextval,?,?,?)";
		try {
			//pstmt = conn.prepareStatement(sql);
			pstmt = conn.prepareStatement(
					"insert into guestbook_message " +
					"(messge_id, guest_name, password, message) values(message_id_seq.nextval,?,?,?)");
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());

			return pstmt.executeUpdate();

		} finally {
			jdbcUtil.close(pstmt);
		}

	}

	public Message select(Connection conn, int messageId) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from guesbook_message where message_id = ?");
			pstmt.setInt(1, messageId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return makeMessageFromResultSet(rs);
			} else {
				return null;
			}
		} finally {
			jdbcUtil.close(rs);
			jdbcUtil.close(pstmt);
		}
	}

	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException {
		Message message = new Message();
		message.setId(rs.getInt("message_id"));
		message.setGuestName(rs.getString("guest_name"));
		message.setPassword(rs.getString("password"));
		message.setMessage(rs.getString("message"));
		return message;
	}

	public int selectCount(Connection conn) throws SQLException {

		java.sql.Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from guestbook_message");
			rs.next();
			return rs.getInt(1);
		} finally {
			jdbcUtil.close(rs);
			jdbcUtil.close(stmt);
		}

	}

	// P.451(80라인)
	public List<Message> selectList(Connection conn, int firstRow, int endRow) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			//String sql = "select * from guestbook_message" + "order by message_id desc limut ?,?";
			//pstmt = conn.prepareStatement(sql);
			pstmt = conn.prepareStatement(
					"select message_id, guest_name, password, message from ( "
							+ " select rownum rnum, message_id, guest_name, password, message from ( "
							+ " select * from guestbook_message m order by m.message_id desc "
							+ "    ) where rownum <= ? "
							+ ") where rnum >= ?");
			
			pstmt.setInt(1, firstRow - 1);
			pstmt.setInt(2, endRow - firstRow + 1);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				List<Message> messageList = new ArrayList<Message>();
				do {
					messageList.add(makeMessageFromResultSet(rs));
				} while (rs.next());
				return messageList;
			} else {
				return Collections.emptyList();
			}
		} finally {
			jdbcUtil.close(rs);
			jdbcUtil.close(pstmt);
		}
	}

	public int delete(Connection conn, int messageId) throws SQLException {

		PreparedStatement pstmt = null;

		try {
			String sql = "delete from guebook_message where message_id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, messageId);
			return pstmt.executeUpdate();
		} finally {
			jdbcUtil.close(pstmt);
		}

	}
}
