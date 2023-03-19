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

<!-- 본문 div 시작 -->
<div data-aos="fade-up"
     data-aos-duration="2000"> 
<div> <!-- 첫번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/gamchun.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=1'"><p class="famous_font2">감천문화마을</p></a></div>
<div class="col-3 list" style="background-image:url('images/haewoondae_list.png');"><a href="#" onclick="location.href='/Famous4.do?a=2'"><p class="famous_font2">해운대</p></a></div>
<div class="col-3 list" style="background-image:url('images/gwdaegyo_list.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=3'"><p class="famous_font2">광안대교</p></a></</div>
</div> <!-- 첫번째줄 div 끝 -->
</div>
</div>

<div data-aos="fade-up"
     data-aos-duration="2000"> 
<div> <!-- 두번째줄 div 시작 -->
<div class="row" style="justify-content: center;">
<div class="col-3 list" style="background-image:url('images/taejongdae.png');"><a href="#" onclick="location.href='/Famous4.do?a=4'"><p class="famous_font2">태종대</p></a></div>
<div class="col-3 list" style="background-image:url('images/mukja.jpg');"><a href="#" onclick="location.href='/Famous4.do?a=5'"><p class="famous_font2">서면먹자골목</p></a></div>
<div class="col-3 list" style="background-image:url('images/ohryukdo.png');"><a href="#" onclick="location.href='/Famous4.do?a=6'"><p class="famous_font2">오륙도 스카이워크</p></a></div>
</div> <!-- 두번째줄 div 끝 -->
</div>
</div>



<!-- 페이징 숫자 -->
<div class="fmList_no"><p style="text-align: center;"><a href="#" onclick="location.href='/Famous.do'" class="famous_font3">1</a>
&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#" onclick="location.href='/Famous2.do'" class="famous_font3">2</a>
&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#" onclick="location.href='/Famous3.do'" class="famous_font3">3</a></p></div>


<%@ include file="../footer.jsp"%>