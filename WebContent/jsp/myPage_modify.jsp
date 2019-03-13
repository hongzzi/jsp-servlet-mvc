<%@page import="java.util.ArrayList"%>
<%@page import="Model.Service"%>
<%@page import="Model.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdn.rawgit.com/hiun/NanumSquare/master/nanumsquare.css">
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $('button.modifyClear').click(function(){
       history.back();
   });   
});

</script>
<style type="text/css">
div.wrap{
   position:relative;
   margin:auto;
   width:700px;
   font-family:"나눔스퀘어";
}
table.update{
   width:700px;
}
table.update th.tableName{
   height:100px;
   background-color:white;
}
table.update td{
   border:2px solid snow;
   }
table.update th{
   width:150px;
   height:50px;
   border:1px solid white;
   background-color:snow;
}
table.update input.shortInput{
   margin-left:20px;
   width:150px;
}
table.update input.longInput{
   margin-left:20px;
   width:300px;
}

table.update input.gender{
   margin-left:20px;
}

table.update input.favorite {
   margin-left:20px;
}
input.modifyUser{
   width:100px;
   height:50px;
   position:relative;
   float:right;
   right:20px;
   margin-right:20px;
   background-color:lightGray;
   border:0px;
   border-radius:5px;
   box-shadow: 0px 2px 7px lightgrey;
   font-family:"나눔스퀘어";
   font-size:17px;
   font-weight:bold;
   margin-bottom:100px;
}
button.modifyClear{
   width:100px;
   height:50px;
   position:relative;
   float:right;
   right:20px;
   background-color:lightGray;
   border:0px;
   border-radius:5px;
   box-shadow: 0px 2px 7px lightgrey;
   font-family:"나눔스퀘어";
   font-size:17px;
   font-weight:bold;
   margin-bottom:100px;
}
input.modifyUser:hover{
   box-shadow: 0px 2px 7px Grey;
   cursor:pointer;
}
button.modifyClear:hover{
   box-shadow: 0px 2px 7px Grey;
   cursor:pointer;
}
</style>
</head>
<body>
   <% 
   Service service = new Service(); 
   ArrayList<CategoryForBook> list = service.getAllCateory();
   User user = (User)session.getAttribute("user");
   System.out.println(user.getId());
   %>
   <div class="wrap">
      <form method ="post" action="/SEProject/MyPage_Modify">
         <table class="update">
            <tr>
               <th colspan="2" class="tableName"><h2>회원정보 수정</h2></th>
            </tr>
            <tr>
               <th>ID</th>
               <td><input class="shortInput" type="text" name="id" value="<%=user.getId() %>" disabled = "disabled"></td>
            </tr>
            <tr>
               <th>비밀번호</th>
               <td><input class="shortInput" type="password" name="pw">&nbsp;&nbsp;(영문소문자/숫자, 4~16자리)</td>   
            </tr>
            <tr>
               <th>이름</th>
               <td><input class="shortInput" type="text" name="name" value="<%= user.getName() %>"disabled = "disabled"></td>
            </tr>
            <tr>
               <th>성별</th>
               <td>
                  <input class="gender" type="radio" name="gender" value="여성" checked> 여성
                    <input class="gender" type="radio" name="gender" value="남성"> 남성
                 </td>
            </tr>
            <tr>
               <th>닉네임</th>
               <td><input class="shortInput" type="text" name="nick" value="<%= user.getNick() %>"></td>
            </tr>
            <tr>
               <th>핸드폰 번호</th>
               <td><input class="shortInput" type="text" name="phone"  value="<%= user.getPhone() %>"></td>
            </tr>
            <tr>
               <th>이메일</th>
               <td><input class="longInput" type="text" name="email" value="<%= user.getEmail()%>"></td>
            </tr>
            <tr>
               <th>관심분야</th>
               <td>
                  <br>
                  <%
                     for(int i=0; i<list.size();++i){
                        if(i%5==0){
                           if(i!=0){
                              %><br><br>&nbsp;<%
                           }
                        %><input class="favorite" type="checkbox" name="favorite" value="<%=list.get(i).getTitle()%>"><%=list.get(i).getTitle()%><%   
                        }else{
                        %><input type="checkbox" name="favorite" value="<%=list.get(i).getTitle()%>"><%=list.get(i).getTitle()%><%   
                        }
                     }
                  %>
                  <br>&nbsp;
               </td>
            </tr>
         </table>
         <br><br>
         <button class="modifyClear" type="button" value="취소">취소</button>
         <input class="modifyUser" type="submit" value="수정">
      </form>
   </div>

</body>
</html>