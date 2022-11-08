<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.DBCP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baen.lectureBean"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	List<lectureBean> lectures = new ArrayList<>();
	
	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `lecture`");
		
		while(rs.next()){
			lectureBean lb = new lectureBean();
			lb.setLecNo(rs.getInt(1));
			lb.setLecName(rs.getString(2));
			lb.setLecCredit(rs.getInt(1));
			lb.setLecTime(rs.getInt(1));
			lb.setLecClass(rs.getString(1));
			
			lectures.add(lb);
		}
		
		rs.close();
		stmt.close();
		conn.close();
				
	} catch(Exception e){
		e.printStackTrace();
	}


%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>강좌 관리</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script src="./js/lecReg.js"></script>
		<script>
		
			$(function(){
			
				
				//lecture 등록
				$(document).on('click', 'input[name=register]', function(e){
					e.preventDefault();
					lecReg();
				});
				
				//lecture 등록하기(submit)
				$(document).on('click', 'input[name=append]', function(e){
					e.preventDefault();
					
					// 데이터 가져오기
					let lecNo  = $('input[name=lecNo]').val();
					let lecName = $('input[name=lecName]').val();
					let lecCredit   = $('input[name=lecCredit]').val();
					let lecTime   = $('input[name=lecTime]').val();
					let lecClass  = $('input[name=lecClass]').val();
					
					// JSON 데이터 생성
					let jsonData = {
							"lecNo":lecNo,
							"lecName":lecName,
							"lecCredit":lecCredit,
							"lecTime":lecTime,
							"lecClass":lecClass
					};
					
					console.log(jsonData);
					
					// 데이터 전송
					$.ajax({
						url:'./json/lectureReg.jsp',
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
		<h3>강좌 관리</h3>
		<nav>
			<a href='#'>강좌관리</a>
			<a href='./register.jsp'>수강관리</a>
			<a href='./student.jsp'>학생관리</a>
		</nav>
		<h4>강좌 현황</h4>
		<input type='submit' name=register value='등록'/>
			<table border="1">
			<tr>
				<th>번호</th>
				<th>강좌명</th>
				<th>학점</th>
				<th>시간</th>
				<th>강의장</th>
			</tr>
			<% for(lectureBean lb : lectures){ %>
			<tr>
				<td><%= lb.getLecNo() %></td>
				<td><%= lb.getLecName() %></td>
				<td><%= lb.getLecCredit() %></td>
				<td><%= lb.getLecTime() %></td>
				<td><%= lb.getLecClass() %></td>
			</tr>
			<% } %>
			
		</table>
		<nav id="lecReg"></nav>
	</body>
</html>