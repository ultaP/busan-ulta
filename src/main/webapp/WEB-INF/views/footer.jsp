<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

	
<div>
	<footer class="row py-5 footer-style border-top footer_color" style="clear: both;">
		<div class="col mb-3">
			<a href="/"
				class="d-flex align-items-center mb-3 link-dark text-decoration-none">
				<svg class="bi me-2" width="40" height="32">
					<use xlink:href="#bootstrap"></use></svg>
			</a>
			<p class="text-muted copyright_style" style="margin-left:30px;">Copyright ⓒ 2022
				BUSANsRUN.com, All Rights Reserved.</p>
		</div>

		<div class="col mb-3"></div>

		<div class="col mb-3" style="padding-left:30px;">
			<h5 class="footer_title">BUSANsRUN</h5>
			<ul class="nav flex-column">
				<li class="nav-item mb-2 footer_list"><a href="#"
					class="nav-link p-0 text-muted" onclick="location.href='/Famous.do'">여행지</a></li>
				<li class="nav-item mb-2 footer_list"><a href="#"
					class="nav-link p-0 text-muted"
					onclick="location.href='/place/list.do'">일정만들기</a></li>
				<li class="nav-item mb-2 footer_list"><a href="#"
					class="nav-link p-0 text-muted" onclick="location.href='/home.do'">HOME</a></li>
			</ul>
		</div>

		<div class="col mb-3">
			<h5 class="footer_title">회사이야기</h5>
			<ul class="nav flex-column">
				<li class="nav-item mb-2 footer_list"><a href="#"
					class="nav-link p-0 text-muted" onclick="location.href='/company.do'">회사소개</a></li>
				<li class="nav-item mb-2 footer_list"><a href="#"
					class="nav-link p-0 text-muted">이용방법</a></li>
			</ul>
		</div>

		<div class="col mb-3">
			<h5 class="footer_title">고객센터</h5>
			<ul class="nav flex-column">
				<li class="nav-item mb-2 footer_list"><a href="#"
					class="nav-link p-0 text-muted"
					onclick="useridcheck()">문의하기</a></li>
			</ul>
		</div>
	</footer>
</div>




<script
	>
	
function useridcheck(){

if(!"${login.user_id}"){
	alert("로그인해주세요.");
}else{
	location.href="/qna/create.do";}
}
	

	</script>
</body>
</html>