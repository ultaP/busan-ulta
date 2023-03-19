<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>schedule detail</title>
<!-- javascript -->

</head>
<body>
	<form name='frm' method='post' action=''>
	<input type="hidden" name="team_interest" value='sysdate'>
	<input type="hidden" name="user_id" value='${login.user_id}'>
	
	<table class='table'>
		<tr>
			<th>일정 제목</th>
			<td><input type='text' name='s_title' size='20'></td>
		</tr>
		<tr>
			<th>일정 내용</th>
			<td><textarea name='s_content' style="width:20px; height: 20px;"></textarea></td>
		</tr>
		<tr>
			<th>출발 예정일</th>
			<td><input type='date' name='s_startdate' value='sysdate'></td>
		</tr>
		<tr>
			<th>종료 예정일</th>
			<td><input type="date" name="s_enddate" value='sysdate'></td>
		</tr>
	</table>

	



	<div class="bottom">
		<input type='submit' value='팀등록'> <input type="button"
			value="팀목록" onclick="location.href='/team/list.do'"> <input
			type="button" value="HOME" onclick="location.href='/home.do'">
		<!-- 절대경로 -->

	</div>
</form>
</body>
</html>