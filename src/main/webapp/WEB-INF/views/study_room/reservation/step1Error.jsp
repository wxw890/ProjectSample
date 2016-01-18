<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>



<title>Forte | About</title>

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<meta charset="utf-8">
<link href="dcalendar.picker.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/foundation.min.css" type="text/css">
<link rel="stylesheet" href="css/superfish.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=PT+Sans+Caption|Open+Sans'
	rel='stylesheet' type='text/css'>


<script src="js/vendor/custom.modernizr.js"></script>
<script>
	Modernizr.load({
		// test if browser understands media queries
		test : Modernizr.mq('only all'),
		// if not load ie8-grid
		nope : 'css/ie8-grid-foundation-4.css'
	});
</script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js">
	
</script>
<script src="http://code.jquery.com/jquery.js" >
<script src="js/bootstrap/js/bootstrap.min.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script>
	function fnSearch(){
		var day = document.getElementById("day").value;
		location.href = "reservation.search?date="+day;
	
	}
</script>
<script>
	function fndelete(reservation_num){
		var answer = confirm("예약을 정말로 삭제하시겠습니까?");
		if(answer == true){
			location.href = "reservation.delete?reservation_num="+reservation_num;
		}
		else{
			location.href = "reservation.search"
		}
	}
</script>
<!-- 날짜를 잘못 선택했다고 알려주는 알림창 띄어줌 -->
<script type="text/javascript">
	(function (year, month, day) { //step2Error.jsp 페이지를 바로 띄어주는 javascript 언어 부분
		alert("선택하신 날짜 "+year + "년 "+ month + "월 " + day + "일은 잘못된 선택입니다. 다시 확인해주세요!");
	})('${list.get(0)}', '${list.get(1)}', '${list.get(2)}');
</script>


