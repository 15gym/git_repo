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
		$(window).resize(function() {
			$("#result").html("<p>" + $(window).width() + "x" +
					$(window).height() + "</p>");
		});
	});
</script>
</head>
<body>
	<h1>창 크기 조절 이벤트</h1>	
	<div id="result"></div>
</body>
</html>