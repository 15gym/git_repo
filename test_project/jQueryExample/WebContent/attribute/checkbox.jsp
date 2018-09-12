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
	$(function() {
		$("#all_check").change(function() {
			var is_check = $(this).is(":checked");
			$(".hobby_check").prop("checked", is_check);
		});
	});
</script>
</head>
<body>
	<h1>전체 선택 기능 구현하기</h1>
	<form action="" name="form1">
		<fieldset>
			<legend>취미</legend>
			<p>
				<input type="checkbox" id="all_check" value="Y"/>
				<label for="all_check">
					전체선택
				</label>
			</p>
			<p>
				<input type="checkbox" name="hobby"
					id="hobby1" class="hobby_check" value="축구" checked/>
				<label for="hobby1">축구</label>
				<input type="checkbox" name="hobby" 
					id="hobby2" class="hobby_check" value="농구"/>
				<label for="hobby2">농구</label>
				<input type="checkbox" name="hobby" 
					id="hobby3" class="hobby_check" value="야구"/>
				<label for="hobby3">야구</label>
			</p>
			<input type="submit" value="제출"/>
		</fieldset>
	</form>
</body>
</html>