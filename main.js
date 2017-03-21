/**
 * 
 */

$(document).ready(function(){
	$('.menu li:has(ul)').click(function(e){
	  e.preventDefault();
	  if($(this).hasClass('activado')){
		  $(this).removeClass('activado');
		  $(this).children('ul').slideUp();
	  }else{
		  $('.menu li ul').slideUp();
		  $('.menu li').removeClass('activado');
		  $(this).addClass('activado');
		  $(this).children('ul').slideDown();
	  }
	});
	
});
function navSubmit(select,ele,val){
	localStorage.setItem('negative',val);
	var idForm=ele;
	document.getElementById("selectedTopic").value=select;
    document.getElementById(idForm).submit();	 
}
function navSubmit1(select,ele,action){
	localStorage.setItem('negative', select);
	var idForm=ele;
	document.getElementById("selectedTopic").value=select;
	document.getElementById(idForm).action=action;
    document.getElementById(idForm).submit();	 
}
function submitReserve(action,ele,selectedDay,timeID){
	var idForm=ele.id;
	document.getElementById("timeID").value=timeID;
	document.getElementById("DD").value=selectedDay;
	document.getElementById(idForm).action=action;
    document.getElementById(idForm).submit();	 
}

function submitSearch(action,ele,roomID){
	var idForm=ele.id;
	
	if(document.getElementById("year").value==0){
		var modal = document.getElementById('myModal');
		document.getElementById("content").innerHTML="error year";
		document.getElementById("error").value="year";
		modal.style.display = "block";
	}else if(document.getElementById("month").value==0){
		var modal = document.getElementById('myModal');
		document.getElementById("content").innerHTML="error month";
		document.getElementById("error").value="month";
		modal.style.display = "block";
	}else{
		document.getElementById("roomID").value=roomID;
		document.getElementById("action").value="search";
		document.getElementById(idForm).action=action;
	    document.getElementById(idForm).submit();
	}
		 
}
function submitBack(action,ele,val){
	var idForm=ele.id;
	document.getElementById(idForm).action=action;
	 document.getElementById("action").value=val;
    document.getElementById(idForm).submit();
}
function verifyReserve(action,ele,val){
	var idForm=ele.id;
         if(document.getElementById("selectCont").checked === false){
        	
       	   if(document.getElementById("empNewCont").value.trim() != ""){
       		
       		   if(document.getElementById("empNewCont").value.trim().length!=11){
       			var modal = document.getElementById('myModal');
        		document.getElementById("content").innerHTML="電話番号は違います。";
        		document.getElementById("error").value="input";
        		modal.style.display = "block";
       		   }else{
       			document.getElementById("empCont").value=document.getElementById("empNewCont").value;
       			var modal = document.getElementById('myModalConfrim');
           	    document.getElementById("content1").innerHTML="登録します。<br>よろしいでしょうか？";
           	    modal.style.display = "block";
       			// document.getElementById(idForm).action=action;
            	// document.getElementById("action").value=val;
                // document.getElementById(idForm).submit();
       		   }
       		   
       	   }else{
       		var modal = document.getElementById('myModal');
    		document.getElementById("content").innerHTML="電話番号は入力しませんでした。";
    		document.getElementById("error").value="input";
    		modal.style.display = "block";
       	   }
       		
         }else{
        	 var modal = document.getElementById('myModalConfrim');
        	 document.getElementById("content1").innerHTML="登録します。<br>よろしいでしょうか？";
        	 modal.style.display = "block";
        	 //document.getElementById(idForm).action=action;
        	 //document.getElementById("action").value=val;
            // document.getElementById(idForm).submit();
         }
         $(".close1").click(function(){
       		var modal = document.getElementById('myModalConfrim');
       		modal.style.display = "none";
       	});
           
           $("#confrim").click(function(){
       		var modal = document.getElementById('myModalConfrim');
      		 document.getElementById(idForm).action=action;
          	 document.getElementById("action").value=val;
               document.getElementById(idForm).submit();
       		modal.style.display = "none";
       		});
           
           $("#no1").click(function(){
        		var modal = document.getElementById('myModalConfrim');
        		modal.style.display = "none";
        	});
      
         
}

function submitBack1(action,ele,val){
	var idForm=ele;
	document.getElementById(idForm).action=action;
	 document.getElementById("action").value=val;
    document.getElementById(idForm).submit();
}
