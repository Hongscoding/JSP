<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BookBean"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	List<BookBean> users = new ArrayList<>();

	try{
		//1단계
		Connection conn = DBCP.getConnection();
		//2단계
		Statement stmt = conn.createStatement();
		//3단계
		ResultSet rs = stmt.executeQuery("select * from `book`");
		
		//4단계
		while(rs.next()){
			BookBean bb = new BookBean();
			bb.setBno(rs.getInt(1));
			bb.setBname(rs.getString(2));
			bb.setBpub(rs.getString(3));
			bb.setBpric(rs.getInt(4));
			users.add(bb);

		}
		//5단계
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
		<title>Book::list</title>
	</head>
	<body>
		<h3>도서 목록</h3>
		<a href="../index.jsp">처음으로</a>
		<a href="./register.jsp">도서등록</a>
		<table border='1'>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>출판사</th>
				<th>가격</th>
				<th>관리</th>
			</tr>
			<% for(BookBean bb : users) {%>
			<tr>
				<td><%= bb.getBno() %></td>
				<td><%= bb.getBname() %></td>
				<td><%= bb.getBpub() %></td>
				<td><%= bb.getBpric() %></td>
				<td>
					<a href="./modify.jsp?bno=<%= bb.getBno() %>">수정</a>
					<a href="./delete.jsp?bno=<%= bb.getBno() %>">삭제</a>
				</td>
			</tr>
			<% } %>
		</table>
	</body>
</html>