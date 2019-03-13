<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@page import="java.util.ArrayList"%>
<%@page import="Model.Service"%>
<%@page import="Model.*"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% User user = (User)session.getAttribute("user"); %>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/SEProject/js/review.js"></script>

<body>


      <table width="100%" cellpadding="0" cellspacing="0" border="0" style="width:800px; position:relative; margin:auto;top:30px;">
         <tr
            style="background: url('/SEProject/img/table_mid.gif') repeat-x; text-align: center;">
            <td width="5"><img src="/SEProject/img/table_left.gif" width="5"
               height="30" /></td>
            <td>글쓰기</td>
            <td width="5"><img src="/SEProject/img/table_right.gif" width="5"
               height="30" /></td>
         </tr>
      </table>
      <form name=writeform method="post" action="/SEProject/ReviewWrite_" style="width:800px;position:relative; margin:auto;top:30px;" enctype="multipart/form-data">
         <table
            style="width: 100%; height: 100%; margin-left: auto; margin-right: auto;">

            <tr>
               <td>&nbsp;</td>
               <td align="center">제목</td>
               <td><input name="title" size="50" maxlength="100"></td>
               <td>&nbsp;</td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            <tr>
               <td>&nbsp;</td>
               <td align="center">검색</td>
               <td><input name="search" readonly id="title" size="50">
               <input type="button" name="search" value="검색" onclick="window.open('/SEProject/jsp/review_search.jsp')"></td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td align="center">평점</td>
               <td><select name="score">
                     <option value="&nbsp&nbsp&nbsp"></option>
                     <option value="0">0</option>
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
               </select></td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>

            <tr>
               <td>&nbsp;</td>
               <td align="center">사진</td>
               <td><input type="file" name="filename"></td>
            </tr>

            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td name="name" align="center" value="<%= user.getId() %>">이름</td>
               <td><%= user.getId() %></td>
               <td>&nbsp;</td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td align="center">비밀번호</td>
               <td><input type="password" name="password" size="50"
                  maxlength="50"></td>
               <td>&nbsp;</td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td align="center">내용</td>
               <td><textarea name="contents" cols="100" rows="30" size="100"></textarea></td>
               <td>&nbsp;</td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>
            <tr height="1" bgcolor="#dddddd">
               <td colspan="4"></td>
            </tr>
            <tr align="center">
               <td>&nbsp;</td>
               <td colspan="2"><input type="submit" value="등록"> 
               <input type=button value="취소" OnClick="javascript:history.back(-1)">
               <td>&nbsp;</td>
            </tr>
         </table>
      </form>
</body>
</html>