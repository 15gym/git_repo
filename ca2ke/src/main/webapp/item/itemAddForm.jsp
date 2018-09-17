<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../script/inputCheck.js"></script>
<link type="text/css" rel="stylesheet" href="../css/itemAddForm.css">


</head>
<body>
<div class="section">
	<div class="container">
	<form action="../item/itemAdd" method="post" name="itemAddForm" enctype="multipart/form-data">
	<div id="input">
		<h3 id="category">카테고리</h3>
		<select id ="category_list" name="i_category">
			<option selected>--- 선택하세요 ---</option>
			<option value="1">케이크</option>
			<option value="2">마카롱</option>
			<option value="3">커피</option>
		</select>
		<h3>아이템 이미지</h3>
		<input type="file" name="img">
		<h3>상품명</h3>
		<input type="text" name="item_name">
		<h3>아이템 가격</h3>
		<input type="text" name="item_price">
		<h3>아이템 설명</h3>
		<textarea name="item_desc" cols="100" rows="10"></textarea>
		
		<input type="submit" value="상품등록" class="myButton">
		<input type="reset" value="다시작성" class="myButton">
	</div>
	</form>
	</div>
</div>
</body>
</html>