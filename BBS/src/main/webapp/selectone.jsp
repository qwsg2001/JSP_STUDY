<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>    
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<form method="post" action="writeAction.jsp">
   		
   			<table class="table table-triped" style="text-align: center; border: 1px solid #dddddd">
   			<thead>
   				<tr>
   					<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
   					
   				</tr>
   			</thead>
   			<tbody>
   				<tr>
   					<td><input type="Text" Class="from-control" placeholder="글제목"name="bbsTile" maxlength="50"></td>
   					<td><textarea Class="from-control" placeholder="글내용"name="bbsContent" maxlength="2048" style="height: 350;"></textarea></td>
   					
   				   					
   				</tr>
  	 			</tbody>
   			</table>
   			<input type="submit" Class="btn btn-primary pull-right" value="글쓰끼">
   		
   		 <div class="col-lg-4"></div>
   	<div class="container">
   		<div class="row">
   			<table class="table table-triped" style="text-align: center; border: 1px solid #dddddd">
   			<thead>
   				<tr>
   					<th style="background-color: #eeeeee; text-align: center;">번호</th>
   					<th style="background-color: #eeeeee; text-align: center;">제목</th>
   					<th style="background-color: #eeeeee; text-align: center;">작성자ㅣ</th>
   					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
   				</tr>
   			</thead>
   			<tbody>
   				<tr>
   					<td>1</td>
   					<td>안녕하세요</td>
   					<td>홍길동</td>
   					<td>201-05-04</td>
   				</tr>
   			</tbody>
   		</table>
   		<a href="Writer.jsp" class="btn btn-primary pull-right">글쓰기</a>
   	</div>
   </div>	
   		</form>
 
    <script src="https://code.jquery.com-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>