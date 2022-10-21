<%@page import="bean.CustomerBean"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.JDBC"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String custId = request.getParameter("custId");
	CustomerBean cb = null;
	
	try{
		Connection conn = DBCP.getConnection();
		String sql = "select * from `customer` where `custId`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, custId);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			cb = new CustomerBean();
			cb.setCustId(rs.getInt(1));
			cb.setCusname(rs.getString(2));
			cb.setCusaddr(rs.getString(3));
			cb.setCushp(rs.getString(4));
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
					<td>고객번호</td>
					<td><input type="text" name="custId" value="<%= cb.getCustId() %>"/></td>
				</tr>
				<tr>
					<td>고객명</td>
					<td><input type="text" name="cusname" value="<%= cb.getCusname() %>"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="cusaddr" value="<%= cb.getCusaddr() %>"/></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="cushp" value="<%= cb.getCushp() %>"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="수정"/></td>
				</tr>
			</table>
		</form>

</html>