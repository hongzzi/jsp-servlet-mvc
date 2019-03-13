<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 

   ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list"); 
session.setAttribute("search_list",list);
   System.out.println(list.get(0).getTitle()+"여기"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/SEProject/css/book.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="/SEProject/js/jquery-3.2.1.min.js"></script>
</head>
<style type="text/css">
table {
       border-collapse: collapse;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$('.infoprint').click(function(){
		var title = $(this).attr("id");
		
		$.ajax({
			type : 'POST',
			data : {
				title : title
			},
			url : '/SEProject/jsp/template_book_search_detail.jsp',
			success : function(result) {
				window.location.href = "/SEProject/jsp/bookinfo2.jsp";
			},
			error : function(e){
				alert("error");
			}
		});
					
	});
});
</script>

<body>
<table style="width: 100%; height: 100%; max-width:1300px; margin:auto;">
		<tr>
			<td colspan="2"><jsp:include page="templateTop.jsp" /></td>
		</tr>
		<tr height="80%">
			<td valign="top" style="width:191px;"><jsp:include page="templateCenterLeft.jsp" /></td>
			<td valign="top">
				<div class="booklistcontainer">
					<div class="listheader">
						<span> "검색어" (검색결과갯수)</span>
						<hr class="style4">
					</div>
					<div class="booklist">
						
						<% for(int i=0; i<list.size(); i++){ %>
							<table class="infoprint" id="<%= list.get(i).getTitle()%>" >
								<tr class="infotr">
									<td rowspan="3" width="15%"><img src="<%=list.get(i).getImage() %>"></td>
									<td colspan="2" height="15%"><span class="spanstyle2"><%=list.get(i).getTitle() %></span></td>
								</tr>
								<tr>
									<td height="15%">
										<span class="spanstyle"><%= list.get(i).getAuthor() %></span>
										<span class="spanstyle"><%= list.get(i).getPrice() %></span>
										<span class="spanstyle"><%= list.get(i).getPublisher() %></span>
									</td>
								</tr>
								<tr>
									<td colspan="3" width="85%"><%= list.get(i).getDescription() %><br>내용<br>내용</b></td>
								</tr>
								</table>
							
						<%} %>
							
						
						</div>
					</div>
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="templateBottom.jsp" /></td>
		</tr>
	</table>
	
</body>
</html>