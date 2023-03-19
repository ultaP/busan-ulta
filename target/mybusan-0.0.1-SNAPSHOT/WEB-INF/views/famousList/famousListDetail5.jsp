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
<p class="detail_boxfont1">서면 먹자 골목</p>
<p class="detail_boxfont2">Semyun Meokjagolmok Food Alley</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">157-15 Bujeon 2(i)-dong, Busanjin-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 420px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/mukja.jpg">
<img class="img_box1" src="images/mukja2.jpg">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">부산 서면의 먹자골목으로 분식 골목이라 불린다. <br>
골목 길거리를 따라 분식이 들어서 있으며 추운 겨울여행이라면 절대 그냥 지나칠 수 없다. <br>
저렴한 가격에 배부르게 먹을수 있으니 서면 먹자골목에 간다면 맛보길 추천한다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>