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
		<input type="file" name="category_image"/>
		<input type="submit" value="등록">
	</form>
</body>
</html>