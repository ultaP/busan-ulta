<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>


<div class="container">
	<div class="d-flex justify-content-center ">
		<div class="col-sm-6 col-6">
			<h3 class="loginTitle" onclick="location.href='/home.do'">BUSANsRUN</h3>

			<form class="form" method="post" action="loginProc">
				<div class="form-group my-1">
					<input type="text" class="form-control login_box" name="user_id"
						id="user_id" value="${save_id}" placeholder="아이디" required>
				</div>
				<div class="form-group my-1">
					<input type="password" class="form-control" name="user_pw"
						id="user_pw" placeholder="비밀번호" required>
				</div>
				<div class="form-group my-1">
					<input type="checkbox" class="form-check-input" name="save_id"
						id="save_id" value="SAVE"><label class="mx-1"
						for="save_id">아이디 저장</label>
				</div>
				<div class="form-group my-3 text-center">
					<input type="submit" class="login_btn" style="width: 50%"
						value="로그인">
				</div>
				<div
					class="d-flex flex-column flex-sm-row justify-content-sm-around">
					<div class="text-center login_text">
						<a href="/registerForm">회원가입</a>
					</div>
					<div class="text-center login_text">
						<a href="/findIDForm">아이디 찾기</a>
					</div>
					<div class="text-center login_text">
						<a href="/findPWForm">비밀번호 찾기</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
