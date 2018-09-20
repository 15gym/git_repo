<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>										
	<form action="addCategory" method="post" enctype="multipart/form-data">
		<input type="text" name="category_name"/>
		<input type="file" name="img"/>
		<input type="submit" value="등록">
	</form>
	
	<div id="category_list">
		<table border="1">
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.i_category}</td>
					<td>${dto.category_name}</td>
					<td><img alt="이미지" src="storage/${dto.category_image}" style="width:80px; height:80px;"/></td>
					<td>${dto.category_ongoing}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>