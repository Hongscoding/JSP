<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="config.DBCP"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baen.studentList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	List<studentList> students = new ArrayList<>();
	
	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `student`");
		
		while(rs.next()){
			studentList std = new studentList();
			std.setStdNo(rs.getString(1));
			std.setStdName(rs.getString(2));
			std.setStdHp(rs.getString(3));
			std.setStdGrade(rs.getInt(4));
			std.setStdAddr(rs.getString(5));
			students.add(std);
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
		<title>학생 관리</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script src="./js/stdReg.js"></script>
		<script>
		
			$(function(){
			
				
				//student 등록
				$(document).on('click', 'input[name=register]', function(e){
					e.preventDefault();
					stdReg();
				});
				
				//student 등록하기(submit)
				$(document).on('click', 'input[name=append]', function(e){
					e.preventDefault();
					
					// 데이터 가져오기
					let stdNo  = $('input[name=stdNo]').val();
					let stdName = $('input[name=stdName]').val();
					let stdHp   = $('input[name=stdHp]').val();
					let stdGrade   = $('input[name=stdGrade]').val();
					let stdAddr  = $('input[name=stdAddr]').val();
					
					// JSON 데이터 생성
					let jsonData = {
							"stdNo":stdNo,
							"stdName":stdName,
							"stdHp":stdHp,
							"stdGrade":stdGrade,
							"stdAddr":stdAddr
					};
					
					console.log(jsonData);
					
					// 데이터 전송
					$.ajax({
						url:'./json/studentReg.jsp',
						type:'post',
						data:jsonData,
						datatype:'json',
						success:function(data){
							console.log(data);
							
							if(data.result == 1){
								alert('데이터 입력 성공');
							} else{
								alert('데이터 입력 실패');
							}
							
						}
						
					});
					
				});
				
			});
		
		</script>
	</head>
	<body>
		<h3>학생관리</h3>
		<nav>
			<a href='./lecture.jsp'>강좌관리</a>
			<a href='./register.jsp'>수강관리</a>
			<a href='#'>학생관리</a>
		</nav>
		<h4>학생 현황</h4>
		<input type='submit' name=register value='등록'/>
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>학년</th>
				<th>주소</th>
			</tr>
			<% for(studentList st : students){ %>
			<tr>
				<td><%= st.getStdNo() %></td>
				<td><%= st.getStdName() %></td>
				<td><%= st.getStdHp() %></td>
				<td><%= st.getStdGrade() %></td>
				<td><%= st.getStdAddr() %></td>
			</tr>
			<% } %>
			
		</table>
	</body>
</html>