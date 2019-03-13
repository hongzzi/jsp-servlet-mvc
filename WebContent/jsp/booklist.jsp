<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="../css/book.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="booklistcontainer">
		<div class="listheader">
		<span> "검색어" (검색결과갯수)</span>
		<hr class="style4">
		</div>
		<div class="booklist">
			<table class="infoprint">
				<!-- 	<c:forEach items="${list}" var="b"> -->
				<tr>
					<td rowspan="5" width="15%">img src=b.image</td>
					<td colspan="3" height="15%"><span class="spanstyle2">b.title</span></td>
				</tr>
				<tr>
					<td height="15%">
						<span class="spanstyle">b.author</span>
						<span class="spanstyle">b.price</span>
						<span class="spanstyle">b.publisher</span>
					</td>
				</tr>
				<tr>
					<td colspan="3" width="85%">b.description<br>내용<br>내용</b></td>
				</tr>
				<!-- 	</c:forEach> -->
			</table>
		</div>
	</div>
	
</body>
</html>