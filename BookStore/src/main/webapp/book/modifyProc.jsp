<%@page import="config.DBCP"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String bno    	= request.getParameter("bno");
	String bname  	= request.getParameter("bname");
	String bpub  	= request.getParameter("bpub");
	String bpric 	= request.getParameter("bpric");
	
	try{
		Connection conn = DBCP.getConnection();
		
		String sql = "update `book` set `bname`=?, `bpub`=?, `bpric`=?";
		       sql += "where `bno`=?";
		       
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, bname);
		psmt.setString(2, bpub);
		psmt.setString(3, bpric);
		psmt.setString(4, bno);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("./list.jsp");
%>