<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Books-아이디 찾기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="/SEProject/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('div.findID').click(function() {
			var name = $('input[name="userName"]').val();
			var phone = $('input[name="phone"]').val();
			var email = $('input[name="userEmail"]').val();
			$.ajax({
				type : 'POST',
				data : {
					phone : phone,
					name : name,
					email : email
				},
				url : '/SEProject/jsp/findID2.jsp',
				success : function(result) {
					if (jQuery.trim(result) == '') {
						alert('입력하신 사용자 정보가 존재하지 않습니다.');
					}else if (jQuery.trim(result) != '') {
						if(jQuery.trim(result) == '1'){
							alert('사용자 정보를 모두 입력하세요.');
						}else{
							$('div.showID').text(name+' 님의 아이디는 ['+result+' ] 입니다.');	
						}
					}
				}
			})
			
		});
		
		$('div.close').click(function() {
			window.open('','_self').close();
			window.close();
		});
		
	});
</script>
<style type="text/css">
div.login_findID{
	width:390px;
	height:350px;
	position:relative;
	margin:auto;
	border:1px solid LightGray;
	margin-top:20px;
}

div.login_findID input{
	width:250px;
	height:23px;
	position:relative;
	margin-left:70px;
	margin-right:70px;
	margin-top:7px;
	margin-bottom:7px;
}
div.login_findID div.findID{
	width:52%;
	position:relative;
	float:left;
	text-align:right;
	border-right:1px solid LightGray;
}

div.login_findID div.close{
	width:47%;
	position:relative;
	float:right;
	text-align:left;
}
div.login_findID div.close:hover{
	cursor:pointer;
	font-weight:bold;
}

div.login_findID div.findID:hover{
	cursor:pointer;
	font-weight:bold;
}
</style>
</head>
<body>
<div class="login_findID">
	<h2 style="text-align:center;">아이디 찾기</h2>
	<input type="text" placeholder="이름을 입력하세요." name="userName"><br>
	<input type="text" placeholder="핸드폰번호를 입력하세요." name="phone"><br>
	<input type="text" placeholder="회원가입시 입력한 이메일을 입력하세요." name="userEmail"><br><br>
	<div class="findID">아이디 찾기&nbsp;&nbsp;</div>
	<div class="close">&nbsp;창 닫기</div><br><br>
	<div class="showID" style="text-align:center;position:relaitve;"></div>
</div>

</body>
</html>