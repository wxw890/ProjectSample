<%@page import="org.springframework.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page import="mybatis.BoardManager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List" %>
<%@page import="com.hta.board.repository.BoardDto" %>
<%@page import = "java.io.PrintWriter" %>

<html>
<head>
<title>Forte | About</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/foundation.min.css" type="text/css">
<link rel="stylesheet" href="css/superfish.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Caption|Open+Sans' rel='stylesheet' type='text/css'>
<script src="js/vendor/custom.modernizr.js"></script>
<script>
Modernizr.load({
    // test if browser understands media queries
    test: Modernizr.mq('only all'),
    // if not load ie8-grid
    nope: 'css/ie8-grid-foundation-4.css'
});
</script>

<script>
	function fnTest(email){//로그인 한 상태에서 게시판 접근할수게 해주는 소스코드
		if(email==null){
			alert("로그인을 하세요!!")
			location.href="index";
		}else if(email!=null){
			location.href="list.board";
		}
	}
</script>
<script>
	function fnTest1(email){//로그인 한 상태에서 게시판 접근할수게 해주는 소스코드
		if(email==null){
			alert("로그인을 하세요!!")
			location.href="index";
		}else if(email!=null){
			location.href="list.board1";
		}
	}
</script>
<script>
	function fnTest2(email){//로그인 한 상태에서 게시판 접근할수게 해주는 소스코드
		if(email==null){
			alert("로그인을 하세요!!")
			location.href="index";
		}else if(email!=null){
			location.href="list.board2";
		}
	}
</script>

<c:set var="email" value="${email}"/><!--로그인 컨트롤에서 session으로 넘긴 email값을 변수 email로 저장한다.-->



<!--[if lt IE 9]>
<link rel="stylesheet" href="css/ie-fixes.css">
<![endif]-->
</head>
<body>
<ul>
	<li><a href="list.board" onclick="fnTest(${email})">게시판</a></li>
	<li><a href="reservation.study">스터디룸 예약하기</a></li>
</ul>
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
	<span><a href="login.member">로그인   </a></span>
	</c:if>
	
	<c:if test="${name!=null}">
	${name}님 환영합니다.
	<span><a href="logout.member">로그아웃</a></span>
	<span><a href="loginchange.member">비밀번호 변경하기</a></span>
	</c:if> </div>
  </div>
</div>
<div class="header">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="logo"><a href="index.jsp"> <img src="images/logo.png" alt=""></a> </div>
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
        <select name="selected" id="target" accesskey="E" onChange="goToNewPage(document.dropdown.selected)">
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
<div class="slideshow">
  <div class="row">
    <div class="large-12 twelve columns">
      <section class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li><img src="images/sliderimg.jpg" alt=""></li>
            <li><img src="images/sliderimg.jpg" alt=""></li>
            <li><img src="images/sliderimg.jpg" alt=""></li>
          </ul>
        </div>
      </section>
    </div>
  </div>
</div>
<div class="intro">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="row group">
        <div class="large-3 three small-12 columns">
          <h3>lorem ipsum dolor</h3>
          <p>Porttitor ultricies penatibus nisi ultrices mattis porttitor cum, lorem scelerisque</p>
          <p><a href="#">read more</a></p>
        </div>
        <div class="large-3 three small-12 columns">
          <h3>lorem ipsum dolor</h3>
          <p>Porttitor ultricies penatibus nisi ultrices mattis porttitor cum, lorem scelerisque</p>
          <p><a href="#">read more</a></p>
        </div>
        <div class="large-3 three small-12 columns">
          <h3>lorem ipsum dolor</h3>
          <p>Porttitor ultricies penatibus nisi ultrices mattis porttitor cum, lorem scelerisque</p>
          <p><a href="#">read more</a></p>
        </div>
        <div class="large-3 three small-12 columns">
          <h3>lorem ipsum dolor</h3>
          <p>Porttitor ultricies penatibus nisi ultrices mattis porttitor cum, lorem scelerisque</p>
          <p><a href="#">read more</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="content">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="welcome-box">
        <div class="description">
          <h3>welcome <span>lorem ipsum dolor sit esmet</span></h3>
          <p>urpis scelerisque! Ultrices purus, nunc placerat pellentesque dictumst phasellus in adipiscing pulvinar? In scelerisque amet montes non cras adipiscing? Magna dis et nunc porta! Habitasse dolor magnis magna eu massa</p>
          <p>Turpis scelerisque! Ultrices purus, nunc placerat pellentesque dictumst phasellus in adipiscing pulvinar? In scelerisque amet montes non cras adipiscing? Magna dis et nunc porta! Habitasse dolor magnis magna eu massa. Mattis ultricies scelerisque odio ut adipiscing, risus turpis, pulvinar? Diam ac mus, turpis et, cum, mus rhoncus nisi placerat</p>
          <p>Turpis scelerisque! Ultrices purus, nunc placerat pellentesque dictumst phasellus in adipiscing pulvinar? In scelerisque amet montes non cras adipiscing? Magna dis et nunc porta! Habitasse dolor magnis magna eu massa. Mattis ultricies scelerisque odio ut adipiscing, risus turpis, pulvinar? Diam ac mus, turpis et, cum, mus rhoncus nisi placerat</p>
        </div>
        <div class="desc-img"> <img src="images/welcome.png" alt=""> </div>
      </div>
    </div>
  </div>
