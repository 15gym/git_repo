<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/event.css" />
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var i = 0;
	var j = 0;
	$(function() {
		$("#input").keydown(function() {
			$("#result").html("down_count:" + ++i + "/up_count:" + j);
		});
		$("#input").keyup(function() {
			$("#result").html("down_count:" + i + "/up_count:" + ++j);
		});
	});
</script>
</head>
<body>
	<h1>Key 이벤트 확인하기</h1>
	<div id="input">
		<input type="text"/>
	</div>
	<h2>결과</h2>
	<div id="result"></div>
</body>
</html>