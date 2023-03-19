<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div>
<table style="margin-top: 20px;">
	<tr>
		<th class="sche_list_form">번호</th>
		<th class="sche_list_form">제목</th>
		<th class="sche_list_form">등록일</th>
		<th class="sche_list_form">아이디</th>
	</tr>

	<c:forEach var="dto" items="${list}">
		<tr style="border-style: hidden;">
			<td class="sche_list_con" style="font-weight: bold;"><a href="/schedule/read.do?s_no=${dto.s_no}">
			<fmt:formatNumber type="number" maxFractionDigits="0"  value="${dto.num}"/>
			</a></td>
			<td class="sche_list_con"><a href="/schedule/read.do?s_no=${dto.s_no}">${dto.s_title}</a></td>
			<td class="sche_list_con"><a href="/schedule/read.do?s_no=${dto.s_no}">${dto.s_rdate}</a></td>
			<td class="sche_list_con"><a href="/schedule/read.do?s_no=${dto.s_no}">${dto.user_id}</a></td>
		</tr>
	</c:forEach>
</table>
</div>

<ul class="paging_no">
	<c:forEach begin="1" end="${a}"  var="pageNum" varStatus="status">
	<li class="no_sero"><a href='<c:url value="/schedule/scheduleList.do?page=${status.count}"/>'><i class="fa">${status.count}</i></a></li>
	</c:forEach>
</ul>

<div style="text-align: right; margin-right: 300px;">
	<input type="button" value="일정등록" class="list_btn"
		onclick="location.href='/place/list.do'"> 
</div>


<%@ include file="../footer.jsp"%>