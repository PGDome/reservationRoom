<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/pageStyle.css" rel="stylesheet">
<link href="css/modal.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/main.js"></script>
<script type="text/javascript">
window.onload = function () {
    (function () {
        var $radios = $('input:radio[name=selectCont]');
        if($radios.is(':checked') === false) {
            $radios.filter('[value=use]').prop('checked', true);
        }
        $('#empNewCont').hide();
       
    }());
};

$(document).ready(function(){

    $("input[name='selectCont']").on("click", function() {
          if($(this).val()=="other"){
        	  $('#empNewCont').show();
          }else{
        	  $('#empNewCont').hide();
          }
      });
    
    
    $(".close").click(function(){
		var modal = document.getElementById('myModal');
		modal.style.display = "none";
		});
	
	$(".ok").click(function(){
		var modal = document.getElementById('myModal');
		modal.style.display = "none";
		});
});



</script>
</head>
<body>
<div id="wrapper">
 <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <%@include file="sidebar.jsp" %>
    </div>
         <!-- Page Content -->
        <div id="page-content-wrapper">
        	<form name="frmReserve" id="frmReserve" action="controller" method = "Post" >
        	     <div id="content-header">
        	        <h1>Title</h1> 
        	     </div>
        	     <div class="dashboard">
        	     	<div class="bRoom">
        	     		<div style="display: inline-block;">
        	     			<div class="tile_stats"><span>Room</span></div>
        	     			<div class="detail"><c:out value="${roomName}" /></div>
        	     		</div>
        	     	</div>
        	     	
        	     	<div class="bDateTime">
        	     		<div style="display: inline-block;">
        	     			<div class="tile_stats"><span>DATE</span></div>
        	     			<div class="detail"><c:out value="${reserveDate}" /></div>
        	     		</div>
        	     		<div style="display: inline-block;margin-left: 25px;">
        	     			<i class="fa fa-angle-double-right fa-4x" aria-hidden="true"></i>
        	     		</div>
        	     		<div style="display: inline-block;">
        	     			<div class="tile_stats"><span>Time</span></div>
        	     			<div class="detail"><c:out value="${timeName}" /></div>
        	     		</div>
        	     	</div>
        	     	
        	     </div>
                <div class="content-Input">
                	<h2>information</h2>
                		
                	    	<div><label>Phone :</label><input type="text" name="empID" value="${detailEmp.getEmpID()}" readonly></div>
           					<div><label>fristname :</label><input type="text" name="empName" value="${detailEmp.getEmpName()}" ></div>
           					<div><label>Phone :</label><input type="text" name="empDepart" value="${detailEmp.getEmpDepart()}" ></div>
           					<div ><label>Phone :</label><input type="radio"  id="selectCont" name="selectCont" value="use">use</div>
           					<div><label>&nbsp;</label><input type="text" id="empCont" name="empCont" value="${detailEmp.getEmpCont()}" ></div>
           					<div ><label>&nbsp;</label><input type="radio" id="selectCont" name="selectCont" value="other">other</div>
           					<div><label>&nbsp;</label><input type="text" id="empNewCont" name="empNewCont" value="">&nbsp;</div>
           					<div><label>Phone :</label><input type="text"  name="purpose" ></div>
                			
           		</div>
           		<div style="text-align: center;">
           			<input type="submit"  onclick="submitBack('controller',this.form,'back')" value="back"  style=" width:100px">
           			<button type="button" onclick="verifyReserve('controller',this.form,'reserve')" style=" width:100px">reserve</button>
           		</div>
        		<input type="hidden" id="action" name="action" />
           		<input type="hidden" name="status_back" id="status_back" value="${status_back}" />
           		<input type="hidden" name="reserveDate" value="${reserveDate}" />
           		<input type="hidden" name="timeID" value="${timeID}" />
           		<input type="hidden" name="roomID" value="${roomID}" />
           		<input type="hidden" name="nPage" value="reservation" />
           </form>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    
    <div id="myModal" class="modal">
			  <!-- Modal content -->
			  <div class="modal-content">
			    <span class="close">&times;</span>
			    <div style="text-align: center; line-height:25px;">
			    <p id=content></p>
			    <button class="ok" type="button" id="ok" ><span>はい</span></button>
			   </div>
			  </div>
			</div>
	<!-- The Modal -->
<script>	
$('#empNewCont').keyup(function(e){
    if(e.keyCode<48||e.keyCode>57){
    	this.value = this.value.replace(/[^0-9\.]/g,'');
    }
    
});

</script>
	
</body>
</html>
