<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
	div#container {
		width : auto;
		border : 5px solid #ff00ff;
		padding : 10px;
	}
	div#container > h1#title {
		background-color : #d5d5d5;
		padding : 5px;
	}
	div#container div.box {
		padding : 10px;
		background-color : #ffff00;
		font : 20px '굴림';
	}
	div#container > ul {
		list-style : none;
		padding : 10px;
		margin : 0px;
		width : auto;
		border : 5px solid #00ff00;
	}
	div#container > ul > li:first-child, li:last-child {
		border : 3px dotted red;
		padding 3px 10px;
	}
	pre {
		font : 14px/130% 'Courier New';
		background : #eee;
		padding : 10px 20px;
		margin : 10px auto;
		border : 1px solid #555;
		border-radius : 20px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#title").html("두번째 제목");
		$("div#container > h1#title").html("제목입니다.");
		$("div#container div.box").html("안녕하세요.");
		$("ul > li").html("목록입니다.");
		$("ul > li:eq(1)").html("jQuery 고유의 방식도 있습니다.");
		$("p, pre").html("다중요소 선택");
		$("pre[name='source']").html("CSS의 선택자");
		$("ul > li:first-child").html("First-Child");
		$("ul > li:Last-child").html("Last-Child");
	});
</script>
</head>
<body>
	<div id="container">
		<h1 id="title"></h1>
		<div class="box"></div>
		<ul>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<p></p>
	<pre></pre>
	<pre name="source"></pre>
</body>
</html>