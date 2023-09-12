<%@ page language="java" contentType="texxt/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setConentType("text/html charset=UTF-8"); %>	
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page import="com.db.dto.BoardDto" %>
<%@ page import="com.db.dao.BoardDao" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>게시판</title>
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
			<th>TITLE</th>
			<td><%=dto.getBd_title() %> </td>
		</tr>
		<tr>
			<th>CONTENT</th>
			<td><textarea rows="10" cols="60" readonly="readonly"><%=dto.getBd_content() %></textarea>
		</td>
			<td colspan="2">
				<button>수정</button>	&nbsp;&nbsp;
				<button>삭제</button>	&nbsp;&nbsp;
				<button>목록</button>	&nbsp;&nbsp;
			</td>		
	</table>
</body>
</html>
