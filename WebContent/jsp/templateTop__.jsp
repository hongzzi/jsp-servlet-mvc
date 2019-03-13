<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="/SEProject/css/template.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
	
		<div class="Books_img">
			<li>Books</li>
		</div>
		<div class="search">
			<form action="/SEProject/bookList.do">
				<input class="input" name="keyword" type="text">
				<input class="search" name="submit" type="submit" value="검색">
			</form>
			<li class="search">상세검색</li>
		</div>
	</header>
	<nav class="menu">
			<div>
				<li>분야별 찾기</li>
			</div>
			<ul class="left">
		    	<li><a href="/SEProject">책 홈</a></li>
		    	<li><a href="#">베스트셀러</a></li>
		    	<li><a href="#">내 서재</a></li>
		  	</ul>
		  	<ul class="right">
		    	<li><a href="/SEProject/jsp/login.jsp">로그인</a></li>
		    	<li><a href="/SEProject/jsp/template_myPage.jsp">마이페이지</a></li>
		    	<li><a href="/SEProject/jsp/join.jsp">회원가입</a></li>
		  	</ul>
		</nav>

</body>
</html>