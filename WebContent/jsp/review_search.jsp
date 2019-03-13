<%@ page language="java" contentType="text/html;  charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.*, Model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<% 
	ArrayList<Book> list = new ArrayList<Book>(); 
	if(request.getAttribute("list") == null){
		
	}else{
		list = (ArrayList<Book>)request.getAttribute("list"); 
		System.out.println(list.get(0).getTitle()+"여기"); 
		session.setAttribute("search_list",list);
	}
  
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="/SEProject/js/jquery-3.2.1.min.js"></script>
</head>
<script>
$(document).ready(function() {
	$('.infoprint').click(function(){
		var title = $(this).attr("id");
		 opener.document.getElementById("title").value = title;
		window.close();
		
		
					
	});
});
</script>
<body>
   	<form action="/SEProject/bookList.do" method="post">
			<input class="input" name="keyword" type="text">
			<input class="hidden" name="hidden" type="hidden" value="2">
			<input class="search" name="submit" type="submit" value="검색">
	</form>
	
	
	
	<%	if(list !=null){
			for(int i=0; i<list.size(); i++){ %>
					<table class="infoprint" id="<%= list.get(i).getTitle() %>">		
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
	<%		}
		}%>
	
	


</body>
</html>