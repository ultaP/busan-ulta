
 	var a;
 	var b;
 	var name=0;
 	var list=[];
 	var i=0;
    var zoom= 12;
    let markers = [];
    var markerId = 1;
    
    
   
    
	

	 function changeCenter(uu) {
		
		  i++
		 a= parseFloat(a);
		 b= parseFloat(b);
		 
		 setMapOnAll(null);
		 markers = [];
		 list = [];	
		 var lala= $(uu).data("value");
		 
		 
		 	
	        var aa = {lat : b , lng : a};

	      map.panTo(aa);
	      
	      zoom=zoom+2;
	      map.setZoom(zoom);
	      
	      var Marker = new google.maps.Marker({
	          position: aa,
	          map: map,
	           label: {
	              text: lala,
	              color: "black"
	            
	          }, 
	          icon: {
	              url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
	              labelOrigin: new google.maps.Point(40, 23)
	          }
	        });
	   markers.push(Marker);
	  
	 }  
	 
	 function addMarker() {
		 
		 if(setMapOnAll!=null){
			
			 
			 name++;
		        var aa = {lat : b , lng : a};

		      map.panTo(aa);
		      
		      
		      map.setZoom(14);
		      
		      var Marker = new google.maps.Marker({
		          position: aa,
		          map: map,
		           label: {
		              text: name,
		              color: "black"
		          }, 
		          icon: {
		              url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
		              labelOrigin: new google.maps.Point(40, 23)
		          }
		        });
		      
		     Marker.id = markerId;
	           markerId++;
		   markers.push(Marker);
		   
		  
		 }else{
			 setMapOnAll(null);
			 markers = [];
			 list = [];	
			 
				name++;
		        var aa = {lat : b , lng : a};

		      map.panTo(aa);
		      
		      zoom=zoom+2;
		      map.setZoom(zoom);
		      
		      var Marker = new google.maps.Marker({
		          position: aa,
		          map: map,
		           label: {
		              text: name,
		              color: "black"
		          }, 
		          icon: {
		              url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
		              labelOrigin: new google.maps.Point(40, 23)
		          }
		        });
		      
		      marker.id = markerId;
	           markerId++;
		   markers.push(Marker);
		
			 
		 }
		 
		
	 }  
	
	 function setMapOnAll(map) {
		  for (let i = 0; i < markers.length; i++) {
		    markers[i].setMap(map);
		  }
		}
	 
	 function deleteMarkers() {
		 setMapOnAll(null);
		 markers = [];
		 list = [];
		 initMap()
		 name=0;
		// $('form')[0].reset();
		 $("#placelist").empty();
		// $("#p_name").removeChild();
		 }
	 
	 
	   function remove(okok) {
		  
		   
	    	id = $(okok).attr('id'); ;
	        ok =  $(okok);
	        
	        for (var i = 0; i < markers.length; i++) {
	            if (markers[i].id == id) {
	                //Remove the marker from Map                  
	                markers[i].setMap(null);
	 
	                //Remove the marker from array.
	                markers.splice(i, 1);
	              
	            }
	           
	        }
	       	
	       
	        name--;
	        markerId--;
	        $(ok).remove();
	         
	         $('div').remove("#a"+id);
	          $('input').remove("#b"+id);
	        count--;
	    }
	    
	   
	
	
	
	   
	   
 function googoonclick(aaa){
	
 	let p_sigungu  = $(aaa).data("value");
 	a = $(aaa).data("lng");
 	b = $(aaa).data("lat");
 	
 	
 	
 	
 	  const bbb = document.createTextNode(p_sigungu);
	  
	  
	  
	  // 4. <body>에 1에서 만든 <div> element 붙이기
	  document.getElementById("yyy").appendChild(bbb);
 	
 //	alert(p_sigungu);
 	var cnt=1;
 	$.ajax({
			url:'/listm.do',
			type:'GET',
			async:false,
			data:{'p_sigungu':p_sigungu},
			
			
			success: function(data){
				// alert("이동완료");
				 $.each(data, function( key, value ){ 
					 
					 
						
					 if(value.p_umd == ""){
						
						return true;
						 
						
					 }else{
						 
						 const newDiv = document.createElement('div');  
						 const newImg =	document.createElement('img');  
						  
						   newDiv.setAttribute("id", "umdlist"+cnt);
						  newDiv.setAttribute("class", "umdlist");
						  newDiv.setAttribute("onclick", "umdclick(this)");
						  newDiv.setAttribute("data-value", value.p_umd);
						  newDiv.setAttribute("data-lng", value.p_lng);
						  newDiv.setAttribute("data-lat", value.p_lat);
						  
						   newImg.setAttribute("class", "hsp_img");
						   newImg.setAttribute("src", "../images/rightGo.jpg");
						   
						
						 
					
						  const newText = document.createTextNode(value.p_umd);
						  
						
						  newDiv.appendChild(newText);
						  
					
						  document.getElementById("qwe").appendChild(newDiv);
						  document.getElementById("umdlist"+cnt).appendChild(newImg);
						  
						  cnt++
						
						  
					 };
					 
						
					
					 
					 
					  
					   
					});
				document.querySelector("#myeondong").style.display="block";
		    	document.querySelector("#googoon").style.display = "none";
			   
		    	
				
			}
		})
		changeCenter(aaa);
 };
 
 
 var count;
 
 function umdclick(aa){
		//alert("힝힝");
	 	let p_umd  = $(aa).data("value");
		a = $(aa).data("lng");
	 	b = $(aa).data("lat");
	 	changeCenter(aa);
	 	
	 	count=1;
	 	
	 	 const zzz = document.createTextNode(p_umd);
	  
		  document.getElementById("www").appendChild(zzz);
	 	var cnt=1;
	 	$.ajax({
				url:'/listD.do',
				type:'GET',
				async:false,
				data:{'p_umd':p_umd},
				
				
				success: function(data){
					// alert("이동완료");
					 $.each(data, function( key, value ){ 
								
						 if(value.p_name==null){ return true;}
						 else{
							 const newDiv = document.createElement('div');
							 const newImg =	document.createElement('img');  
							  
							   newDiv.setAttribute("id", "namelist"+cnt);
							  newDiv.setAttribute("class", "namelist");
							  newDiv.setAttribute("onclick", "nameclick(this)");
							  newDiv.setAttribute("data-value", value.p_name);
							  newDiv.setAttribute("data-lng", value.p_lng);
							  newDiv.setAttribute("data-lat", value.p_lat);
							  newDiv.setAttribute("data-code", value.p_code);
							  
							    newImg.setAttribute("class", "hsp_img");
						  	    newImg.setAttribute("src", "../images/plus.png");
						
							
							  const newText = document.createTextNode(value.p_name);
							  
						
							  newDiv.appendChild(newText);
							  
						
							  document.getElementById("pnamelist").appendChild(newDiv);
							  document.getElementById("namelist"+cnt).appendChild(newImg);
						
						   	  cnt++
						 
						 }
						 
						 
							 
						   
						});
					document.querySelector("#myeondong").style.display="none";
					document.querySelector("#pname").style.display = "block";
				   
					
				}
			})
			
	 };
	 
	 
	 function nameclick(zz){
		 
		 if($("#placelist2").length){
		
		 	let name  = $(zz).data("value");
		 	
		 
	 		a = $(zz).data("lng");
		 	b = $(zz).data("lat");
		   code = $(zz).data("code");
 	
		 	
		 	  const newDiv = document.createElement('div');
			  
		 	 newDiv.setAttribute("id", count);
			  newDiv.setAttribute("class", "placename");
			  newDiv.setAttribute("data-value", name);
			  newDiv.setAttribute("data-lng", a);
			  newDiv.setAttribute("data-lat", b);
			  newDiv.setAttribute("data-code", code);
			  newDiv.setAttribute("onclick", "remove(this)");
				

			  const newText = document.createTextNode(name);
			  
			
			  newDiv.appendChild(newText);
			  
			   document.getElementById("placelist").appendChild(newDiv);
			   
			   
			  
			    const newDiv2 = document.createElement('div');
			  
		 	
			  newDiv2.setAttribute("id", "a"+count);
			  newDiv2.setAttribute("class", "placename");
			  newDiv2.setAttribute("data-value", name);
			  newDiv2.setAttribute("data-lng", a);
			  newDiv2.setAttribute("data-lat", b);
			  newDiv2.setAttribute("data-code", code);
			  newDiv2.setAttribute("onclick", "remove(this)");
				
			  
			  
			 
			  const newText2 = document.createTextNode(name);
			  
			
			  newDiv2.appendChild(newText2);
			  
			
			  document.getElementById("placelist2").appendChild(newDiv2);
			  
				
				
			  const newinput = document.createElement('input'); 
						   	  newinput.setAttribute("type", "hidden");
							  newinput.setAttribute("name", "p_code");
							  newinput.setAttribute("value", code);
							   newinput.setAttribute("id", "b"+count);
							  
						 	  document.getElementById("placelist2").appendChild(newinput);	
				
				
				count++
			  addMarker();
			  
			  }else{
				
			let name  = $(zz).data("value");
		 	
		 
	 		a = $(zz).data("lng");
		 	b = $(zz).data("lat");
		    code = $(zz).data("code");
 	
		 	
		 	  const newDiv = document.createElement('div');
			  
		 	 newDiv.setAttribute("id", count);
			  newDiv.setAttribute("class", "placename");
			  newDiv.setAttribute("data-value", name);
			  newDiv.setAttribute("data-lng", a);
			  newDiv.setAttribute("data-lat", b);
			  newDiv.setAttribute("data-code", code);
			  newDiv.setAttribute("onclick", "remove(this)");
				

			  const newText = document.createTextNode(name);
			  
			
			  newDiv.appendChild(newText);
			  
			   document.getElementById("placelist").appendChild(newDiv);
			  
				
				
			  addMarker();
			  }
		 
	 }; 
	
	 
	 
	 
	 
	    function back_to_gugun(){
	    	$("#yyy").empty();
        	$("#qwe").empty();
        	document.querySelector("#googoon").style.display="block";
        	document.querySelector("#myeondong").style.display = "none";  
        	zoom=12;
        	 map.setZoom(zoom);
        }
        
	    function back_to_dong(){
	    	$("#www").empty();
        	$("#pnamelist").empty();
        	document.querySelector("#myeondong").style.display="block";
        	document.querySelector("#pname").style.display = "none";   
        	zoom=14;
        	 map.setZoom(zoom);
        }
	    
	 

	    
	    
  