<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<table style="margin-top: 20px;">

<tr>
<th class="sche_list_form2">아이디</th>
<td class="sche_list_con2">${login.user_id}</td>
</tr>
<tr>
<th class="sche_list_form">이름</th>
<td class="sche_list_con">${login.user_name}</td>
</tr>

<tr>
<th class="sche_list_form">이메일 주소</th>
<td class="sche_list_con">${login.user_email}</td>
</tr>

<tr>
<th class="sche_list_form">연락처 관리</th>
<td class="sche_list_con">${login.user_phone}</td>
</tr>

<tr>
<th class="sche_list_form">나의 일정관리</th>
<td class="sche_list_con">${login.user_id}</td>
</tr>


</table>

<div>
<p style="text-align: center;"><input class="list_btn" type="button" value="비밀번호 변경"
			onclick="location.href='/passwdChange.do'"></p>
</div>
<%@ include file="../footer.jsp"%>