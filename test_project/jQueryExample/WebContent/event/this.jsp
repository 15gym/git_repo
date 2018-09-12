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
	var flag = 0;
	$(function() {
		$("#singleButton").click(function() {
			if(flag === 0) {
				$(this).html("감사합니다.");
				flag = 1;
			} else if(flag === 1) {
				$(this).html("클릭하세요.");
				flag = 0;
			}
		});
		$(".multiButton").click(function() {
			var index = $(this).index();
			var result = index + "번째 요소를 눌렀습니다.";
			$(this).html(result);
		});
	});
</script>
</head>
<body>
	<h1>this의 사용</h1>	
	<div id="input">
		<h2>단독 개체의 확인</h2>
		<div id="singleButton">클릭하세요.</div>
		
		<h2>복수 개체의 확인</h2>
		<div>
			<button class="multiButton">클릭하세요.</button>
			<button class="multiButton">클릭하세요.</button>
			<button class="multiButton">클릭하세요.</button>
			<button class="multiButton">클릭하세요.</button>
		</div>
	</div>
</body>
</html>