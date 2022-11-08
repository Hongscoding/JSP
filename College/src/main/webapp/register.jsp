<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.DBCP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baen.registerList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	List<registerList> registers = new ArrayList<>();
	
	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `register`");
		
		while(rs.next()){
			registerList reg = new registerList();
			reg.setRegNo(rs.getString(1));
			reg.setRegName(rs.getString(2));
			reg.setReglecName(rs.getString(3));
			reg.setReglecCode(rs.getInt(4));
			reg.setRegMid(rs.getInt(5));
			reg.setRegFinal(rs.getInt(6));
			reg.setRegTotal(rs.getInt(7));
			reg.setRegGrade(rs.getString(8));
			registers.add(reg);
			
		}
		
		conn.close();
		stmt.close();
		rs.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>수강관리</title>
	</head>
	<body>
		<h3>수강관리</h3>
		<nav>
			<a href='./lecture.jsp'>강좌관리</a>
			<a href='#'>수강관리</a>
			<a href='./student.jsp'>학생관리</a>
		</nav>
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>강좌명</th>
				<th>강좌코드</th>
				<th>중간시험</th>
				<th>기말시험</th>
				<th>총점</th>
				<th>등급</th>
			</tr>
			<% for(registerList rt : registers){ %>
			<tr>
				<td><%= rt.getRegNo() %></td>
				<td><%= rt.getRegName() %></td>
				<td><%= rt.getReglecName() %></td>
				<td><%= rt.getReglecCode() %></td>
				<td><%= rt.getRegMid() %></td>
				<td><%= rt.getRegFinal() %></td>
				<td><%= rt.getRegTotal() %></td>
				<td><%= rt.getRegGrade() %></td>
			</tr>
			<% } %>
			
		</table>
	</body>
</html>