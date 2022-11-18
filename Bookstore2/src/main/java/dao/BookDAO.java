package dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.DBHelper;
import vo.BookVO;

public class BookDAO extends DBHelper{
	private static BookDAO instance = new BookDAO();
	public static BookDAO getInstance() {
		return instance;
	}
	private BookDAO() {}
	
	public void insertBook(BookVO vo) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("insert into `book` values(?,?,?,?)");
			psmt.setInt(1, vo.getBno());
			psmt.setString(2, vo.getBname());
			psmt.setString(3, vo.getBpub());
			psmt.setInt(4, vo.getBpric());
			psmt.executeUpdate();
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public BookVO selectBook(int bno) {
		BookVO vo = null;
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("select * from `book` where `bno`=?");
			psmt.setInt(1, bno);
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new BookVO();
				vo.setBno(rs.getInt(1));
				vo.setBname(rs.getString(2));
				vo.setBpub(rs.getString(3));
				vo.setBpric(rs.getInt(4));
			}
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public List<BookVO> selectBooks() {
		List<BookVO> books = new ArrayList<>();
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from `book`");
			while(rs.next()) {
				BookVO vo = new BookVO();
				vo.setBno(rs.getInt(1));
				vo.setBname(rs.getString(2));
				vo.setBpub(rs.getString(3));
				vo.setBpric(rs.getInt(4));
				books.add(vo);
			}
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return books;
	}
	
	public void updateBook(BookVO vo) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("update `book` set `bname`=? , `bpub`=? , `bpric`=? where `bno`=?");
			psmt.setString(1, vo.getBname());
			psmt.setString(2, vo.getBpub());
			psmt.setInt(3, vo.getBpric());
			psmt.setInt(4, vo.getBno());
			psmt.executeUpdate();
			close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteBook(int bno) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("delete from `book` where `bno`=?");
			psmt.setInt(1, bno);
			psmt.executeUpdate();
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
