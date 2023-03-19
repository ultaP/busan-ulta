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
<p class="detail_boxfont1">송정해수욕장</p>
<p class="detail_boxfont2">Songjeong Beach</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">712-4 Songjeong-dong, Haeundae-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 460px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/songjung.jpg">
<img class="img_box2" src="images/sjhaesu.jpg">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">달맞이 길을 따라 해월정과 벚꽃단지를 지나다 보면 넓게 펄쳐진 바다를 접하게 된다.<br>
아직까지 자연의 아름다움을 그대로 간직한 이곳 송정해수욕장은1965년 7월 9일 개설되어 매년 6월1일부터 8월 31일까지 개장된다.<br>
백사장 길이는 1.2km,폭 30~60m,면적 54,000㎡이며 수용능력은 약 10만명이다.<br>
 송정해수욕장에서는 해마다 대보름 미역축제와 송정해변축제, 송정죽도 문화제 등 많은 행사가 열리고 있다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>