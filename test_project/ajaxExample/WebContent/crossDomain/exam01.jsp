<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/common.css" />
<style type="text/css">
	ul li { border-bottom: 1px dotted #7BAEB5; }
	ul li:first-child { border-top: 1px dotted #7BAEB5; }
	ul li {
		display: block;
		width: auto;
		padding: 13px 10px 10px 10px;
		color: #222;
		text-decoration: none;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="plugins/xdomain/jquery.xdomainajax.js"></script>
<script type="text/javascript">
	$(function() {
		var url = "http://www.kma.go.kr/XML/weather/sfc_web_map.xml";
		$.get(url, {}, function(data) {
			var xml_text = data.responseText;
			var xml = $(xml_text);
			var weather = xml.find("weather");
			var yy = weather.attr("year");
			var mm = weather.attr("month");
			var dd = weather.attr("day");
			var hour = weather.attr("hour");
			
			$("#date").html("(" + yy + "년" + mm + "월" + dd + "일" + hour + "시)");
			xml.find("local").each(function() {
				var city = $(this).text();
				var desc = $(this).attr("desc");
				var ta = $(this).attr("ta");
				
				var li = $("<li>").html("[" + city + "]" + desc + " / 현재 기온: " + ta);
				
				$("#list").append(li);
			});
		});
	});
</script>
</head>
<body>
	<h1 class="title">전국 날씨 정보<span id="date"></span></h1>
	<ul id="list"></ul>
</body>
</html>