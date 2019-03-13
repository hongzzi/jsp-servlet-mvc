<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content="width=device-width">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Book</title>
<style type="text/css">
div.findID {
position:relative; width:50%; text-align:right; float:left; border-right:1px solid darkGray;
}
div.findID:hover {
cursor:pointer;
font-weight:bold;
}
div.findPW{
position:relative; width:50%; text-align:left; float:right;
}
div.findPW:hover {
cursor:pointer;
font-weight:bold;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="/SEProject/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('div.findID').click(function(){
			window.open("findID.jsp", "아이디 찾기", "top=100, left=100,width=500, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes, location=no" ); 
		});
		
		$('div.findPW').click(function(){
			window.open("findPW.jsp", "비밀번호 찾기", "top=100, left=100,width=500, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes, location=no" ); 
		});
});
</script>
<script type="text/javascript">
   $(document).ready(function() {
      $('input[type="submit"]').click(function(){
         if($('input[name="userID"]').val()==''){
            alert('아이디를 입력해주세요');
            return false;
         }
         if($('input[name="userPassword"]').val()==''){
            alert('패스워드를 입력해주세요');
            return false;
         }
      });
   });
</script>
</head>
<body>
	<div class="container">
		<div class = "col-lg-4"></div>
		<div class = "col-lg-4">
			<div style = "padding-top : 20px;">
				<form method = "post" action = "/SEProject/Login">
				<h3 style="text-align: center;">로그인</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="  아이디" name="userID" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="  비밀번호" name="userPassword" maxlength="20">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="로그인">
			</form>
			<div class="findID">아이디 찾기&nbsp;&nbsp;</div>
			<div class="findPW">&nbsp;&nbsp;비밀번호 찾기</div>
			</div>
			<div class = "col-lg-4"></div>
			</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="/SEProject/js/bootstrap.js"></script>
</body>
</html>