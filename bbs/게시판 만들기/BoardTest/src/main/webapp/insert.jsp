<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="insert_alert.jsp" method="get">
		<table border="1">
			<tr>
				<th>NAME</th>
				<td><input type="text" name="bd_name"></td>
			</tr>
			<tr>
				<th>TI
			</tr>
			<tr>
				<th>TITLE</th>
				<td><input type="text" name="bd_name"></td>
			</tr>
			<tr>
				<th>CONTENT</th>
				<td><textarea rows="10" cols="60" name="bd_content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="입력">
					<input type="button" value="취소" onclick="location.href='main.jsp'">
				</td>	
			</tr>			
		</table>
	</form>
</body>
</html>