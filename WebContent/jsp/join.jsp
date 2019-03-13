<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content="width=device-width">
<link rel="stylesheet" href="/SEProject/css/bootstrap.css">
<title>Book</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="/SEProject/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('input[type="submit"]').click(function(){
			if($('input.check').val()=='uncheck'){
				alert('아이디를 입려후 아이디 중복검사를 해주세요.');
				return false;
			}
			if($('input.check2').val()=='uncheck'){
				alert('아이디를 입려후 아이디 중복검사를 해주세요.');
				return false;
			}
			if($('input[name="userPassword"]').val()==""){
				alert('비밀번호를 입력 해주세요.');
				return false;
			}
			if($('input[name="userName"]').val()==""){
				alert('이름을 입력 해주세요.');
				return false;
			}
			if($('input[name="nickName"]').val()==""){
				alert('닉네임을 입력 해주세요.');
				return false;
			}
			if($('input[name="phone"]').val()==""){
				alert('휴대폰 번호를 입력 해주세요.');
				return false;
			}
			if($('input[type="checkbox"]').is(":checked") == false){
				alert('관심분야를 선택 해주세요.');
				return false;
			}
		});
		//이메일 중복확인 코드
		$('div.emailCheck').click(function() {
			var email = $('input[name="userID"]').val();
			$.ajax({
				type : 'POST',
				data : {
					userid : email
				},
				url : '/SEProject/jsp/IDCheck.jsp',
				success : function(result) {
					if (jQuery.trim(result) == '0') {
						alert('사용가능한 ID 입니다.');
						$('input[name="userID"]').css('color',"Gray");
						$('input[name="userID"]').attr("readonly",true);
						$('input[name="userPassword"]').focus();
						$('input.check').val("check");
						$('div.emailCheck').text('ID 중복검사 완료');
					} else if (jQuery.trim(result) == '1') {
						alert('이미 가입된 ID 입니다.');
						$('input[name="userID"]').val("");
						$('input[name="userID"]').focus();
					} else if (jQuery.trim(result) == '2') {
						alert('값을 입력해주세요.');
						$('input[name="userID"]').val("");
						$('input[name="userID"]').focus();
					}else if(jQuery.trim(result) == '3'){
						alert('8글자 이상 입력해 주세요');
						$('input[name="userID"]').val("");
						$('input[name="userID"]').focus();
					}
				}
			})
		});
		
		//학교 메일 인증 코드
		var str=null;
		$('div.sendEmail').click(function() {
			var click = $('div.sendEmail').text();
			var email = $('input[name="userEmail"]').val();
			console.log(click+" "+email);
			if(click=='이메일 인증받기'){
				$.ajax({
					type : 'POST',
					data : {
						userid : email
					},
					url : '/SEProject/jsp/authEmail.jsp',
					success : function(result) {
						if(jQuery.trim(result) == '') {
							alert('인증번호를 전송을 실패하였습니다.');
						}else if (jQuery.trim(result) != '') {
							if(jQuery.trim(result) == '1'){
								alert('이메일을 입력해주세요.');
							}else if(jQuery.trim(result) == '2'){
								alert('올바른 이메일을 입력해주세요.\n@를 포함한 이메일을 입력해주세요.');
							}else{
								alert('인증번호를 전송하였습니다.');
								$('input.inputAuth').focus();
								$('div.sendEmail').text("인증번호 확인");
								str=null;
								str=jQuery.trim(result);	
							}
						}
					}
				})
			}else if(click=='인증번호 확인'){
				var input = $('input.inputAuth').val();
				if(str==input){
					alert('이메일 인증에 성공하였습니다.');
					$('div.sendEmail').val("인증번호 확인");
					$('input.inputAuth').attr("readonly",true);
					$('input.inputAuth').css('color',"Gray");
					$('input.check2').val("check");
					 $('input[name="userEmail"]').attr("readonly",true);
					 $('div.sendEmail').text("이메일 인증 완료");
				}else if(str!=input){
					alert('인증번호가 올바르지 않습니다.');
					 $('input.inputAuth').val('');
				}
			}
		});
});
</script>
<style type="text/css">
div.emailCheck:hover {
	cursor:pointer;
}
div.sendEmail:hover {
	cursor:pointer;
}
</style>
</head>
<body>
	<div class="container">
		<div class = "col-lg-4"></div>
		<div class = "col-lg-4">
			<div class = "jumbotron" style = "padding-top : 20px;">
				<form method = "post" action = "/SEProject/Join">
				<h3 style="text-align: center;">회원가입</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="  아이디" name="userID" maxlength="20">
					<div class="emailCheck">ID 중복확인</div>
					<input type="hidden" class="check" value="uncheck">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="  비밀번호" name="userPassword" maxlength="20">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="  이름" name="userName" maxlength="20">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="  닉네임" name="nickName" maxlength="20">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="  휴대폰" name="phone" maxlength="20">
				</div>
				<div class="form-group" style="text-align: center;">
					<div class = "btn-group" data-toggle="buttons">
						<lable class="btn btn-primary active">
							<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
						</lable>
						<lable class="btn btn-primary">
							<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
						</lable>
					</div>
				</div>
				<div class="form-group ">
					<input type="email" class="form-control" placeholder="  이메일" name="userEmail" maxlength="20">
					<div class="sendEmail">이메일 인증받기</div>
					<input class="inputAuth" placeholder="인증번호를 입력하세요." type="text">
					<input type="hidden" class="check2" value="uncheck">
				</div>
				<div class = "form-group">
					<br><h3><lable for="add-likelist">관심분야</lable><br><br></h3>
						<h4><input type="checkbox" name="favorite" value="소설" onClick="return KeepCount()" > &nbsp;소설&nbsp;&nbsp;
							<input type="checkbox" name="favorite" value="에세이/시" onClick="return KeepCount()" > &nbsp;에세이/시&nbsp;&nbsp;
							<input type="checkbox" name="favorite" value="경영/경제" onClick="return KeepCount()" > &nbsp;경영/경제&nbsp;&nbsp;
							<input type="checkbox" name="favorite" value="자기계발" onClick="return KeepCount()" > &nbsp;자기계발&nbsp;&nbsp;
							<br><br>
							<input type="checkbox" name="favorite" value="인문사회/역사" onClick="return KeepCount()" > &nbsp;인문사회/역사&nbsp;&nbsp;
							<input type="checkbox" name="favorite" value="건강/다이어트" onClick="return KeepCount()" > &nbsp;건강/다이어트&nbsp;&nbsp;
							<input type="checkbox" name="favorite" value="외국어" onClick="return KeepCount()" > &nbsp;외국어&nbsp;&nbsp;
							<input type="checkbox" name="favorite" value="어린이" onClick="return KeepCount()" > &nbsp;어린이&nbsp;&nbsp;
						</h4>
				</div>
				<br>
				<input type="submit" class="btn btn-primary form-control" value="회원가입">
			</form>
			</div>
			<div class = "col-lg-4"></div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="/SEProject/js/bootstrap.js"></script>
</body>
</html>