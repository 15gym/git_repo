<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/event.css"/>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#input").hover(function() {
			$("#result").html("Mouse Hover Event");
		}, function() {
			$("#result").html("");
		});
	});
</script>
</head>
<body>
	<h1>Hover 이벤트 확인하기</h1>
	<div id="input">
		Mouse Over or out
	</div>
	<h2>결과</h2>
	<div id="result"></div>
</body>
</html>