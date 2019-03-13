<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Comment</title>

<link href="../css/star.css" rel="stylesheet" type="text/css">
<link href="../css/comment2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/starrank.js"></script>
<script type="text/javascript" src="../js/count.js"></script>

</head>
<body>
<div id="comment_container" class="div_size">
	<div id="comment_title"><img src="../img/commentpagetitle.png"></div>
	<div class="div_padding"> <br> - </div>
	<div id="comment_write_form" class="div_write">
		<form name="comment" action="#" method="post">
			<div class="up_comment">
				<select class="rank_dd" name="satisfication" style="width: 128px;" 만족도 평가선택">
					<option value="1" id="..zimgzstar_5.png">별5</option>
					<option value="2" id="..zimgzstar_4.png">별4</option>
					<option value="3" id="..zimgzstar_3.png">별3</option>
					<option value="4" id="..zimgzstar_2.png">별2</option>
					<option value="5" id="..zimgzstar_1.png">별1</option>
				</select>
			</div>
			<div class="comment_review_table">
				<table class="table1">
					<tbody><tr>
						<td valign="top" style="text-align: left;">
							<textarea id="comment" name="comment_content" placeholder="댓글을 입력해주세요" onclick="fn_login_check()" type="text" rows="2" cols="83"></textarea>
							<div style="float: right; padding-top: 3px; padding-right: 3px; font-size:14px;"> 현재 <span id="counter">###</span> / 140자 </div></td>
							<td valign="top">
								<input type="submit" value="등록하기" class="upload_button"></td>
					</tr></tbody>
				</table>
			</div>
		</form>
	</div>


	<div class="div_padding"> <br> padding </div>
	<hr class="style3">

	<div id="comment_show_list" class="div_list">
		<div id="comment_list_title">
			<div><img src="../img/comment.png" height="22px"></div> <div class="comment_count"> (1)</div>
		</div>
		<br>
		<div class="comment_list_table">
			<table class="table1" >
				<tr><td> <div class="header_style"> <!-- satisfication --> <!-- print name --> NAME ㅣ <!-- print data -->2017-11-27  ㅣ  <img src="../img/star_4.png"> </td></tr>
				<tr><td style="padding:10px;"> <div class="content_style"><!-- content --> cor<br> 정말 훌륭한 내용이였습니다 !</div> </td></tr>
				<tr><td><div style="float: right; padding-top: 3px; padding-right: 3px; font-size:14px;">  <button class="nhidden"> 댓글(1) </button></td>
				<tr><td>
					<div class="hide_rere_commend">
						<hr class="style6">
						<!-- if 해당댓글에 달린 리리플이 잇다면 리플 불러오기 -->
								<%-- if(이미 달린 답변이 있다면) 
								<div class="print_rereply">
									getAttribute( 달린리플수)
										if(리플수가 1개 이상이면 밑에 for 문 불러오기)
								 			for(i<달린 리플만큼 , 이름 내용, 작성일만 불러오면됨)
								 				<table>
								 					<tr>
								 						<td><span>name</span></td><td text-align="right"><span>time</span></td>
								 					</tr>
								 					<tr><td>content</td></tr>
								 				</table>
								 		<hr>
								 </div> --%>
						<div class="text_showrerecommend"> 
							<span class="rere_name">NAME</span> ㅣ 
							<span class="rere_content">내용</span>
							<span style="padding:5px"><button class="delete_button"><img src="../img/delete2.png"></button></span>
						</div>
	
												<br>
						<div class="rerecommendform" style="float:right;">
							<form class="recommend" action="#" method="post">
								<textarea class="recommend_content" placeholder="" onclick="fn_login_check()" type="text" rows="1" cols="60" style="width: 500px; height: 25px"></textarea>
								<input type="submit" value="" valign="bottom"/>
							</form>
						</div>
					</div>
				</td></tr>
			</table>
		</div>
	</div>

	<script>
		try { $(".rank_dd").msDropDown(); } catch (e) { alert(e.message); }

		$(document).ready(function(){ //DOM이 준비되고
			$('.nhidden').click(function(){ // ID가 toggleButton인 요소를 클릭하면
		var state = $('.hide_rere_commend').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
		if(state == 'none'){ // state가 none 상태일경우 
					$('.hide_rere_commend').show(); // ID가 moreMenu인 요소를 show();
		}else{ $('.hide_rere_commend').hide(); // ID가 moreMenu인 요소를 hide();			
				}
			});
		});
		
		
	    function fn_login_check()
	    {
	        alert("먼저 로그인을 해주세요."); 
	       	//로그인창 연결
	        window.open('../jsp/login.jsp','Login','width=431,height=256,status=0') 
	    }
	</script>
	
</body>
</html>