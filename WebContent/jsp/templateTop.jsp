<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="/SEProject/css/template.css" rel="stylesheet" type="text/css">
</head>
<%%>
<body>
	<header>
		<div class="Books_img">
			<a href="/SEProject/jsp/Template.jsp"><img src="/SEProject/img/BOOKSQURE.png" width="200px"></a>
		</div>
		<div class="search">
			<form action="/SEProject/bookList.do" method="post">
				<input class="input" name="keyword" type="text">
				<input class="hidden" name="hidden" type="hidden" value="1">
				<input class="search" name="submit" type="submit" value="검색">
			</form>
			<li class="search">상세검색</li>
		</div>
	</header>
	<nav class="menu">
			<div>
				<li>CATEGORY</li>
			</div>
			<ul class="left">
		    	<li><a href="/SEProject">책 홈</a></li>
		    	<li><a href="#">베스트셀러</a></li>
		    	<li><a href="#">내 서재</a></li>
		  	</ul>
		<%

			User user=new User();
	
			try{
				user = (User)session.getAttribute("user");            // request에서 id 파라미터를 가져온다
				if(user==null){                            // id가 Null 이거나 없을 경우
		%>
				<ul class="right">
			    	<li><a href="/SEProject/jsp/login.jsp">로그인</a></li>
			    	<li><a href="/SEProject/jsp/join.jsp">회원가입</a></li>
			  	</ul>
			  	
		<% 		}else {  %>

			  	<ul class="right">
			    	<li><a href="/SEProject/jsp/template_myPage.jsp">마이페이지</a></li>
			    	<li><a href="/SEProject/jsp/join.jsp">로그아웃</a></li>
			  	</ul>
		 <% } }catch(Exception e) { e.printStackTrace();}%>
		</nav>

</body>
</html>