</div>
<div class="content-below">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="middle-part">
        <div class="row">
          <div class="large-4 four small-12 columns">
            <div class="services">
              <h3>our services</h3>
              <p>Amet porttitor aliquet! Ut parturient, tempor rhoncs cras ut sagittis montes. Pulvinar magna amet dictumst elementum aenean, tincidunt, penatibus amet a pellen tesque sit elit porta mus eros! Etiam lacus ultrices, est purus augue et phasellus lacus urna adipiscing! Dolor placerat dolor facilisis dolor in, augue enim habitasse a augue Sociis enimin velit dictumst nascetur natoque</p>
              <p>Amet porttitor aliquet! Ut parturient, tempor rhoncs cras ut sagittis montes. Pulvinar magna amet dictumst elementum aenean, tincidunt, penatibus amet a pellen tesque sit elit porta mus eros! Etiam lacus ultrices, est purus augue et phasellus lacus urna adipiscing! Dolor placerat dolor facilisis dolor in, augue enim habitasse a augue Sociis enimin velit dictumst nascetur natoque</p>
            </div>
            <div class="clr"></div>
            <div class="readmore-container"><a href="#" class="readmore">check all services</a></div>
          </div>
          <div class="large-4 four small-12 columns">
            <div class="company-news">
              <h3>company news</h3>
              <div class="row company-box">
                <div class="columns small-4 large-4 company-profile"><img src="images/company-news1.png" alt=""></div>
                <div class="columns small-8 large-8 company-description">
                  <p class="title">lorem ipsum dolor sit</p>
                  <p class="date">12/10/2045 | admin | 9am</p>
                  <p>porttitor tempor rhoncus pid massa amet dignissim nisi enim </p>
                </div>
              </div>
              <div class="row company-box">
                <div class="columns small-4 large-4 company-profile"><img src="images/company-news2.png" alt=""></div>
                <div class="columns small-8 large-8 company-description">
                  <p class="title">lorem ipsum dolor sit</p>
                  <p class="date">12/10/2045 | admin | 9am</p>
                  <p>porttitor tempor rhoncus pid massa amet dignissim nisi enim </p>
                </div>
              </div>
              <div class="row company-box">
                <div class="columns small-4 large-4 company-profile"><img src="images/company-news3.png" alt=""></div>
                <div class="columns small-8 large-8 company-description">
                  <p class="title">lorem ipsum dolor sit</p>
                  <p class="date">12/10/2045 | admin | 9am</p>
                  <p>porttitor tempor rhoncus pid massa amet dignissim nisi enim </p>
                </div>
              </div>
            </div>
            <div class="clr"></div>
            <div class="readmore-container2"><a href="#" class="readmore">check all news</a></div>
          </div>
          <div class="large-4 four small-12 columns">
            <div class="testimonial">
              <h3>testimonials</h3>
              <section class="slider">
                <div class="testimonialslider">
                  <ul class="slides">
                    <li> <img src="images/testimonial.png" alt="">
                      <p class="title">phasellus pulvinar magna nunc</p>
                      <p>1) Porttitor tempor rhoncus pid massa amet digniss nisi enim penatibus. Nec turpis in parturient hacn Penatibus arcu pulvinar adipiscing. Integer!</p>
                      <div class="title">
                        <p><b>ss sohana</b>, consultant, xyz</p>
                      </div>
                    </li>
                    <li> <img src="images/testimonial.png" alt="">
                      <p class="title">phasellus pulvinar magna nunc</p>
                      <p>2) Porttitor tempor rhoncus pid massa amet digniss nisi enim penatibus. Nec turpis in parturient hacn Penatibus arcu pulvinar adipiscing. Integer!</p>
                      <div class="title">
                        <p><b>ss sohana</b>, consultant, xyz</p>
                      </div>
                    </li>
                    <li> <img src="images/testimonial.png" alt="">
                      <p class="title">phasellus pulvinar magna nunc </p>
                      <p>3) Porttitor tempor rhoncus pid massa amet digniss nisi enim penatibus. Nec turpis in parturient hacn Penatibus arcu pulvinar adipiscing. Integer!</p>
                      <div class="title">
                        <p><b>ss sohana</b>, consultant, xyz</p>
                      </div>
                    </li>
                  </ul>
                </div>
              </section>
            </div>
            <div class="clr"></div>
            <div class="readmore-container3"><a href="#" class="readmore">check all testimonials</a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
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
            <p>15 Willson Street Oakliegh, 2211, Melbourne,Victoria, Australia</p>
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
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
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
                  <td><input type="text" name="subject" placeholder="Subject:"></td>
                </tr>
                <tr>
                  <td><textarea  name="message" placeholder="Message:"></textarea></td>
                </tr>
                <tr>
                  <td style="text-align:right;"><input type="submit" name="submit" value="Submit"></td>
                </tr>
              </table>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="theme-credits">
    <p>&copy; 2045 All rights reserved by <a href="#">Forte.</a> Design by: <a href="http://topwebsitetemplates.org">topwebsitetemplates.org</a></p>
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
    test: Modernizr.placeholder,
    nope: 'js/placeholder.min.js'
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
