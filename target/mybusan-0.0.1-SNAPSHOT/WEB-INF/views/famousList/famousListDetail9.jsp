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
<p class="detail_boxfont1">보수동 책방골목</p>
<p class="detail_boxfont2">Bosu Book Street</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">116-151 Bosu-dong, Jung-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 400px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/bosudong.jpg">
<img class="img_box2" src="images/bosudong2.png">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">부산의 명물거리로 헌책방들이 밀집되어있다. <br>
부산 국제시장 입구 대청로사거리 건너편에서 보수동 쪽으로 나 있는 좁은 골목길에 책방들이 밀집되어 있는데 국내에 얼마 남지 않은 헌책방 골목이다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>