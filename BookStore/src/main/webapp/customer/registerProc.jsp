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
	String custId    	= request.getParameter("custId");
	String cusname  	= request.getParameter("cusname");
	String cusaddr  	= request.getParameter("cusaddr");
	String cushp 		= request.getParameter("cushp");

	//데이터베이스 작업
	
	try{
		
		Connection conn = DBCP.getConnection();
		
		String sql = "INSERT INTO `customer` VALUES(?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, custId);
		psmt.setString(2, cusname);
		psmt.setString(3, cusaddr);
		psmt.setString(4, cushp);
		
		psmt.executeUpdate();
		psmt.close();
		conn.close(); 
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
	





%>