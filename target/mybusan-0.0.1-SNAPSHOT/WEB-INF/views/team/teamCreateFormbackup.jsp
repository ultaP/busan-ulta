<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="team_no">�� ���</div>
<form name='frm' method='post' action='/team/create.do'
	enctype="multipart/form-data">
	<input type="hidden" name="user_id" value='${login.user_id}'>
	<table class='table'>
		<tr>
			<th>����</th>
			<td><input type='text' name='team_name' size='10'></td>
		</tr>
		<tr>
			<th>���Ұ�</th>
			<td><textarea name='team_intro'></textarea></td>
		</tr>
		<tr>
			<th>���ɻ�</th>
			<td><input type="text" name="team_interest" list="interestList"></td>
		</tr>
		<tr>
			<th>����</th>
			<td><input type='number' name='team_number' min='1' max='10'
				value='1'></td>
		</tr>
		<tr>
			<th>���� ������</th>
			<td><input type="date" name="team_edate" value='sysdate'></td>
		</tr>





	</table>

	<datalist id="interestList">
		<option value="����"></option>
		<option value="����"></option>
		<option value="�ο�"></option>
	</datalist>



	<div class="bottom">
		<input type='submit' value='�����'> <input type="button"
			value="�����" onclick="location.href='/team/list.do'"> <input
			type="button" value="HOME" onclick="location.href='/home.do'">
		<!-- ������ -->

	</div>
</form>

<%@ include file="../footer.jsp"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>