<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#hello").html("Hello");
		alert($("#text").html());
	});
</script>
</head>
<body>
	<h1 id="hello"></h1>
	<p id="text">안녕하세요. 제이쿼리!</p>
</body>
</html>