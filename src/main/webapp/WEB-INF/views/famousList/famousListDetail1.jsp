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
<p class="detail_boxfont1">감천 문화 마을</p>
<p class="detail_boxfont2">Gamchun Culture Village</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">10-58 Gamcheon 2(i)-dong, Saha-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 430px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/gamchun.jpg">
<img class="img_box2" src="images/gamchun2.png">
</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">부산의 마추픽추로 알려진 감천문화마을! <br>
감천문화마을은 감천항을 바라보며 옥녀봉에서 천마산 경사진 산자락 아래 계단식으로 형성된 집들이 마치 한폭의 그림처럼 형성되어 있다.<br>
사람 한명 겨우 지나가는 좁은 골목에 집들이 다닥다닥 붙어있는 감천문화마을은 몇년전만 해도 재개발을 기다리는 곳이였으나 
지금의 멋진 문화마을로 재탄생 되었다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>