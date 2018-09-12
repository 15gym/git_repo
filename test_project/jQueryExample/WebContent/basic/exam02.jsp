<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function hello($) {
		var h1 = $(".hello");
		h1.html("Hello jQuery");
	}
	jQuery(hello);
</script>
</head>
<body>
	<h1 class="hello"></h1>
</body>
</html>