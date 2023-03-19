<%@page import="org.yaml.snakeyaml.tokens.BlockEndToken"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="../header.jsp"%>







<body>
	<div class="title">팀 모집글 상세보기</div>
	<div class="content">
		<input type="button" value="팀 등록"
			onclick="location.href='/team/create.do'"> <input
			type="button" value="팀 목록" onclick="location.href='/team/list.do'">
	</div>

	<hr>

	<table>
		<tr>
			<th>팀번호</th>
			<th>팀명</th>
			<th>팀소개</th>
			<th>관심사</th>
			<th>정원</th>
			<th>등록일/종료일</th>
			<th>모집중/완료</th>
			<th><input type="button" value="팀가입신청"
				onclick="location.href='TMcreate.do?team_no=${dto.team_no}'">
			</th>
		</tr>


		<tr>
			<td>${dto.team_no}</td>
			<td>${dto.team_name}</td>
			<td>${dto.team_intro}</td>
			<td>${dto.team_interest}</td>
			<td>${dto.team_number}</td>
			<td>${dto.team_sdate}/ ${dto.team_edate}</td>
			<td>${dto.team_state}<c:if test="${login.user_id != null }">  ${login.user_id }</c:if>
				<c:if test="${login.user_id == dto.user_id }" var='re2'>
					<input type="button" value="모집마감"
						onclick="location.href='teammember/updatestate.do?team_no=${dto.team_no}'">
					<input type="button" value="수정"
						onclick="location.href='/team/update.do?team_no=${dto.team_no}'">
					<input type="button" value="삭제"
						onclick="location.href='/team/delete.do?team_no=${dto.team_no}'">
				</c:if>


			</td>
		</tr>



		<tr>
			<th>팀맴버 목록</th>
		</tr>
		<tr>
			<th>가입순서</th>
			<th>회원아이디</th>
			<th>가입상태</th>
			<th>가입날짜</th>
		</tr>

		<c:forEach var="dto" items="${TMlist}">
			<tr>
				<td>${dto.team_mem_no}</td>
				<td>${dto.user_id}</td>
				<td>${dto.team_mem_state}</td>
				<td>${dto.team_mem_adate}</td>
			</tr>
		</c:forEach>
	</table>

	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
		crossorigin="anonymous">

	<%@ include file="../footer.jsp"%>