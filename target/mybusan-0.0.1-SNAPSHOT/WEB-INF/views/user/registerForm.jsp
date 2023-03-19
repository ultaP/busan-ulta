<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>
<div class="regiForm_backcolor">
	<div class="hoiwon_font">회원가입</div>
	<form action="/loginForm" name="registerForm" class="r_font2"
		id="registerForm" method="post" onsubmit="return registerCheck();"
		enctype="multipart/form-data">
		<table class="r_font">
			<tr>
				<td class="r_font y_font">아이디</td>
				<td class="r_font form_gojung"><input type="text" name="user_id"
					id="user_id" class="r_box y_font form_gojung" oninput="idCheck();" required></td>
			</tr>
			<tr>
				<td class="r_font"><span id="idCheckResult"></span></td>
			</tr>
			<tr>
				<td class="r_font y_font">비밀번호</td>
				<td class="r_font"><input type="password" name="user_pw"
					id="user_pw" class="r_box y_font form_gojung" oninput="pwInputCheck()" required></td>
			</tr>
			<tr>
				<td class="r_font"><span id="pwInputCheckResult"></span></td>
			</tr>
			<tr>
				<td class="r_font y_font">비밀번호 확인</td>
				<td class="r_font"><input type="password" name="user_pw_2"
					id="user_pw_2" class="r_box y_font form_gojung" oninput="pwSameCheck();"
					required></td>
			</tr>
			<tr>
				<td class="r_font"><span id="pwSameCheckResult"></span></td>
			</tr>
			<tr>
				<td class="r_font y_font">이름</td>
				<td class="r_font"><input type="text" name="user_name"
					id="user_name" class="r_box y_font form_gojung" oninput="nameCheck();" required></td>
			</tr>
			<tr>
				<td class="r_font"><span id="nameCheckResult"></span></td>
			</tr>
			<tr>
				<td class="r_font y_font">이메일</td>
				<td class="none_teduri"><input type="text" name="user_email" class="form_gojung" id="user_email"
					oninput="emailCheck();" required></td>
			</tr>
			<tr>
				<td class="r_font"><span id="emailCheckResult"></span></td>
			</tr>
			<tr>
				<td class="r_font y_font">연락처</td>
				<td class="none_teduri"><input type="text" name="user_phone" id="user_phone" class="form_gojung"
					placeholder="'-'없이 숫자만 입력해주세요" oninput="phoneCheck();" required></td>
			</tr>
			<tr>
				<td class="r_font"><span id="phoneCheckResult"></span></td>
			</tr>
			<tr>
				<td class="r_font y_font">성별</td>
				<td class="r_font"><select name="user_gender" id="user_gender"
					class="y_font">
						<option value="M">남성</option>
						<option value="W">여성</option>
						<option value="N" selected>미공개</option>
				</select></td>
			</tr>
			<tr>
				<td class="r_font y_font"
					style="margin-bottom: 10px; margin-top: 10px;">메일 수신 여부</td>
				<td class="r_font y_font"
					style="margin-bottom: 10px; margin-top: 10px;"><input
					class="y_font" style="margin-bottom: 10px; margin-top: 20px;"
					type="radio" name="user_mailox" value="Y" checked />예 <input
					class="y_font" style="margin-bottom: 10px; margin-top: 20px;"
					type="radio" name="user_mailox" value="N" />아니오</td>
			</tr>

			<tr class="r_font2 y_font"
				style="margin-bottom: 10px; margin-top: 10px;">
				<td class="r_font y_font"
					style="margin-bottom: 10px; margin-top: 10px;"><input
					type="submit" class="y_font regi_box" value="가입"></td>
				<td class="r_font y_font"
					style="margin-bottom: 10px; margin-top: 10px;"><input
					type="button" class="y_font regi_box" value="취소"
					onclick='javascript:history.back()'></td>
			</tr>

		</table>
	</form>
</div>
<%@ include file="../footer.jsp"%>
