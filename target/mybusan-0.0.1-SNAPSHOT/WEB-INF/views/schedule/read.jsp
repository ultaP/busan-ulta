<%@page import="org.yaml.snakeyaml.tokens.BlockEndToken"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="../header.jsp"%>


<body>
	
	

	<hr>

	<table style="margin-top: 20px;">
		<tr>
			
			<th class="sche_list_form2">아이디</th>
			<th class="sche_list_form2">일정 제목</th>
			<th class="sche_list_form2">내용</th>
			<th class="sche_list_form2">등록일</th>
			<th class="sche_list_form2">일정시작일</th>
			<th class="sche_list_form2">일정종료일</th>
		</tr>


		<tr>
			
			<td class="sche_list_con2">${dto.user_id}</td>
			<td class="sche_list_con2">${dto.s_title}</td>
			<td class="sche_list_con2">${dto.s_content}</td>
			<td class="sche_list_con2">${dto.s_rdate}</td>
			<td class="sche_list_con2">${dto.s_startdate}</td>
			<td class="sche_list_con2">${dto.s_enddate}
		
				<c:if test="${login.user_id == dto.user_id }">
					<input class="list_btn" type="button" value="수정"
						onclick="location.href='/schedule/update.do?s_no=${dto.s_no}'">
					<input class="list_btn" type="button" value="삭제"
						onclick="location.href='/schedule/delete.do?s_no=${dto.s_no}'">
				</c:if>
			</td>
		</tr>
		
		
			
			
			
			<c:forEach var="dtop" items="${dtop}">
			<tr>
			<th class="sche_list_form2">	장소이름	</th>
			<td  class="sche_list_con2" >${dtop.p_name}</td>
			<th class="sche_list_form2">	장소주소	</th>
			<td  class="sche_list_con2" colspan="4" >${dtop.p_address}</td>
			</tr>
		
			</c:forEach>
		

	</table>
	
	<div class="content" style="margin-top: 20px; margin-bottom: 20px;">
		<input class="list_btn" type="button" value="일정 등록"
			onclick="location.href='/schedule/create.do'">
			 <input class="list_btn" type="button" value="일정 목록" onclick="location.href='/schedule/scheduleList.do'">
	</div>

	
	<%@ include file="../footer.jsp"%>