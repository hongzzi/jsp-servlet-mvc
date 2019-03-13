<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div.wrap {
	position: relative;
	width: 664px;
	height: 564px;
	margin: auto;
	top: 50px;
}

div.box {
	width: 300px;
	height: 250px;
	border: 1px solid lightGray;
	margin: 0;
	position: relative;
	float: left;
	margin-bottom: 60px;
}

div#left {
	margin-right: 30px;
}

div#right {
	margin-left: 30px;
}

div.box img {
	width: 300px;
	height: 250px;
}

div.box:hover {
	border: 1px solid Gray;
	cursor: pointer;
}
</style>
</head>
<body>
<script type="text/javascript">
function button_event() {
		if (confirm("정말 탈퇴하시겠습니까?\n확인을 누르시면 계정이 삭제됩니다.") == true) { //확인
			location.href="/SEProject/jsp/myPage_withdraw.jsp"
		} else { //취소
			return;
		}
}
</script>
	<div class="wrap">
		<div class="box" id="left">
			<a href="/SEProject/jsp/template_myPage_modify.jsp"><img alt="modify" src="/SEProject/img/modify.jpg"></a>
		</div>
		<div class="box" id="right">
			<a href="/SEProject/jsp/template_myPage_review.jsp"><img alt="review" src="/SEProject/img/review.jpg"></a>
		</div>
		<div class="box" id="left">
			<a href="/SEProject/jsp/template_myPage_wishlist.jsp"><img alt="wishlist" src="/SEProject/img/wishlist.jpg"></a>
		</div>
		<div class="box" id="right">
			<img alt="/SEProject/jsp/delete" src="/SEProject/img/delete.jpg" onclick="button_event();">
		</div>
	</div>
</body>
</html>