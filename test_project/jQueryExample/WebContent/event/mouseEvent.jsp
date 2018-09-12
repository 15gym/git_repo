<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/event.css"/>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#input").mousedown(function() {
			$("#result").html("Mouse Down Event");
		});
		$("#input").mouseup(function() {
			$("#result").html("Mouse Up Event");
		});
		$("#input").mouseenter(function() {
			$("#result").html("Mouse Enter Event");
		});
		$("#input").mouseleave(function() {
			$("#result").html("");
		});
	});
</script>
</head>
<body>
	<h1>마우스 이벤트 확인하기</h1>	
	<div id="input">
		Do it in Hear!
	</div>
	<h2>결과</h2>
	<div id="result"></div>
</body>
</html>