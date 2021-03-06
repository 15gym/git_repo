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
		$("input[name='name']").change(function() {
			$("#result").html("이름 입력값이 변경됨");
		});
		$("input[name='hobby']").change(function() {
			$("#result").html("취미가 변경됨");
		});
		$("input[name='gender']").change(function() {
			$("#result").html("성별이 변경됨");
		});
		$("input[name='job']").change(function() {
			$("#result").html("직업이 변경됨");
		});
	});
</script>
</head>
<body>
	<h1>Change 이벤트 확인하기</h1>
	<div id="input">
			<h3>이름</h3>
			<input type="text" name="name"/>
			<h3>취미</h3>
			<label for=""><input type="checkbox" name="hobby" value="soccer">축구</label>
			<label for=""><input type="checkbox" name="hobby" value="basketball">농구</label>
			<label for=""><input type="checkbox" name="hobby" value="baseball">야구</label>
			<h3>성별</h3>
			<label for=""><input type="radio" name="gender" value="m"/>남자</label>
			<label for=""><input type="radio" name="gender" value="f"/>여자</label>
			<h3>직업</h3>
			<select name="job">
				<option>직업을 선택하세요</option>
				<option value="developer">개발자</option>
				<option value="publisher">퍼블리셔</option>
				<option value="designer">디자이너</option>
			</select>
	</div>
	<h2>결과</h2>
	<div id="result"></div>
</body>
</html>