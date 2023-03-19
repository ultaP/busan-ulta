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
<div> <!-- 세번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/yonggungsa.jpg'); "><a href="#" onclick="location.href='/Famous4.do?a=7'"><p class="famous_font2">해동 용궁사</p></a></div>
<div class="col-3 list" style="background-image:url('images/dongbaeksum.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=8'"><p class="famous_font2">동백섬</p></a></div>
<div class="col-3 list" style="background-image:url('images/bosudong.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=9'"><p class="famous_font2">보수동 책방골목</p></a></div>
</div> <!-- 세번째줄 div 끝 -->
</div>
</div>

<div data-aos="fade-up"
     data-aos-duration="2000"> 
<div> <!-- 네번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/dalmati.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=10'"><p class="famous_font2">해운대 달맞이고개</p></a></div>
<div class="col-3 list" style="background-image:url('images/yongdusan.png');"><a href="#" onclick="location.href='/Famous4.do?a=11'"><p class="famous_font2">용두산공원</p></a></div>
<div class="col-3 list" style="background-image:url('images/hwangryungsan.png');"><a href="#" onclick="location.href='/Famous4.do?a=12'"><p class="famous_font2">황령산 야경</p></a></div>
</div> <!-- 네번째줄 div 끝 -->
</div>
</div>

<!-- 페이징 숫자 -->
<div class="fmList_no"><p style="text-align: center;"><a href="#" onclick="location.href='/Famous.do'" class="famous_font3">1</a>
&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#" onclick="location.href='/Famous2.do'" class="famous_font3">2</a>
&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#" onclick="location.href='/Famous3.do'" class="famous_font3">3</a></p></div>


<%@ include file="../footer.jsp"%>
