<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.*"%>
<%@page import="Model.Blog"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div.wrap{
   position:relative;
   margin:auto;
   width:800px;
   font-family:"나눔스퀘어";
}
table.myReview{
   width:800px;
}
table.myReview th.tableName{
   height:100px;
}
table.myReview th.score{
   width:10%;
   height:50px;
   border:1px solid white;
   background-color:snow;
}
table.myReview th.writer{
   width:20%;
   height:50px;
   border:1px solid white;
   background-color:snow;
}
table.myReview th.title{
   width:50%;
   height:50px;
   border:1px solid white;
   background-color:snow;
}
table.myReview th.date{
   width:20%;
   height:60px;
   border:1px solid white;
   background-color:snow;
}
table.myReview td.content{
   height:45px;
   border:2px solid snow;
   padding-left:10px;
}
</style>
</head>
<body>
   <% 
   Service service = new Service(); 
   User user = (User)session.getAttribute("user");
   ArrayList<Blog> list = service.getAllBlogInfo();
   ArrayList<Blog> list2 = new ArrayList<Blog>();
   for(int i=0; i<list.size(); i++){
      if(list.get(i).getNick().equals(user.getNick())){
         list2.add(list.get(i));
      }
   }
   %>
   <div class="wrap">
      <table class="myReview">
      <tr>
         <th class="tableName" colspan="4"><h2>내가 쓴 리뷰</h2></th>
      </tr>
      <tr>
         <th class="score">평점</th>
         <th class="writer">작성자</th>
         <th class="title">제목</th>
         <th class="date">작성일</th>
      </tr>
      <%
      for(int i=0; i<list2.size(); i++){
         %>
         <tr>
         <td class="content" style="text-align:center;padding:0;"><%=list2.get(i).getBlogscore()%></td>
         <td class="content"><%=list2.get(i).getNick()%></td>
         <td class="content"><%=list2.get(i).getTitle()%></td>
         <td class="content"><%=list2.get(i).getRegdate()%></td>
         </tr>
         <%
      }
      %>
      
      </table>
   </div>

</body>
</html>