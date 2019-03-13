<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>QnA</title>

<link href="../css/page.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="page_container">
	<div class="title"><img src="../img/QnA.png"><br><hr class="style14">
	<p class="notice"> [ ! ] <br>질문하기 전 FnA와 같은 질문이 없는지 확인 후 작성해주세요<br><a href="fna.jsp">☞ FnA 보러가기 ☜</a></p></div>
	<div class="content2">
		<form action="#" method="post">
		<table>
			<tr><td width="80px"><span class="spanstyle1"> E-Mail : </span></td><td><input type="text" name="resE-mail" placeholder="답변을 받을 이메일을 적어주세요"  size="30"/> </td></tr>
			<tr><td><span class="spanstyle1"> 제 목 : </span></td><td><input type="text" name="titleOfMail" placeholder="메일 제목을 입력해주세요"  size="70"/> </td></tr>
			<tr><td><span class="spanstyle1"> 내 용 : </span></td><td><textarea id="emailcontentsize" name="contentOfMail" cols="70" placeholder="질문을 입력해주세요"></textarea></td></tr>		
			<tr><td></td><td><div class="formbottom"> <input type="reset" value="리셋" class="btn1"/> <input type="submit" value="전송" class="btn1" onclick="fn_alt_success()"/> </div></td></tr>
		</table>
	</form></div>
</div>
	
<script>

function fn_alt_success()
{
    alert("성공적으로 전송했습니다. 답변은 4일 정도 소모됩니다."); 
   	//로그인창 연결
    location.href="../jsp/qna.jsp"
}

</script>

</body>
</html>