<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div><p>현재 비밀번호를 입력해주세요.</p>
<input type="text" id="npw"><input onclick="tyfytfyt()"  type="button" id="newPWbtn" value="현재 비밀번호 확인">
</div>${login.user_pw} , ${"#npw"}


<script>
function tyfytfyt(){
    if(${login.user_pw} == ${'#npw'}.val()){
        alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
      
    }
    else{
    	alert("비밀번호가 일치합니다.");
      
    }
}
</script>

<%@ include file="../footer.jsp"%>