<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="team_table">
<table>
	<tr class="team_table">
		<th class="team_table_title">팀번호</th>
		<th class="team_table_title">팀명</th>
		<th class="team_table_title">팀소개</th>
		<th class="team_table_title">관심사</th>
		<th class="team_table_title">정원</th>
		<th class="team_table_title">등록일/종료일</th>
		<th class="team_table_title">모집중/완료</th>
		<th class="team_table_title">작성자</th>
	</tr>

	<c:forEach var="dto" items="${list}">
		<tr>
			<td class="in_table_content">${dto.team_no}</td>
			<td class="in_table_content"><a href="/team/read.do?team_no=${dto.team_no}">${dto.team_name}</a></td>
			<td class="in_table_content">${dto.team_intro}</td>
			<td class="in_table_content">${dto.team_interest}</td>
			<td class="in_table_content">${dto.team_number}</td>
			<td class="in_table_content">${dto.team_sdate}/ ${dto.team_edate}</td>
			<td class="in_table_content">${dto.team_state}</td>
			<td class="in_table_content">${dto.user_id}</td>
			
		</tr>
	</c:forEach>
</table>
</div>

<div class="content team_bottom_page">
	<input type="button" class="team_btn" value="팀 등록"
		onclick="location.href='/team/create.do'"> 
</div>


<%@ include file="../footer.jsp"%>