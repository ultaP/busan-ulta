<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateForm.jsp</title>
<style>
* {
	font-family: gulim;
	font-size: 24px;
}
</style>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="title">일정 수정</div>
	<form name="frm" method="post" action="/schedule/update.do"
		enctype="multipart/form-data">
		<input type="hidden" name="s_no" value="${dto.s_no}">
		<!-- 내글번호 -->
		<table class='table'>
		
		<th>번호</th>
		<th>아이디</th>
		<th>제목</th>
		<th>내용</th>
		<th>등록일</th>
		<th>일정시작일</th>
		<th>일정종료일</th>
	</tr>

	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.s_no}</td>
			<td>${dto.user_id}</td>
			<td>${dto.s_title}</td>
			<td>${dto.s_content}</td>
			<td>${dto.s_rdate}</td>
			<td>${dto.s_startdate}</td>
			<td>${dto.s_enddate}</td>
		</tr>
			<tr>
				<th>일정 제목</th>
				<td><input type='text' name='s_title' size='20'
					value="${dto.s_title}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name='s_content'>${dto.s_content}</textarea></td>
			</tr>

			<tr>
				<th>일정시작일</th>
				<td><input type="date" name="s_startdate"
					value='${dto.s_startdate}'></td>
			</tr>

			<tr>
				<th>일정종료일</th>
				<td><input type='date' name='s_enddate'
					value='${dto.s_enddate}'></td>
			</tr>


		</table>


		<div class='bottom'>
			<input type='submit' value='일정 수정'> <input type="button"
				value="일정 목록" onclick="location.href='/schedule/scheduleList.do'"> <input
				type="button" value="HOME" onclick="location.href='/home.do'">
		</div>
	</form>
</body>
</html> --%>