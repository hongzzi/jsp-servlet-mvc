<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.*"%>
<jsp:useBean id="dao" class="Model.Service"/>

<%
	ArrayList<CategoryForBook> list = dao.getAllCateory();
	for(int i =0; i<list.size()-1; i++){
		dao.getAllCategory_(i+1, list.get(i));
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="//cdn.rawgit.com/hiun/NanumSquare/master/nanumsquare.css">
<style type="text/css">
div.wrap {
	position: relative;
	width: 802px;
	margin: auto;
	font-family:"나눔스퀘어";
}
table.manager_category{
	width:800px;
	margin-bottom:100px;
}
table.manager_category th.tableName{
	height:100px;
}
table.manager_category th.category1{
	width:40%;
	height:50px;
	border:1px solid white;
	background-color:snow;
}
table.manager_category th.category2{
	width:40%;
	height:50px;
	border:1px solid white;
	background-color:snow;
}
table.manager_category th.delete{
	width:20%;
	height:50px;
	border:1px solid white;
	background-color:snow;
}
table.manager_category td.content{
	height:45px;
	border:2px solid snow;
	padding-left:10px;
}
table.manager_category td.content2{
	height:45px;
	border:2px solid snow;
	padding-left:10px;
}
table.manager_category tr.smallCategory{
	display:none;
}
table.manager_category td.content2:hover{
cursor:pointer;
background-color:lightGray;
}
tr.addCate1{
	display:none;
}
tr.addCate2{
	display:none;
}
td> input{
	position:relative;
	width:90%;
	margin-left:5%;
	margin-right:5%;
}
td> select{
	position:relative;
	width:90%;
	margin-left:5%;
	margin-right:5%;
}
td#delete:hover{
	text-decoration:underline;
	font-weigt:bold;
	cursor:pointer;
}
</style>
</head>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".bigCategory").click(function(){
        	var id1 = '#';
        	var id2 = this.id;
            var submenu = $(this).nextAll(id1.concat(id2));
 			
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp('slow');
            }else{
                submenu.slideDown('slow');
            }
        });
        
        $('td.content2').hover(
        	function(){
        		$(this).text('2차 카테고리 보기');
        		$(this).css("color","white");
        	}
        	, function(){
        		$(this).text('');
        	});
        
        $('th.category1').hover(
            	function(){
            		$(this).text('1차 카테고리 추가');
            		$(this).css("color","gray");
            		$(this).css("cursor","pointer");
            	}
            	, function(){
            		$(this).text('1차 카테고리');
            		$(this).css("color","black");
            		$(this).css("cursor","none");
            	});
        $('th.category2').hover(
            	function(){
            		$(this).text('2차 카테고리 추가');
            		$(this).css("color","gray");
            		$(this).css("cursor","pointer");
            	}
            	, function(){
            		$(this).text('2차 카테고리');
            		$(this).css("color","black");
            		$(this).css("cursor","none");
            	});
        
        $("th.category1").click(function(){
            if( $('tr.addCate1').is(":visible") ){
            	$('tr.addCate1').slideUp('slow');
            }else{
            	$('tr.addCate1').slideDown('slow');
            }
        });
        $("th.category2").click(function(){
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( $('tr.addCate2').is(":visible") ){
            	$('tr.addCate2').slideUp('slow');
            }else{
            	$('tr.addCate2').slideDown('slow');
            }
        });
    });
</script>
<body>
	<div class="wrap">
		<table class="manager_category">
		<tr>
			<th class="tableName" colspan="3"><h2>카테고리 관리</h2></th>
		</tr>
		<tr>
			<td colspan="3" style="text-align:center; font-size:12px;">
			표의 상단 1차 카테고리, 2차 카테고리를 누르시면 카테고리를 추가하실 수 있습니다.<br>
			1차 카테고리의 오른쪽 빈칸을 누르면 1차 카테고리에 속해있는 2차 카테고리를 보실 수 있습니다.<br>
			오른쪽 삭제 버튼으로 카테고리를 삭제할 수 있습니다.<br>
			1차 카테고리 삭제 시 속해있는 2차 카테고리는 자동으로 삭제 됩니다.<br>
			 <br>
			</td>
		</tr>
		<tr>
			<th class="category1">1차 카테고리</th>
			<th class="category2">2차 카테고리</th>
			<th class="delete">삭제/추가</th>
		</tr>
		<tr class="addCate1">
			<td class="content" style="padding-left:0;"><input type="text"></input></td>
			<td class="content"></td>
			<td class="content" id="delete" style="text-align:center;padding:0;">추가</td>
		</tr>
		<tr class="addCate2">
			<td class="content"style="padding-left:0;"><select>
			<option>------1차 카테고리를 선택해주세요------</option>
			<%
			for(int i=0; i<list.size()-1; i++){
				%>
				<option value="<%=list.get(i).getTitle()%>"><%=list.get(i).getTitle()%></option>
				<%
			}
			%>
			</select></td>
			<td class="content"  style="padding-left:0;"><input type="text"></input></td>
			<td class="content" id="delete" style="text-align:center;padding:0;">추가</td>
		</tr>
		<%
		for(int i=0; i<list.size()-1; i++){
			%>
			<tr class="bigCategory" id="bigCategory<%=i%>">
				<td class="content" style="text-align:center;padding:0;"><%=list.get(i).getTitle() %></td>
				<td class="content2" id="bigCategory<%=i%>" style="text-align:center;padding:0;"></td>
				<td class="content" id="delete" style="text-align:center;padding:0;">삭제</td>
			</tr>
			<%
			for(int j=0; j<list.get(i).getCtitle().length; j++){
				%>
				<tr class="smallCategory" id="bigCategory<%=i%>">
					<td class="content" style="text-align:center;padding:0;"></td>
					<td class="content" style="text-align:center;padding:0;"><%=list.get(i).getCtitle()[j]%></td>
					<td class="content" id="delete" style="text-align:center;padding:0;">삭제</td>
				</tr>
				<%
			}
		}
		%>
		</table>
	</div>

</body>
</html>