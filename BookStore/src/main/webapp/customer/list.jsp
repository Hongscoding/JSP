<%@page import="bean.CustomerBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	List<CustomerBean> users = new ArrayList<>();

	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `customer`");
		
		while(rs.next()){
			CustomerBean cb = new CustomerBean();
			cb.setCustId(rs.getInt(1));
			cb.setCusname(rs.getString(2));
			cb.setCusaddr(rs.getString(3));
			cb.setCushp(rs.getString(4));
			users.add(cb);

		}
		
		conn.close();
		stmt.close();
		rs.close();
		
	} catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Customer::list</title>
	</head>
	<body>
		<h3>고객 목록</h3>
		
		<a href="../index.jsp">처음으로</a>
		<a href="./register.jsp">고객등록</a>
		
		<table border='1'>
			<tr>
				<th>고객번호</th>
				<th>고객명</th>
				<th>주소</th>
				<th>휴대폰</th>
				<th>관리</th>
			</tr>
			<% for(CustomerBean cb : users) {%>
			<tr>
				<td><%= cb.getCustId() %></td>
				<td><%= cb.getCusname() %></td>
				<td><%= cb.getCusaddr() %></td>
				<td><%= cb.getCushp() %></td>
				<td>
					<a href="./modify.jsp?custId=<%= cb.getCustId() %>">수정</a>
					<a href="./delete.jsp?custId=<%= cb.getCustId() %>">삭제</a>
				</td>
			</tr>
			<% } %>
		</table>
	</body>
</html>