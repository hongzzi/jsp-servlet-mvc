<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main page</title>
<link href="/SEProject/css/main.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="page_container">
	<div class="bestSeller">
		<div class="header"> <img src="/SEProject/img/main_page_banner1.png"> 분야 별 판매량 높은 도서 </div>
		<div class="bestseller_slider">
			<div id="menu">
				<ul>
				<li><span class="rect" onclick="">일 간</span></li>
				<li><span class="rect" onclick="">주 간</span></li>
				<li><span class="rect" onclick="">월 간</span></li>
				</ul>
			</div>
			<div id="slide">
				<div class="Slides">
					<div class="book">
						<div>
							<img src="/SEProject/img/book1.png" />
							<h3>책제목</h3>
							<p>부가설명</p>
						</div>
					</div>
					<div class="book">
						<div>
							<img src="/SEProject/img/book2.png" />
							<h3>책제목</h3>
							<p>부가설명</p>
						</div>
					</div>
					<div class="book">
						<div>
							<img src="/SEProject/img/book3.png" />
							<h3>책제목</h3>
							<p>부가설명</p>
						</div>
					</div>
					<div class="book">
						<div>
							<img src="/SEProject/img/book4.png" />
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
		</div>
	</div>
	
	
	<div class="div_padding_1"></div>
	<hr class="style9">
	<div class="div_padding_2"></div>
		
			
	<div class="today_recomm">
		<div class="header"> <img src="/SEProject/img/main_page_banner2.png"> 오늘의 추천책과 리뷰 헤더 </div>
					<div class="today_bookandreview">
						<!--테이블 출력부분  -->
						<div class="today_recommend">
							<table>
								<tr>
									<th colspan="2" height="30px" style="padding-bottom:10px;">" 오늘의 책 1"</th>
								<tr>
									<th><img src="/SEProject/img/reader.png" style="padding:10px;"/></th>
								</tr>
								<tr>
									<td style="text-align:center;">리뷰2</td>
								</tr>

							</table>
							<table>
								<tr>
									<th colspan="2" height="30px" style="padding-bottom:10px;">" 오늘의 책 2 "</th>
								<tr>
									<th><img src="/SEProject/img/reader.png" style="padding:10px;"/><br></th>
								</tr>
								<tr>
									<td style="text-align:center;">리뷰2</td>
								</tr>

							</table>
							<div style="text-align:right; color:pink; padding:20px;"> <a href="/SEProject/jsp/template_reviewList.jsp">더 많은 리뷰 보기</a> </div>
					</div>
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