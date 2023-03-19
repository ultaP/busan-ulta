<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
   <%@ include file ="WEB-INF/views/header.jsp"%>

 
   <script type="text/javascript">
    var duration = 300;
    var $side = $('#sidebar');

    $('#menu-button-line-wrapper').click(function(){
        $('.line').removeClass('init');
        $('#line-top').toggleClass('line-top').toggleClass('top-reverse');
        $('#line-mid').toggleClass('line-mid').toggleClass('mid-reverse');
        $('#line-bot').toggleClass('line-bot').toggleClass('bot-reverse');

            $side.toggleClass('open');

            if($side.hasClass('open')) {
                $side.stop(true).animate({left:'0px'}, duration);
                $('#menu-button').animate({left:'300px'},duration);
            }else{
                $side.stop(true).animate({left:'-300px'}, duration);
                $('#menu-button').animate({left:'0px'},duration);
            };
    });
    </script>
 
 <div id="header">
            <div id="menu-button">hjgv
                <div id="menu-button-line-wrapper">hghg
                <div id="line-top" class="line init top-reverse">bvgh</div>
                <div id="line-mid" class="line init mid-reverse"></div>
                <div id="line-bot" class="line init bot-reverse"></div>
                </div>
            </div>
        </div>

 
      
        
         <div id="left_box" class="wrap fixed-width">
          <!-- Modal -->
 
        <input type="button"  class="btn btn-secondary"  value="초기화" onclick="deleteMarkers()">
         
         <!-- 일정등록 폼 start -->
         <c:if test="${login.user_id != null }">
					
				
         
   <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
 일정등록하기
</button>
   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">일정등록</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
      
        <form name='frm' method='post' action='/scheduleDetail/create.do'>
	
	<input type="hidden" name="user_id" value='${login.user_id}'>
	
	<table class='table'>
		<tr>
			<th style="color:black;">일정 제목</th>
			<td><input type='text' name='s_title' size='20'></td>
		</tr>
		<tr>
			<th style="color:black;">일정 내용</th>
			<td><textarea name='s_content'></textarea></td>
		</tr>
		<tr>
			<th style="color:black;">출발 예정일</th>
			<td><input type='date' name='s_startdate' value='sysdate'></td>
		</tr>
		<tr>
			<th style="color:black;">종료 예정일</th>
			<td><input type="date" name="s_enddate" value='sysdate'></td>
		</tr>
	</table>

	<div class="bottom">
		 <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <input type='submit' class="btn btn-primary" value='일정등록'> 
      </div>
		<!-- 절대경로 -->

	</div>
</form>
      </div>
     
    </div>
  </div>
</div>
 	</c:if>
      	<!-- 일정등록 폼 end -->
      
      
      
      	<!-- 구군리스트 -->
         <div id="googoon" class="row full_box" style="width:256px; height:600px; z-index:100; float:left; margin-right:15px">
        	
        	 <div class="title_box">
	    		<div class="gugun_title" style="width:200px;">구/군별로 선택</div>
	    	</div>
	    	
	    	<div id="search_box" style="width:256px; height:51px; border-bottom:solid #d6d6d6 1px; 
	    	border-right:solid #d6d6d6 1px;">
		    	        <input type="button"  class="btn btn-secondary"  value="부산지도 전체보기" onclick="initMap()">
		    	
    	    </div>
    	    
	    	<div id="ggid" class="guguns" style="height:600px;">
	
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
	    	 <div id="myeondong" class="row full_box" style="width:256px; height:600px;  float:left; display:none;">
         <div class="title_box">
	    		<div class="gugun_title" style="width:200px;">동별로 선택</div>
	    	</div>
 	
	    	<div id="search_box" style="width:256px; height:51px; border-bottom:solid #d6d6d6 1px; border-right:solid #d6d6d6 1px;">
	    		     <div class="searchbox_in"><img src="../images/leftGo.png" class="dong_box_img" id="gangseogu_dui" onclick="back_to_gugun()"/>
	    		     <div id="yyy"></div></div>
    	    </div>
    	    
	    	<div id="qwe" class="guguns" style="height:600px;">
	    	
				
	    	</div>
	    	</div>
	    	<!-- 읍면동 리스트 end -->
	    	
	    	
	    	 <div id="pname" class="row left_full_box" style="width:256px; height:600px; z-index:100; float:left; margin-right:15px;  display:none;">
         <div class="title_box">
	    		<div class="gugun_title" style="width:200px;">장소명</div>
	    	</div>
 	
	    	<div id="search_box" style="width:256px; height:51px; border-bottom:solid #d6d6d6 1px;">
	    		     <div class="searchbox_in"><img src="../images/leftGo.png" class="dong_box_img" id="gangseogu_dui" onclick="back_to_dong()">
	    	    	 <div id="www"></div></div>
    	    </div>
    	    
	    	<div id="pnamelist" class="guguns" style="height:627px;">
	    	
	    	
	    	</div>
	    	<div id="placelist" class="guguns" style="height:627px;">
				
				
				
				
	    	</div>
	    </div> 
	    
	    
	   
     </div>
     
     
     <div id="left_full_box" class="map fixed-width-left" style=" overflow: hidden;">
  	 <div id="map" style="  height: 752px;"></div>
  	 </div>
  	 

     
        
   
	        
	    
	    
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&v=weekly"  defer>
 	
   
   
   </script> 
</body>
</html>
 