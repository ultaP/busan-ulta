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
<p class="detail_boxfont1">동백섬</p>
<p class="detail_boxfont2">DongBaek Island</p>
</div> <!-- 제목 글씨 div 끝 -->

<div> <!-- 지도 아이콘 div 시작 -->
<img alt="map_icon" src="images/icon_map.png" style="width: 25px; height: 25px; margin-left:20px; margin-top:5px; float: left;">
<p class="img_next_font">730-39 U 1(il)-dong, Haeundae-gu, Busan, South Korea</p>
</div> <!-- 지도 아이콘 div 끝 -->

</div> <!-- 전체 흰색박스 div 끝 -->

<div style="width: 100%; height: 430px; background-color: white;"> <!-- 본문 설명 div 시작 -->
<div> <!-- 이미지 들어갈 div 시작 -->
<img class="img_box1" src="images/dongbaeksum.jpg">
<img class="img_box2" src="images/dbsum2.jpg">

</div> <!-- 이미지 들어갈 div 끝 -->
<p class="img_bottom_font">해운대 해수욕장 서쪽에 있으며 형태가 다리미를 닮았다고 하여 다리미섬이라고도 한다.<br>
 해운대해수욕장 백사장과 연결이 되어 있으며 원래는 동백나무가 많았으나 현재는 소나무가 울창하다. <br>
 동백섬에는 요트 경기장과 여러 위락시설을 갖추고 있다.</p>
</div> <!-- 본문 설명 div 끝 -->

</div> <!-- 전체 묶는 div 끝 -->

</div> <!-- 애니메이션 효과 div 끝 -->

<%@ include file="../footer.jsp"%>