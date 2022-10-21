<%@page import="config.DBCP"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String bno    	= request.getParameter("bno");
	String bname  	= request.getParameter("bname");
	String bpub  	= request.getParameter("bpub");
	String bprice 	= request.getParameter("bprice");

	//데이터베이스 작업
	
	try{
		
		Connection conn = DBCP.getConnection();
		
		String sql = "INSERT INTO `book` VALUES(?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, bno);
		psmt.setString(2, bname);
		psmt.setString(3, bpub);
		psmt.setString(4, bprice);
		
		psmt.executeUpdate();
		psmt.close();
		conn.close(); 
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
	





%>