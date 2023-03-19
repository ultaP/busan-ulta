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
<p class="detail_boxfont1">해운대 달맞이고개</p>
<p class="detail_boxfont2">Haeundae Dalmaji-gil Road</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">산42-46 Jung 2(i)-dong, Haeundae-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 410px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/dalmati.jpg">
<img class="img_box2" src="images/dalmati2.png">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">달맞이 길은 해운대해수욕장을 지나 송정 해수욕장으로 향하는 길목에 위치해 있으며 벚나무와 송림이 울창하게 들어찬 호젓한 오솔길이다. <br>
드라이브코스로도 인기가 많으며 특히 정월대보름날 달빛과 어우러진 바다의 정취를 마음껏 느낄 수 있다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>