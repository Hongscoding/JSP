<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>book::modify</title>
	</head>
	<body>
		<h3>도서수정</h3>
		<a href="./list.do">도서목록</a>
		<form action="/Bookstore2/book/modify.do" method="post">
			<table border="1">
				<tr>
					<td>도서번호</td>
					<td><input type="text" name="bno" value="${vo.bno}"/></td>
				</tr>
				<tr>
					<td>도서명</td>
					<td><input type="text" name="bname" value="${vo.bname}"/></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text" name="bpub" value="${vo.bpub}"/></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="bpric" value="${vo.bpric}"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="수정"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>