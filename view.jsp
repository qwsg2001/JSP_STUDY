<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판</title>
</head>
<body>
    <h1>게시판</h1>
    <ul>
        <%-- 여기서 게시물 목록을 반복해서 표시합니다. --%>
        <% 
            HashMap<Integer, String> board = (HashMap<Integer, String>) request.getAttribute("board");
            if (board != null) {
                for (Integer id : board.keySet()) {
        %>
            <li><a href="view.jsp?id=<%=id%>"><%=board.get(id)%></a></li>
        <% 
                }
            }
        %>
    </ul>
    <a href="write.jsp">글쓰기</a>
</body>
</html>
