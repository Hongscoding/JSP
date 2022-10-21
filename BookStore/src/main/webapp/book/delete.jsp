<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String bno = request.getParameter("bno");
	
	try{
		Connection conn = DBCP.getConnection();
		String sql = "delete from `book` where `bno`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, bno);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		
	} catch(Exception e){
		e.printStackTrace();
	}


	response.sendRedirect("./list.jsp");



%>