</head>
<body>

	<div class="call top-call-to-action">
		<div class="row">
			<div class="large-12 columns loginstyles">
				<div class="social-icons">
					<ul>
						<li><a href="#">t</a></li>
						<li><a href="#">f</a></li>
						<li><a href="#">y</a></li>
						<li><a href="#">p</a></li>
						<li><a href="#">d</a></li>
					</ul>
				</div>

				<c:if test="${name==null}">
					<span><a href="register.member">회원가입</a></span>
					<span><a href="login.member">로그인 </a></span>
				</c:if>

				<c:if test="${name!=null}">
	${name}님 환영합니다.
	
	<span><a href="logout.member">로그아웃</a></span>
					<span><a href="loginchange.member">비밀번호 변경하기</a></span>
				</c:if>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="row">
			<div class="large-12 twelve columns">
				<div class="logo">
					<a href="index.jsp"> <img src="images/logo.png" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<div class="topmenu">
		<div class="row">
			<div class="large-12 twelve columns hide-for-small">
				 <ul class="sf-menu">
				        <li><a href="index.jsp">Home</a></li>						      
				        <li><a href="reservation.study">스터디룸 예약하기</a></li>
				        <li><a>게시판</a>
       		 		<ul class="dropdown">
				        <li><a href="list.board" onclick="fnTest(${email})">공지사항</a></li>
				        <li><a href="list.board1" onclick="fnTest1(${email})">자유게시판</a></li>
				        <li><a href="list.board2" onclick="fnTest2(${email})">Q&A</a></li>
			        </ul>
			        </li>
			        <li><a href="blog.jsp">학원소개</a></li>
     		 	</ul>
			</div>
			<div class="large-12 twelve columns show-for-small">
				<form name="dropdown" action="#">
					<select name="selected" id="target" accesskey="E"
						onChange="goToNewPage(document.dropdown.selected)">
						<option value="index.jsp">Home</option>
						<option value="about.jsp">About Us</option>
						<option value="gallery.jsp">Gallery</option>
						<option value="contact.jsp">Contact Us</option>
						<option value="blog.jsp">Blog</option>
					</select>
				</form>
			</div>
		</div>
	</div>
	<c:set var="map" value="<%=new java.util.HashMap()%>" />
	
	<!-- 위쪽은 header.css 대신 사용하는 부분. 탬플릿에서 가져왔다. -->
	<c:set var="email" value="${email}"/>
	
	<div class="container" align="center" id="resview"
		style="margin-top: 50px">
		<img src="images/hta_res.jpg" alt="" />
		<!-- 
		<h1>${map.year}</h1><h1>${map.get["month"]}</h1><h1>${map.get['day']}</h1>
		<c:forEach var="map" items="${map}" varStatus="current">
			<tr>
			<td>${map.value}</td>
			<td>${map.month}</td>
			<td>${map.day}</td>
			</tr>
		</c:forEach> -->
		<tr>
		<td>가져온 날짜들 ${list.get(0)}, ${list.get(1)}, ${list.get(2)}</td>
	
		</tr>


		
		<form action="reservation2.study" method="post">
			<input type="hidden" name="member_email" />
			<!-- 사용자 계정 정보 전달을 위해 히든값으로 이메일(계정)전달 -->
	

			<p class="calendarP">
				<label><h3>예약하실 날짜를 선택해 주세요</h3></label> 
				<input type="date"	name="reservation_date" id="day" class="calendar" />
					
			</p>

			<p>
			<fieldset>
				<label for="files"><h3>사용 시간 설정</h3></label> <select
					name="reservation_time" id="files">
					<optgroup label="morning">
						<option value="08:00~10:00">08:00~10:00</option>
						<option value="10:00~12:00">10:00~12:00</option>
					</optgroup>
					<optgroup label="afternoon">
						<option value="12:00~14:00">12:00~14:00</option>
						<option value="14:00~16:00">14:00~16:00</option>
						<option value="16:00~18:00">16:00~18:00</option>
						<option value="18:00~20:00">18:00~20:00</option>
						<option value="20:00~22:00">20:00~22:00</option>
					</optgroup>
					<optgroup label="deadline"></optgroup>
				</select>
			</fieldset>
			</p>

			<div class="tableBox">
				<div class="box">
					<strong>1번 테이블</strong>
					<div class="info">좌석수 : 6인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="1" />
				</div>
				<div class="box">
					<strong>2번 테이블</strong>
					<div class="info">좌석수 : 6인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="2" />
				</div>
				<div class="box">
					<strong>3번 테이블</strong>
					<div class="info">좌석수 : 6인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="3" />
				</div>
				<div class="box">
					<strong>4번 테이블</strong>
					<div class="info">좌석수 : 6인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="4" />
				</div>
				<div class="box">
					<strong>5번 테이블</strong>
					<div class="info">좌석수 : 8인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="5" />
				</div>
				<div class="box">
					<strong>6번 테이블</strong>
					<div class="info">좌석수 : 8인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="6" />
				</div>
				<div class="box">
					<strong>7번 테이블</strong>
					<div class="info">좌석수 : 8인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="7" />
				</div>
				<div class="box">
					<strong>8번 테이블</strong>
					<div class="info">좌석수 : 8인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="8" />
				</div>
				<div class="box">
					<strong>9번 테이블</strong>
					<div class="info">좌석수 : 4인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="9" />
				</div>
				<div class="box">
					<strong>10번 테이블</strong>
					<div class="info">좌석수 : 4인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="10" />
				</div>
				<div class="box">
					<strong>11번 테이블</strong>
					<div class="info">좌석수 : 4인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="11" />
				</div>
				<div class="box">
					<strong>12번 테이블</strong>
					<div class="info">좌석수 : 4인석</div>
					<div class="marking">예약상태 : 예약중이라면 빨간색으로 예약중이라고 표시</div>
					<br /> <input type="radio" name="table_num" value="12" />
				</div>
			</div>




<!-- 현재 예약 테이블 -->			
<c:if test="${list5 != null}">			
<table border="1">
<tr>
	<tr><td>번호</td><td>아이디</td><td>예약날짜</td>
	<td>예약시간</td><td>예약테이블</td>
</tr>
<c:forEach var="dto5" items="${list5}">
	<tr>
		<td>${dto5.reservation_num}</td>
		<td>${dto5.member_email}</td>
		<td>${dto5.reservation_date}</td>
		<td>${dto5.reservation_time }</td>
		<td>${dto5.table_num}</td>
		<td><input type="button" value="삭제" onclick="fndelete(${dto5.reservation_num})"/></td>
	</tr>
