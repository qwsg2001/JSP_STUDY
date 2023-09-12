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
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
			
		}
	%>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed"
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expanded="false">
    <span class="icon-bar"></span> 
    <span class="icon-bar"></span> 
    <span class="icon-bar"></span>     
   </button>
   <a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
  </div>
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
   <ul class="nav navbar-nav">
    <li><a href="main.jsp">메인</a></li>
    <li class="active"><a href="bbs.jsp">게시판</a></li>
   </ul>
   <%
   	if(userID == null){
   	   	
   %>
    <ul class="nav navbar-nav navbar-right">
    <li class="dropdown">
     <a href="#" class="dropdown-toggle"
      data-toggle="dropdown" role="button" aria-haspopup="true"
      aria-expanded="false">접속하기<span class="caret"></span></a>
     <ul class="dropdown-menu">
      <li class="active"><a href="login.jsp">로그인</a></li>
      <li><a href="join.jsp">회원가입</a></li>
     </ul>
    </li>
   </ul>
   <%
   	}else{
   		
   %>
   <ul class="nav navbar-nav navbar-right">
    <li class="dropdown">
     <a href="#" class="dropdown-toggle"
      data-toggle="dropdown" role="button" aria-haspopup="true"
      aria-expanded="false">회원관리<span class="caret"></span></a>
     <ul class="dropdown-menu">
      <li><a href="logoutAction.jsp">로그아웃</a></li>
     </ul>
    </li>
   </ul>
   <%
   	}
   %>
  
  </div>
 </nav>
 <div class="container">
           <div class="col-Lg-4"></div>
           <div class="col-Lg-4"></div>          
              <div class="jumbotron" style="padding-top: 20px;">
               	<form method="post" action="loginAction.jsp">
                <h3 style="text-align: center;">로그인 화면</h3>
                <div class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                  </div>
                  <div class="form-group">
                <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                  </div>
                   <input type="submit" class="btn btn-primary form-control" value="로그인">
                  </form>
              </div>               
          </div>       
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
    <script src="https://code.jquery.com-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>