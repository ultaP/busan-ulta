<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

 <!-- 애니메이션 효과 초기화 -->
 <script> 
    AOS.init(); 
 </script>
 
<div data-aos="fade-right" data-aos-duration="2000"> <!-- 애니메이션 효과 -->
     
 <div> <!-- 전체 묶는 div -->
 
<div class="box_white_color"><!-- 전체 흰색박스 div 시작 -->

<div> <!-- 제목 글씨 div 시작 -->
<p class="detail_boxfont1">태종대</p>
<p class="detail_boxfont2">Taejongdae</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">산 29-3 Dongsam 2(i)-dong, Yeongdo-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 470px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/taejongdae.png">
<img class="img_box2" src="images/taejongdae2.png">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">산 영도 남쪽에 위치한 해안의 넓은 언덕이다. <br>
신라 태종 무열왕이 활쏘기를 즐겼던 곳이라 해서 태종대라는 이름이 붙었다고 전해지며 <br>
자살바위로 유명했던 신선암은 태종대의 대표적인 명소이다. <br> 
승용차 진입이 금지된 잘 가꾸어진 산책로를 따라 걷는것과 <br>
관람열차인 다누비열차를 이용해 각 정류장 마다 자유롭게 타고 내리며 태종대의 명소를 둘러보는것을 추천한다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>