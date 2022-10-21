<%@page import="config.DBCP"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String custId    	= request.getParameter("custId");
	String cusname  	= request.getParameter("cusname");
	String cusaddr  	= request.getParameter("cusaddr");
	String cushp 		= request.getParameter("cushp");
	
	try{
		Connection conn = DBCP.getConnection();
		
		String sql = "update `customer` set `cusname`=?, `cusaddr`=?, `cushp`=?";
		       sql += "where `custId`=?";
		       
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, cusname);
		psmt.setString(2, cusaddr);
		psmt.setString(3, cushp);
		psmt.setString(4, custId);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("./list.jsp");
%>