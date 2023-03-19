<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="title">일정 삭제</div>
<form method="post" action="/schedule/delete.do">
	<input type="hidden" name="s_no" value="${requestScope.s_no}">
	<div class="content">
		<p>일정을 삭제하시겠습니까?</p>
		<p>※ 일정 관련 내용이 삭제됩니다.</p>
	</div>
	<div class='bottom'>
		<input type='submit' value='삭제'> <input type='button'
			value='일정리스트' onclick="location.href='/schedule/scheduleList.do?page=1'">
	</div>
</form>

<%@ include file="../footer.jsp"%>