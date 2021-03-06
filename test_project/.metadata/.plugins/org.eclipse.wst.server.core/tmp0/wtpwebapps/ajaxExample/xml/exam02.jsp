<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/common.css" />
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#mybtn").click(function() {
			$.ajax({
				url: "ajax/xml/xml04.xml",
				type: "get",
				dataType: "xml",
				cache: false,
				timeout: 30000,
				success: function(xml) {
					
					$(xml).find("subject").each(function() {

						var title = $(this).find("title").text();
						var time = $(this).find("time").text();
						var teacher = $(this).find("teacher").text();

						var div = $("<div>");
						var p1 = $("<p>").html(title);
						var p2 = $("<p>").html(time);
						var p3 = $("<p>").html(teacher);
					
						div.append(p1).append(p2).append(p3);
						
						$("#result").append(div);
						$("#result").append("<hr/>");
					});
				},
				error: function(xhr, textStatus, errorThrown) {
					$("div").html("<div>" + textStatus
						+ " (HTTP-" + xhr.status + " / "
						+ errorThrown + ")</div>"
					);
				}
			});
		});
	});
</script>
</head>
<body>
	<h1 class="title">$.ajax() 함수를 사용한 XML 데이터 읽기</h1>
	<div class="exec">
		<input type="button" id="mybtn" value="xml데이터 가져오기"/>
	</div>
	<div class="console" id="result"></div>	
</body>
</html>