</c:forEach>
</table>
</c:if>		







			<div style="margin-top: 475px">
			<button class="btn btn-danger" type="button" name="selectSearch"
					value="cancle" onclick="fnSearch()">예약조회</button>
				<button class="btn btn-primary" type="submit" name="selectDay"
					value="next">예약하기</button>

			</div>
		</form>
	</div>


	<!-- 아래쪽은 footer.css 대신 사용하는 부분. 탬플릿에서 가져왔다. -->

	<div class="footer">
		<div class="row">
			<div class="large-12 twelve columns">
				<div class="row">
					<div class="large-4 four small-12 columns">
						<div class="contact">
							<h3>contacts us</h3>
							<img src="images/contact-us.png" alt="">
							<div class="contact-icons">
								<ul>
									<li class="phone1 mobile">(342)908898</li>
									<li class="email">email@domain.com</li>
									<li class="phone2">1800809000</li>
									<li class="fax">(132)1239040</li>
								</ul>
							</div>
							<p>15 Willson Street Oakliegh, 2211, Melbourne,Victoria,
								Australia</p>
						</div>
						<div class="social-icons">
							<ul>
								<li><a href="#">t</a></li>
								<li><a href="#">f</a></li>
								<li><a href="#">y</a></li>
								<li><a href="#">p</a></li>
								<li><a href="#">d</a></li>
							</ul>
						</div>
					</div>
					<div class="large-4 four small-12 columns">
						<div class="information">
							<h3>information</h3>
							<ul>
								<li><a href="#">lorem ipsum dolor sit esmut sint
										officia</a></li>
								<li><a href="#">phasellus etres solris nobita cumque
										minus</a></li>
								<li><a href="#">lorem ipsum dolor sit esmut sint
										officia</a></li>
								<li><a href="#">phasellus etres solris nobita cumque
										minus</a></li>
								<li><a href="#">lorem ipsum dolor sit esmut sint
										officia</a></li>
								<li><a href="#">phasellus etres solris nobita cumque
										minus</a></li>
								<li><a href="#">lorem ipsum dolor sit esmut sint
										officia</a></li>
								<li><a href="#">phasellus etres solris nobita cumque
										minus</a></li>
								<li><a href="#">lorem ipsum dolor sit esmut sint
										officia</a></li>
							</ul>
						</div>
					</div>
					<div class="large-4 four small-12 columns">
						<div class="quick-contacts">
							<h3>quick contacts</h3>
							<form action="#" method="post" class="quick-contact-form">
								<table>
									<tr>
										<td><input type="text" name="name" placeholder="Name:"></td>
									</tr>
									<tr>
										<td><input type="text" name="email" placeholder="Email:"></td>
									</tr>
									<tr>
										<td><input type="text" name="subject"
											placeholder="Subject:"></td>
									</tr>
									<tr>
										<td><textarea name="message" placeholder="Message:"></textarea></td>
									</tr>
									<tr>
										<td style="text-align: right;"><input type="submit"
											name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="theme-credits">
			<p>
				&copy; 2045 All rights reserved by <a href="#">Forte.</a> Design by:
				<a href="http://topwebsitetemplates.org">topwebsitetemplates.org</a>
			</p>
		</div>
	</div>
	<div id="recaptcha_container"></div>
	<script src="js/jquery.min.js"></script>
	<script src="js/superfish.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/slider/jquery.flexslider.js"></script>
	<script src="js/slider/jquery.testimonialslider.js"></script>
	<script>
		Modernizr.load({
			test : Modernizr.placeholder,
			nope : 'js/placeholder.min.js'
		});
		function goToNewPage() {
			if (document.getElementById('target').value) {
				window.location.href = document.getElementById('target').value;
			}
		}
	</script>
	<script>
	$(document).ready(function () {
	    $('ul.sf-menu').superfish({
	        animation: {
	            height: 'show'
	        },
	        delay: 400
	    });
	    $('.flexslider').flexslider({
	        animation: "slide"
	    });
	    $('.testimonialslider').testimonialslider({
	        animation: "fade",
	        animationLoop: false,
	        itemMargin: 50,
	        itemMargin: 0,
	        maxItems: 1,
	        after: function (slider) {
	            var currentSlide = parseInt(slider.currentSlide);
	            var currentSlide = parseInt(slider.currentSlide);
	            var currentSlideHeight = $('.testimonialslider ul.slides').find('li').eq(currentSlide).css('height');
	            $('.testimonialslider ul.slides').animate({
	                height: currentSlideHeight
	            }, 100);
	        }
	    });
	});
	</script>
</body>
</html>