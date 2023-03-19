<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="findID_box">
	<form action="/findIDProc" method="post">
		아이디 : <input type="text" name="user_id" id="user_id" required>
		이메일 : <input type="text" name="user_email" id="user_email" required>
		<input type="button" value="인증코드 발송" onclick="SendVericode();">
		인증코드 : <input type="text" name="veri_code" id="veri_code" readonly>

		<input type="submit" value="찾기"> <input type="button"
			value="취소" onclick="location.href='/loginForm'">
	</form>
</div>
<%@ include file="../footer.jsp"%>