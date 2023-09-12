<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<% request.setCharacterEncoding("URF-8"); %>
<% response.setContentType("text/html charset=URF-8"); %>
<%@ page import="com.db.dto.BoadDTo" %>
<%@ page import="com.db.dto.BoadDao" %>

<link rel="stylesheet" href="css/bootstrap.css">
<!DOCTYPE html>
<html>

<head> 
    <meta charset="UTF-8">
    <title>게시물 작성 페이지</title>
    
</head>
<body>
<%
	int bd_no = Integer.parseInt(request.getParameter("bd_no"));
	BoardDao dao = new BoardDao();
	BoardDto dto = dao.selectOne(bd_no);
%>
	<table border="1">
		<tr>	
			<th>NAME:</th>
			<td><%=dto.getBd_name() %></td>
		</tr>
		<tr>	
			<th>TITLE:</th>
			<td><%=dto.getBd_title() %></td>
		</tr>
		<tr>	
			<th>CONTENT:</th>
			<td><textarea rows="10" cols=-"60" readonly="redonly"><%=dto.getBd_content() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<button>수정</button>&nbsp;&nbsp;
				<button>삭제</button>&nbsp;&nbsp;
				<button>목록</button>&nbsp;&nbsp;
			</td>
		</tr>	
	</table>
</body>
</html>
