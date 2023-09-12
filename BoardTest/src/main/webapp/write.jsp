<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹사이트</title>
</head>
<body>
<table border="1">
   		<col width="50px">
   		<col width="100px">
   		<col width="200px">
   		<col width="100px">
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

 	  </tr>	
 	  </table>
</body>
</html>