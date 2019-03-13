<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Books-MyPage-Modify</title>
<style type="text/css">
table.template {
       border-collapse: collapse;
}
</style>
</head>
<body>
	<table class="template"style="width: 100%; height: 100%; max-width:1300px; margin:auto;">
	
		<tr>
			<td colspan="2"><jsp:include page="templateTop.jsp" /></td>
		</tr>
		<tr height="80%">
			<td valign="top" style="width:191px;"><jsp:include page="templateCenterLeft.jsp" /></td>
			<td valign="top"><jsp:include page="myPage_modify.jsp"/></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="templateBottom.jsp" /></td>
		</tr>
	</table>

</body>
</html>