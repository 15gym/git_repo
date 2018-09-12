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
		var index = 1;
		$("img").click(function() {
			index = (index % 3) + 1;
			$(this).attr("src", "img/" + index + ".jpg");
		});
	});
</script>
</head>
<body>
	<h1>속성제어</h1>
	<p>클릭하세요</p>
	<img src="img/1.jpg" alt="이미지" />
</body>
</html>