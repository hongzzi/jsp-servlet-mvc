<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>신고하기</title>
</head>
<script type="text/javascript" src="../js/review.js"></script>
<body>
	<td style="width: 800px; margin: auto; height: 800px; padding-top: 30px;"></td>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
		
			<tr
				style="background: url('../img/table_mid.gif') repeat-x; text-align: center;">
				<td width="5"><img src="../img/table_left.gif" width="5"
					height="30" /></td>
				<td>신고</td>
				<td width="5"><img src="../img/table_right.gif" width="5"
					height="30" /></td>
			</tr>
			
		</table>
		<form name=warningform method=post action="">
			<table style="width: 100%; height: 100%; margin-left: auto; margin-right: auto;">
				<tr>
					<td>&nbsp;</td>
					<td align="center">신고카테고리</td>
					<td><select name="warning">
							<option value="&nbsp&nbsp&nbsp"></option>
							<option value="0">개인정보 노출</option>
							<option value="1">내 창작물에 대한 저작권 위반</option>
							<option value="2">비방/비하</option>
							<option value="3">명예회손,사생활침해</option>
							<option value="4">부적절한 홍보</option>
							<option value="5">음란/청소년에게 부적합한 내용</option>
					</select></td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td align="center">제목</td>
					<td><input name="name" size="50" maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">내용</td>
					<td><textarea name="memo" cols="100" rows="30" size="100"></textarea></td>
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
					
					<td colspan="2"><input type=button value="등록" OnClick="Warning()"> 
					<input type=button value="취소" OnClick="javascript:history.back(-1)">
					<td>&nbsp;</td>
				</tr>
			</table>
			</form>
</body>
</html>