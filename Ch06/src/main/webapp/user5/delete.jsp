<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.*"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	
	try{
		Connection conn = DBCP.getConnection();
		String sql = "delete from `user5` where `uid`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		
	} catch(Exception e){
		e.printStackTrace();
	}


	response.sendRedirect("./list.jsp");



%>