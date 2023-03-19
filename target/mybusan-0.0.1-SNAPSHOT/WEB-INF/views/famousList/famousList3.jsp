<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- 애니메이션 효과 적용 초기화 -->
 <script> 
    AOS.init(); 
 </script>
 
<div data-aos="fade-up"
     data-aos-duration="2000"> 
<div style="padding-top: 100px; margin-bottom: 100px;"><p class="famous_font">부산의 관광명소를 구경해보세요</p></div><!-- 도입부 폰트 div -->
</div>

<div data-aos="fade-up"
     data-aos-duration="2000"> 
<div> <!-- 다섯째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/igidae.png');"><a href="#" onclick="location.href='/Famous4.do?a=13'"><p class="famous_font2">이기대공원</p></a></div>
<div class="col-3 list" style="background-image:url('images/younghwa.png');"><a href="#" onclick="location.href='/Famous4.do?a=14'"><p class="famous_font2">영화의전당</p></a></div>
<div class="col-3 list" style="background-image:url('images/sanghae.png');"><a href="#" onclick="location.href='/Famous4.do?a=15'"><p class="famous_font2">상해거리</p></a></div>
</div> <!-- 다섯번째줄 div 끝 -->
</div>
</div>

<div data-aos="fade-up"
     data-aos-duration="2000"> 
<div> <!-- 여섯번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/munhwapashion.png');"><a href="#" onclick="location.href='/Famous4.do?a=16'"><p class="famous_font2">광복로 문화패션거리</p></a></div>
<div class="col-3 list" style="background-image:url('images/songjung.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=17'"><p class="famous_font2">송정해수욕장</p></a></div>
<div class="col-3 list" style="background-image:url('images/dadaepo.png');"><a href="#" onclick="location.href='/Famous4.do?a=18'"><p class="famous_font2">다대포 꿈의 낙조분수</p></a></div>
</div> <!-- 여섯번째줄 div 끝 -->
</div> 
</div>

<!-- 페이징 숫자 -->
<div class="fmList_no"><p style="text-align: center;"><a href="#" onclick="location.href='/Famous.do'" class="famous_font3">1</a>
&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#" onclick="location.href='/Famous2.do'" class="famous_font3">2</a>
&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#" onclick="location.href='/Famous3.do'" class="famous_font3">3</a></p></div>


<%@ include file="../footer.jsp"%>
