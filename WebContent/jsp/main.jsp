<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<meta charset="utf-8">
<link href="./css/mainCss.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="container">

		<div class="header">
		<img src="./img/banner1.png" />
		</div>
		
		<div id="menu">
			<ul>
			<li><span class="rect" onclick="currentMenuSlide(1)">소설</span> </li>
			<li><span class="rect" onclick="currentMenuSlide(2)">시/에세이</span></li>
			<li><span class="rect" onclick="currentMenuSlide(3)">경제/경영</span> </li>
			<li><span class="rect" onclick="currentMenuSlide(4)">자기계발</span> </li>
			<li><span class="rect" onclick="currentMenuSlide(5)">인문</span>	</li>
			</ul>
		</div>
		
		<div id="slide">
			<div class="Slides">
				<div class="book">
					<div>
						<img src="../img/1.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/1.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/1.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/1.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
			</div>
			<div class="Slides">
				<div class="book">
					<div>
						<img src="../img/2.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/2.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/2.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/2.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
			</div>
			<div class="Slides">
				<div class="book">
					<div>
						<img src="../img/4.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/4.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/4.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
				<div class="book">
					<div>
						<img src="../img/4.png" />
						<h3>책제목</h3>
						<p>부가설명</p>
					</div>
				</div>
			</div>
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> 
			<a class="next" onclick="plusSlides(1)">&#10095;</a>
			<div id="dotstyle">
				<span class="dot" onclick="currentSlide(1)"></span> 
				<span class="dot" onclick="currentSlide(2)"></span> 
				<span class="dot" onclick="currentSlide(3)"></span>
			</div>
		</div>
		
		
		<div class="Review">
			<div class="header">
				<a href="template_reviewList.jsp">
					<img src="../img/banner2.png" />
				</a>
			</div>
			<div class="recommend">
				<table border = "1">
					<tr> <th colspan="2"> " 책 소개 " </th>
					<tr> <th rowspan="4" class="tableWidth"> <img src="WebContent/img/4.PNG" /></th>
						 <th> <a href="template_reviewList.jsp">리뷰1</a> </th> </tr>
					<tr> <th> 리뷰2 </th> </tr>
					<tr> <th> 리뷰3 </th> </tr>
					<tr> <th> 리뷰4 </th> </tr>
					<tr> <th> [책제목] </th> <th>리뷰5</th></tr>
				</table>
				</div>
			<div class="recommend">
					<table border = "1">
					<tr> <th colspan="2"> " 책 소개 " </th>
					<tr> <th rowspan="4" class="tableWidth"> <img src="WebContent/img/4.png" /><br></th>
						 <th> 리뷰1 </th> </tr>
					<tr> <th> 리뷰2 </th> </tr>
					<tr> <th> 리뷰3 </th> </tr>
					<tr> <th> 리뷰4 </th> </tr>
					<tr> <th> [책제목] </th> <th>리뷰5</th></tr>
				</table>
			</div>

		</div>
			
	</div>
	
	
	
	
	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}
		
		function currentMenuSlide(n) {
			showSlides(slideIndex = n*3);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("Slides");
			var dots = document.getElementsByClassName("dot");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}
	</script>
</body>
</html>