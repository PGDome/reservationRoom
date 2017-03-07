<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/pageStyle.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="wrapper">
 <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <%@include file="sidebar.jsp" %>
    </div>
         <!-- Page Content -->
        <div id="page-content-wrapper">
        <c:set var="items"  value="${listEmp}"/>
            <div><input type="text" name="roomName" value="${roomName}"></div>
            <div><input type="text" name="timeName" value="${timeName}"></div>
           <div><input type="text" name="reserveDate"value="${reserveDate}" ></div>
           <!-- <div><input type="text" name="empID" value="${items.getEmpID()}" ></div>
           <div><input type="text" name="empName" value="${items.getEmpName()}" ></div>
           <div><input type="text" name="empDepart" value="${items.getEmpDepart()}" ></div>
           <div><input type="text" name="empCont" value="${items.getEmpCont()}" ></div>-->
           <div><input type="text" name="purpose" ></div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
