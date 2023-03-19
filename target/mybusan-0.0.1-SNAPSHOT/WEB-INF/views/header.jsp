<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko" style="background-color: #f7f7f7; height: 100%;">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>bssRUN intro</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


<script src="../js/jquery-3.6.1.min.js"></script>
<script src="../js/jquery.cookie.js"></script>
<script src="../js/place.js"></script>
<script src="../js/map.js"></script>
<script src="/js/registerCheck.js" defer></script>
<script src="/js/findCheck.js" defer></script>

<!-- 스크롤 애니메이션 효과 -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"> 
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
    
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff"
	rel="stylesheet">

<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>


<!-- css 파일 모음 -->
<link href="../css/loginForm.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/registerFormCss.css" rel="stylesheet" type="text/css" />
<link href="../css/gugunList.css" rel="stylesheet" type="text/css" />
<link href="../css/Bcss.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel="stylesheet" type="text/css">
<link href="../css/team.css" rel="stylesheet" type="text/css">
<link href="../css/schedule.css" rel="stylesheet" type="text/css">
<link href="../css/famousList.css" rel="stylesheet" type="text/css">
<link href="../css/qna.css" rel="stylesheet" type="text/css">
<link href="../css/schedule2.css" rel="stylesheet" type="text/css">



<link rel="apple-touch-icon"
	href="/docs/5.2/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<style id="compiled-css" type="text/css">

/* EOS */
</style>
<style>
</style>







<script>
        var loginfail = "${loginfail}";
        if(loginfail){
            alert("로그인 실패");
        }
    </script>

<script>
    var map;
   
	
    function initMap() {
    	var busan = { lat: 35.1795543, lng: 129.0756416 };
      map = new google.maps.Map( document.getElementById('map'), {
          zoom: 11,
          center: busan
        });
     
      var mainMarker = new google.maps.Marker({
        position: busan,
        map: map,
       
        icon: {
            url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
            labelOrigin: new google.maps.Point(100, 55)
        }
      });
     
    
    
    }
    </script>
<!--
<script>
$(window).load(function() {
    $('#load').hide();
});
</script>-->

</head>
<body style="background-color: #f7f7f7; height: 100%;">
<!-- 
<div id="load">
    <img src="/images/loading.gif" alt="loading">
</div>-->

	<!-- 네비게이션 바 -->
	<header class="head_navi" style="background-color: #f7f7f7;">
		<div class="container "
			style="padding-bottom: 1%; padding-top: 1%; margin-left: 8%;">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">


				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0" id="header_jungdon">
					<li><img src="../images/부산2로고샘플.png" style="cursor: pointer; float:left;"
						onclick="location.href='/home.do'" id="logo_image"></li>
					<li class="list_font"><a href="/Famous.do">여행지</a></li>
					<li class="list_font"><a href="/place/list.do">일정 만들기</a></li>
					<li class="list_font"><a href="/schedule/scheduleList.do?page=1">일정 목록</a></li>
					<li class="list_font"><a href="#" onclick="useridcheck()">문의하기</a></li>
				</ul>
<!-- 
				<div class="search">
					<input type="text" class="s-box" placeholder="장소를 찾아보세요!">
					<img
						src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
						class="img-size2" />
				</div>
				-->

				<div class="text-end">
					<c:if test="${login.user_id == null }">
						<button type="button" class="l-box"
							onclick="location.href='/loginForm'">로그인</button>
						<button type="button" class="l-box"
							onclick="location.href='/registerForm'">회원가입</button>
					</c:if>
					<c:if test="${login.user_id != null }">
						<div class="header_font">${login.user_id}님 환영합니다</div>
						<p class="header_font2"><a href="/logout.do">Logout</a>&nbsp;&nbsp;&nbsp;
						<a href='/myPage.do'>MyPage</a></p>
					</c:if>
				</div>
			</div>
		</div>
	</header>