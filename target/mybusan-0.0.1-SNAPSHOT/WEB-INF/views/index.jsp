<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 애니메이션 효과 초기화 -->
 <script> 
    AOS.init(); 
 </script>
  
<div data-aos="fade-down"
     data-aos-duration="3000">  
<div class="main_image" style="width:100%; background-image:url(images/gwdaegyo.jpg);
	height:730px; background-repeat: no-repeat; background-size: cover;">
<div class="main_text_style" style="background: rgba(0,0,0,0.4);">
<div data-aos="fade-up"
     data-aos-duration="3000"> 
<p class="main_Bigtext">부산과 당신을 이어줄 조그만 시작,</p>
<p class="main_Bigtext">BusansRUN과 함께 해볼까요?</p></div></div>
</div> <!-- 메인 페이지 큰 이미지 div -->
</div>

<div data-aos="fade-up"
     data-aos-duration="3000">
<div>
<div class="container-fluid mt-3">
	<p class="ment1">당신의 여행을 계획하세요</p>
</div>
</div>
</div>

<div data-aos="fade-right"
     data-aos-duration="3000">
<div class="index_main1">
<div class="main_text_style2"></div>
</div>

<div class="white_box1"  onclick="location.href='/Famous.do'"  style="cursor: pointer;">
<p class="main_index_text1">여행정보</p>
<p class="main_index_text2">부산의 관광명소, 음식점 등의 정보를 확인하세요.</p></div>
</div>

<div data-aos="fade-left"
     data-aos-duration="3000">
<div class="white_box2" >
<p class="main_index_text3">여행일정</p>
<p class="main_index_text4">지도를 보며 나만의 여행일정을 만들어보세요.</p>
</div>

<div class="index_main2"  onclick="location.href='/place/list.do'" style="cursor: pointer;">
<div class="main_text_style2"  onclick="location.href='/place/list.do'" style="cursor: pointer;"></div>
</div>
</div>

<div data-aos="fade-up"
     data-aos-duration="3000">
<div>
<div class="container-fluid mt-3" style="clear: both;">
	<p class="ment2">부산의 관광명소를 찾아보세요</p>
</div>
</div>
</div>

<!-- 본문 div 시작 -->
<div data-aos="fade-up"
     data-aos-duration="3000"> 
<div> <!-- 첫번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/gamchun.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=1'"><p class="famous_font2">감천문화마을</p></a></div>
<div class="col-3 list" style="background-image:url('images/haewoondae_list.png');"><a href="#" onclick="location.href='/Famous4.do?a=2'"><p class="famous_font2">해운대</p></a></div>
<div class="col-3 list" style="background-image:url('images/gwdaegyo_list.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=3'"><p class="famous_font2">광안대교</p></a></</div>
</div> <!-- 첫번째줄 div 끝 -->
</div>
</div>

<div data-aos="fade-up"
     data-aos-duration="3000"> 
<div> <!-- 두번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/taejongdae.png');"><a href="#" onclick="location.href='/Famous4.do?a=4'"><p class="famous_font2">태종대</p></a></div>
<div class="col-3 list" style="background-image:url('images/mukja.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=5'"><p class="famous_font2">서면먹자골목</p></a></div>
<div class="col-3 list" style="background-image:url('images/ohryukdo.png');"><a href="#" onclick="location.href='/Famous4.do?a=6'"><p class="famous_font2">오륙도 스카이워크</p></a></div>
</div> <!-- 두번째줄 div 끝 -->
</div>

<div style="width:100%; height: 100px; "> <!-- 마지막 텍스트 div -->
<a href="#" onclick="location.href='/Famous.do'"><p class="ment3">관광지 더보기</p></a>
</div> <!-- 마지막 텍스트 div 끝 -->

<div class="main_image" style="width:100%; background-image:url(images/surfing.png);
	height:450px; background-repeat: no-repeat; background-size: cover;">

<div class="main_text_style3" style="background: rgba(0,0,0,0.4);">

<div data-aos="fade-up" data-aos-duration="3000"> <!-- 애니메이션 div 시작 -->
<p class="ment4">이제 당신의 여행을 시작해보세요</p>
</div><!-- 애니메이션 div 끝 -->

</div>
</div>

</div> <!-- 애니메이션 div -->
<!--
<div style="width: 100%; height: 100px;"></div>
-->

<%@ include file="footer.jsp"%>


