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
<p class="detail_boxfont1">이기대공원</p>
<p class="detail_boxfont2">Ikidae Park</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">산127-2 Yongho 3(sam)-dong, Nam-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 430px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/igidae.png">
<img class="img_box2" src="images/igidae2.png">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">장산봉 동쪽 산자락에 바다와 면하여 있는 공원이다. <br>
낚시를 즐기기에 좋은곳으로 부산에서 가장 유명한 낚시터로 꼽힌다.<br>
 또한 순환도로와 오륙도로 이어지는 산책로가 조성되어 있으며 공원 곳곳에는 각종 운동기구도 설치되어있다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>