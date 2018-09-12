<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function hello() {
		var h1 = document.getElementById("hello");
		h1.innerHTML = "Hello jQuery!!";
	}
	// Classic Javascript의 onload 이벤트와 같은 효과
	// jQuery() 함수에게 파라미터로 사용하려는 함수명을 전달하는 것으로
	// onload 처리가 완료된다.
	jQuery(hello);
/*
	window.onload = function() {
		hello();
	}
*/
</script>
</head>
<body>
	<h1 id="hello"></h1>
</body>
</html>