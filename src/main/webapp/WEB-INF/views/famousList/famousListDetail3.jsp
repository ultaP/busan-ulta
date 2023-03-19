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
<p class="detail_boxfont1">광안대교</p>
<p class="detail_boxfont2">Gwangan Bridge</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">113-52 Millak-dong, Suyeong-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 420px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/gwdaegyo_list.jpg">
<img class="img_box2" src="images/gwdaekyo2.png">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">총길이는 7,420m로 이가운데 중앙 900m는 현수교이다. <br>
시간대별,요일별,게절별로 구분해 10만 가지 이상의 다양한 색상을 낼수 있어 <br>
광안대교의 야경을 보기위해 많은 사람들이 오고 있으며 광안 해수욕장과 더불어 부산의 명소로 자리매김하고있다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>