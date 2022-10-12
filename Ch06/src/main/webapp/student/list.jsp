<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.DB"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	try{
	 	Connection conn = DB.getInstance().getConnection();
	 	Statement stmt = conn.createStatement();
	 	ResultSet rs = stmt.executeQuery("SELECT * FROM `student`");
	 	
		
	} catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>student 목록</h3>
		<a href="./register.jsp"></a>
		
	</body>
</html>