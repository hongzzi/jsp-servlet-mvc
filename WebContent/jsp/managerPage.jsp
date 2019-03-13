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
			document.form.submit();
		} else { //취소
			return;
		}
	
}
</script>
	<div class="wrap">
		<div class="box" id="left">
			<a href="/SEProject/jsp/template_manager_category.jsp"><img alt="category" src="../img/category.jpg"></a>
		</div>
		<div class="box" id="right">
			<a href="/SEProject/jsp/template_manager_report.jsp"><img alt="report" src="../img/report.jpg"></a>
		</div>
		<div class="box" id="left">
			<a href="/SEProject/jsp/template_manager_wishlist.jsp"><img alt="question" src="../img/question.jpg"></a>
		</div>
		<div class="box" id="right">
			
		</div>
	</div>
</body>
</html>