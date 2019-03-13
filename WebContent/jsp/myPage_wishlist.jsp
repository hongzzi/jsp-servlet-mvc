<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Service"%>
<%@page import="Model.Blog"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
div.wrap{
	position:relative;
	margin:auto;
	width:800px;
	font-family:"나눔스퀘어";
}
table.myWishList{
	width:800px;
}
table.myWishList th.tableName{
	height:100px;
}
table.myWishList th.no{
	width:10%;
	height:50px;
	border:1px solid white;
	background-color:snow;
}
table.myWishList th.title{
	width:50%;
	height:50px;
	border:1px solid white;
	background-color:snow;
}
table.myWishList th.writer{
	width:13%;
	height:50px;
	border:1px solid white;
	background-color:snow;
}
table.myWishList th.publisher{
	width:13%;
	height:60px;
	border:1px solid white;
	background-color:snow;
}
table.myWishList th.date{
	width:13%;
	height:60px;
	border:1px solid white;
	background-color:snow;
}
table.myWishList td.content{
	height:45px;
	border:2px solid snow;
	padding-left:10px;
}
</style>
</head>
<body>
	<% 
	Service service = new Service(); 
	ArrayList<Blog> list = service.getAllBlogInfo();
	%>
	<div class="wrap">
		<table class="myWishList">
		<tr>
			<th class="tableName" colspan="5"><h2>관심 도서</h2></th>
		</tr>
		<tr>
			<th class="no">번호</th>
			<th class="title">책 제목</th>
			<th class="writer">작가</th>
			<th class="publisher">출판사</th>
			<th class="date">날짜</th>
		</tr>
		<%
		
		%>
		<tr>
			<td class="content" style="text-align:center;padding:0;">1</td>
			<td class="content">언어의 온도</td>
			<td class="content">이기주</td>
			<td class="content">말글터</td>
			<td class="content">2017.12.02</td>
		</tr>
		
		</table>
	</div>

</body>
</html>