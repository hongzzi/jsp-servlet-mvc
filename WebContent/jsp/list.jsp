<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Service"%>
<%@page import="Model.*"%>
<% 
	Service service = new Service();
	
	ArrayList<Blog> list  = service.getAllBlogInfo(); 
	System.out.println(list.get(0).getNick());
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 </head>
 <body style="margin:0; padding:0;">
<table width="900px" cellpadding="0" cellspacing="0" border="0"  style="margin-left:auto; margin-right:auto; margin-top:30px">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('/SEProject/img/table_mid.gif') repeat-x; text-align:center;">
  
   <td width="20">평점</td>
   <td width="20">작성자</td>
   <td width="50">제목</td>
   <td width="20">작성일</td>
   <td width="20">조회수</td>
   
  </tr>
  <%
  	for(int i=0; i<list.size(); i++){
  		%>
  
  		<tr style="text-align:center;">
  			<td width="20"> <%= list.get(i).getBlogscore() %></td>
  			<td width="20"> <%= list.get(i).getNick() %></td>
  			
  			<td width="50"> <%= list.get(i).getTitle() %> </td >
  			<td width="20"> ddddd </td>
  			<td width="20"> <%= list.get(i).getClick() %></td>
  		</tr>
  		
  	<% }
  
  %>
 </table>
 
 <HR style="width:900px; height:2px; background-color:lightgrey;"></HR>
 
 <div style="width:900px; margin-left:auto; margin-right:auto;">
	<input style="width:60px; position:relative; right:10px; float:right; height:30px;background-color:Lightgrey; border-radius: 5px;font-family:'배달의민족 주아'; border-style:none;" type="button" value="글쓰기" OnClick="location.href='/SEProject/jsp/template_reviewWrite.jsp'">
</div>
</body> 
</html>


