<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	
	// 데이터베이스 처리
	String host = "jdbc:mysql://127.0.0.1:3306/java1db";
	String user = "root";
	String pass = "1234";
	
	// 데이터베이스 작업
	try{
		//2단계
		Connection conn = DriverManager.getConnection(host, user, pass);
		//3단계
		String sql = "DELETE FROM `member` WHERE `uid` = ?;";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		//4단계
		psmt.executeUpdate();
		//5단계
		psmt.close();
		conn.close();
				
	} catch(Exception e){
		e.printStackTrace();
	}
	
	//목록 이동
	response.sendRedirect("./list.jsp");
	
	
	
%>