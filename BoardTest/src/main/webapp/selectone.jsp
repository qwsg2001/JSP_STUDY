<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html charset=UTF-8");%>
<%@ page import="com.db.dto.BoardDto" %>    
<%@ page import="com.db.dao.BoarDao" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	int bd_no = Integer.parseInt(requesat.getParametr("bd_no"));
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
   			<td><%=dto.getBd_title() %></td>
   		</tr>
   		<tr>
   			<th>TITLE</th>
   			<td><%=dto.getBd_title() %></td>
   		</tr>
   		<tr>
   			<th>CONTENT</th>
   			<td><textarea rows="10" cols="60" readonly="readonly"><%=dto.getBd_content() %></textarea></td>
   		</tr>			
   		<tr>
   			<td colspan="2">
				<button>수정</button>&nbsp;&nbsp;   			
				<button>삭제</button>&nbsp;&nbsp;   			
				<button>목록</button>&nbsp;&nbsp;
				<button onclick="location.href='main.jsp'">목록</button>   			
				</td>
		</tr>
		</table>
	</body>
</html>