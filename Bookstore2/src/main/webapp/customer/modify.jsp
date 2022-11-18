<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>customer::modify</title>
	</head>
	<body>
		<h3>고객수정</h3>
		<a href="./list.do">고객목록</a>
		<form action="/Bookstore2/customer/modify.do" method="post">
			<table border="1">
				<tr>
					<td>고객번호</td>
					<td><input type="text" name="custId" value="${vo.custId}"/></td>
				</tr>
				<tr>
					<td>고객명</td>
					<td><input type="text" name="cusname" value="${vo.cusname}"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="cusaddr" value="${vo.cusaddr}"/></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="cushp" value="${vo.cushp}"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="수정"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>