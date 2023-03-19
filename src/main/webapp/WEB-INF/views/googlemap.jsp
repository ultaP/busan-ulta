<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
   <%@ include file ="header.jsp"%>

  <script>
 function onon(){
	 
	 $('#placelist2').empty();
	 $('#placelist').empty();
	 setMapOnAll(null);
	 markers = [];
	 
	//  var cloneElements = $('#placelist').clone();
	

	 // cloneElements.appendTo('.placelist2');
	
	 
	  
  }
 
  
</script>

      
        
         <div id="left_box" class="wrap fixed-width">
          <!-- Modal -->
          <div style="position: absolute; left:250px; z-index:1;">
 		<p >
  
  <button style="padding:20px,20px;" class="list_btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
   일정리스트
  </button>
</p>

<div class="collapse" id="collapseExample">
  <div class="card card-body" style="height: 400px;">
  <!-- 일정리스트부분 -->
<div id="placelist" class="guguns" style="height:627px;">
				
				
				
				
	    	</div>
  </div>
</div>
</div>
<div >
        <input type="button"  class="list_btn2"  value="초기화" onclick="deleteMarkers()">
        <input type="button"  class="list_btn2"  value="부산지도 전체보기" onclick="initMap()">
</div>     
         <!-- 일정등록 폼 start -->
         <c:if test="${login.user_id != null }">
					
				
         
   <div ><button type="button" class="list_btn2" data-bs-toggle="modal" data-bs-target="#exampleModal"
    style="position: absolute; left: 130px; top: 50px">
 일정등록하기
</button></div>
</c:if>
   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <p class="modal-title fs-5 modal_font" id="exampleModalLabel">일정등록</p>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="onon()"></button>
      </div>
      <div class="modal-body">
      
      
        <form name='frm' method='post' action='/scheduleDetail/create.do'> 
	
	<input type="hidden" name="user_id" value='${login.user_id}'>
	
	<table class='table'>
		<tr>
			<th style="color:black;" class="modal_font2">일정 제목</th>
			<td><input type='text' name='s_title' size='20'></td>
		</tr>
		<tr>
			<th style="color:black;" class="modal_font2">일정 내용</th>
			<td><textarea name='s_content'></textarea></td>
		</tr>
		<tr>
			<th style="color:black;" class="modal_font2">출발 예정일</th>
			<td><input type='date' name='s_startdate' class="modal_font"></td>
		</tr>
		<tr>
			<th style="color:black;" class="modal_font2">종료 예정일</th>
			<td><input type="date" name="s_enddate" class="modal_font"></td>
		</tr>
		<tr>
			<th style="color:black;">장소목록</th>
			
			<td><div id="placelist2">
			</div><td>
		</tr>
	</table>

	<div class="bottom">
		 <div class="modal-footer">
        <button type="button" class="list_btn2" data-bs-dismiss="modal" onclick="onon()">Close</button>
        <input type='submit' class="list_btn" value='일정등록'> 
      </div>
		<!-- 절대경로 -->

	</div>
</form>
      </div>
     
    </div>
  </div>
</div>
 	
      	<!-- 일정등록 폼 end -->
      
      
      
      	<!-- 구군리스트 -->
         <div id="googoon" class="row full_box" style="width:256px; height:600px; z-index:100; float:left; margin-right:15px">
        	
        	 <div class="title_box">
	    		<div class="gugun_title" style="width:200px;">구/군별로 선택</div>
	    	</div>
	    	
	    	
    	    
	    	<div id="ggid" class="guguns" style="height:585px;">
	
				<c:forEach var="dto" items="${list2}" varStatus="vs">
			    	<div class="gugun_list"  > 
			    		<!--<img src="../images/카드1.jpg" class="gugunList_img">-->
			    		
			    		<div  class="gugun_name" id="sggid${vs.count}">
			    		   
			    		        <div class='googoonList' id="mydiv" onclick="googoonclick(this)" data-value="${dto.p_sigungu}" data-lat="${dto.p_lat}" data-lng="${dto.p_lng}">${dto.p_sigungu}
			    		        <img src="../images/rightGo.jpg" class="hsp_img"> </div>
			    		        
			    		  
			    		</div>			    		
			    	</div>
	 			</c:forEach>
	    	</div>
	    	
	    </div>
	    	<!-- 구군리스트 end -->
	    	
	    	
	    	
	    	<!-- 읍면동 리스트 -->
	    	 <div id="myeondong" class="row full_box" style="width:256px; height:500px;  float:left; display:none;">
         <div class="title_box">
	    		<div class="gugun_title" style="width:200px;">동별로 선택</div>
	    	</div>
 	
	    	<div id="search_box" style="width:256px; height:51px; border-bottom:solid #d6d6d6 1px; border-right:solid #d6d6d6 1px;">
	    		     <div class="searchbox_in"><img src="../images/leftGo.png" class="dong_box_img" id="gangseogu_dui" onclick="back_to_gugun()"/>
	    		     <div id="yyy"></div></div>
    	    </div>
    	    
	    	<div id="qwe" class="guguns" style="height:585px;">
	    	
				
	    	</div>
	    	</div>
	    	<!-- 읍면동 리스트 end -->
	    	
	    	<!-- 장소리스트 -->
	    	 <div id="pname" class="row left_full_box" style="width:256px; height:500px; z-index:100; float:left; margin-right:15px;  display:none;">
         <div class="title_box">
	    		<div class="gugun_title" style="width:200px;">장소명</div>
	    	</div>
 	
	    	<div id="search_box" style="width:256px; height:51px; border-bottom:solid #d6d6d6 1px;">
	    		     <div class="searchbox_in"><img src="../images/leftGo.png" class="dong_box_img" id="gangseogu_dui" onclick="back_to_dong()">
	    	    	 <div id="www"></div></div>
    	    </div>
    	    
	    	<div id="pnamelist" class="guguns" style="height:585px;">
	    	
	    	
	    	</div>
	    	
	    </div> 
	   		 <!-- 장소리스트 end -->
	    
	   
     </div><!-- left box end -->
     

     <div id="left_full_box" class="map fixed-width-left" style=" overflow: hidden;">
  	 <div id="map" style=" height: 735px;"></div>
  	 </div>

     
        
   
	        
	    
	    
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&v=weekly"  defer>
 	
   
   
   </script> 
</body>
</html>
 