<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="title">팀 삭제</div>
<form method="post" action="/team/delete.do">
	<input type="hidden" name="team_no" value="${requestScope.team_no}">
	<div class="content">
		<p>팀게시글을 삭제하시겠습니까?</p>
		<p>※ 팀 관련 내용도 삭제됩니다</p>
	</div>
	<div class='bottom'>
		<input type='submit' value='삭제진행'> <input type='button'
			value='HOME' onclick="location.href='/home.do'">
	</div>
</form>

<%@ include file="../footer.jsp"%>