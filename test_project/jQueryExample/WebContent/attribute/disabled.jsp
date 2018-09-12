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
		$("#upload_file_check").change(function() {
			var is_check = $(this).is(":checked");
			alert(is_check);
			$("#file_finder").prop("disabled", !is_check);
		});
	});
</script>
</head>
<body>
	<h1>활성/비활성 구현하기</h1>
	<form action="" name="form1">
		<input type="checkbox" id="upload_file_check" value="Y"/>
		<label for="upload_file_check">파일 올리기</label>
		<input type="file" id="file_finder" disabled/>
	</form>
</body>
</html>