<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- 애니메이션 효과 초기화 -->
 <script> 
    AOS.init(); 
 </script>
 

<div> <!-- 전체 본문 div 시작 -->
<div data-aos="fade-down"
     data-aos-duration="2000"> <!-- 애니메이션 div 시작 -->
<!-- 위 이미지 div 시작 -->
<div class="main_image" style="width:100%; background-image:url(images/introduction_sea.jpg);
	height:450px; background-repeat: no-repeat; background-size: cover;">

<div class="main_text_style4" style="background: rgba(0,0,0,0.5);"> <!-- 검은 배경화면 div시작 -->
<div data-aos="fade-up"
     data-aos-duration="2000"> <!-- 글씨 애니메이션 div 시작 -->
<div><!-- 글씨 div 시작 -->
<p class="introduction_font">당신만의 부산여행을 디자인하세요</p> 
<p class="introduction_font2">BUSANsRUN은 여행분야의 새로운 가치를 만들어가는 스타트업입니다.<br>빠르고 쉽게 나만의 여행을 계획하는 공간인 BUSANsRUN에서<br>
당신만의 여행을 그려보세요.</p>
</div><!-- 글씨 div 끝 -->
</div> <!-- 글씨 애니메이션 div 끝 -->
</div><!-- 검은 배경화면 div시작 -->
</div> <!-- 위 이미지 div 끝 -->
</div> <!-- 애니메이션 div 끝 -->

<div data-aos="fade-up"
     data-aos-duration="2000"> <!-- 문의 및 위치 정보 div 애니메이션 시작 -->
<div style="padding-left: 350px; padding-top: 50px;"> <!-- 문의 및 위치 정보 div 시작 -->
<div style="float: left;"> <!-- 문의 div -->
<p class="introduction_font3">문의</p>
<p class="introduction_font4">대표전화 : 010-8966-9069 </p>
<p class="introduction_font4">팩스 : 02-576-3322 </p>
<p class="introduction_font4">마케팅/제휴문의 : youngnee@bssrun.com </p>
<p class="introduction_font4">오류/기술문의 : parket@bssrun.com </p>
</div> <!-- 문의 div 끝 -->

<div style=" float: left; padding-left: 150px; margin-bottom: 60px;"> <!-- 위치 div 시작 -->
<p class="introduction_font3">위치</p>
<img src="/images/intro_icon.png" style="width: 20px; height: 20px; float: left;">
<p class="introduction_font5" style="float: left;">Seoul Office - 본사</p>
<p class="introduction_font4" style="clear: both; font-size: 14px;">서울특별시 강남구 테헤란로 124 삼원타워 4층 busansrun office</p>
<div style="clear: both;"><!-- 지도 이미지 div 시작 -->
<a href="https://map.naver.com/v5/search/%EA%B0%95%EB%82%A8%20%EC%82%BC%EC%9B%90%ED%83%80%EC%9B%8C?c=14140628.6856670,4508869.4706481,15,0,0,0,dh"><img src="/images/samone.png" style="width: 400px; height: 300px; background-repeat: no-repeat;"></a>
</div> <!-- 지도 이미지 div 끝 -->
</div> <!-- 위치 div 끝 -->

</div> <!-- 문의 및 위치 정보 div 끝 -->
</div>
</div> <!-- 전체 본문 div 끝 -->


<%@ include file="../footer.jsp"%>