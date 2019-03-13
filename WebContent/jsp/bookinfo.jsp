<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, Model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<% 
	Book book =  (Book)session.getAttribute("detail");
	System.out.println(book.getTitle());


%>


<link href="/SEProject/css/template.css" rel="stylesheet"   type="text/css">
<link href="/SEProject/css/book.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>
<body>

   <table style="width: 100%; height: 1150px; max-width: 1200px; margin: auto;">
      <tr>
         <td colspan="2"><jsp:include page="templateTop.jsp" /></td>
      </tr>
      <tr height="80%">
         <td valign="top" style="width: 230px;"><jsp:include page="templateCenterLeft.jsp" /></td>
         <td valign="top">
            <div class="bookinfocontainer">
               <div class="infoheader">
                  <span class="infobookname"> <%= book.getTitle() %> </span> ㅣ <span style="font-size:22; color:#a5d280;"> </span>
                  <hr class="style4">
               </div>
               <div class="bookinfo">
                  <table class="infoprint">
                     <tr>
                        <td rowspan="6" width="35%" style="text-align:center;"> <img src="<%= book.getImage() %>"><br></td>
                        <td colspan="3"><span class="fspan"> 발행일 ㅣ</span><span> <%= book.getPubdate() %> </span> </td>
                     </tr>
                     <tr>
                        <td> <span class="fspan"> 작가명 ㅣ</span><span> <%= book.getAuthor() %></span> </td></tr>
                     <tr>
                        <td> <span class="fspan"> 편집자 ㅣ</span><span><%= book.getEditor() %></span>  </td></tr>
                     <tr>
                        <td> <span class="fspan"> 출판사 ㅣ</span><span> <%= book.getPublisher() %></span></td></tr>
                     <tr>
                        <td> <span class="fspan"> ISBN  &nbsp; ㅣ</span><span> <%= book.getISBN() %> </span></td>
                     </tr>
                     <tr>
                        <td> <span> </span><span>  </span></td>
                     </tr>
                     <tr><td></td></tr>
                     <tr><td>
                     <div class="bookcontents"><div class="ahrck">목차</div><br>목차<br>목차<br>z</div></td></tr>
                     <tr><td>
                     <div> <%= book.getDescription() %></div></td></tr>
                  </table>
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

