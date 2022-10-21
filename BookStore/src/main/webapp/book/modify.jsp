<%@page import="bean.BookBean"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.JDBC"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String bno = request.getParameter("bno");
	BookBean bb = null;
	
	try{
		Connection conn = DBCP.getConnection();
		String sql = "select * from `book` where `bno`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, bno);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			bb = new BookBean();
			bb.setBno(rs.getInt(1));
			bb.setBname(rs.getString(2));
			bb.setBpub(rs.getString(3));
			bb.setBpric(rs.getInt(4));
		}
		
		rs.close();
		psmt.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
		<form action="./modifyProc.jsp" method="post">
			<table border="1">
				<tr>
					<td>도서번호</td>
					<td><input type="text" name="bno" value="<%= bb.getBno() %>"/></td>
				</tr>
				<tr>
					<td>도서명</td>
					<td><input type="text" name="bname" value="<%= bb.getBname() %>"/></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text" name="bpub" value="<%= bb.getBpub() %>"/></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="bpric" value="<%= bb.getBpric() %>"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="수정"/></td>
				</tr>
			</table>
		</form>

</html>