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
	form > span { display: none; }
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
	// 기본적으로 1depth의 드롭다운을 로드함
	$("#category1").load("ajax/text/category-data.html #category1-1",
			function() {
				// 로딩이 완료되면 드롭다운을 감싸는 태그 요소를 화면에 표시함
				$(this).show();
			}
	);

    // 드롭다운은 body상에 없으므로 이벤트를 "미리"정의해 놓아야 한다.
    // 1depth에 대한 change 이벤트 정의
    $(document).on("change", "#category1 > select", function() {
    	// 1dpeth가 변경되므로 2,3depth는 초기화.
    	$("#category2").empty().hide();
    	$("#category3").empty().hide();
    	// 선택된 항목이 지시하는 하위 카테고리 페이지의 URL얻기
    	var target = $(this).find("option:selected").attr("data-target");
    	var selector = "ajax/text/category-data.html " + target;
    	
    	// 다음 항목 로드
     	$("#category2").load(selector, function() {
     		$(this).show();
     	});
    });
    
 	// 2depth에 대한 change 이벤트 정의
    $(document).on("change", "#category2 > select", function() {
    	// 2dpeth가 변경되므로 3depth는 초기화.
    	$("#category3").empty().hide();
    	// 선택된 항목이 지시하는 하위 카테고리 페이지의 URL얻기
    	var target = $(this).find("option:selected").attr("data-target");
    	var selector = "ajax/text/category-data.html " + target;
    	
    	// 다음 항목 로드
     	$("#category3").load(selector, function() {
     		$(this).show();
     	});
    });
 	$(document).on("change", "#category3 > select", function(){
 		if($(this).find("option:selected").index() > 0) {
 			var data1 = $("#category1 > select > option:selected").val();
 			var data2 = $("#category2 > select > option:selected").val();
 			var data3 = $("#category3 > select > option:selected").val();
 			$(".console").html(data1 + " &gt; " + data2 + " &gt; " + data3);
 		}
 	});
});
</script>
</head>
<body>
	<h1 class="title">동적 드롭다운</h1>
	<div class="exec">
		<form action="">
			<span id="category1"></span>
			<span id="category2"></span>
			<span id="category3"></span>
		</form>
	</div>
	
	<div class="console"></div>
</body>
</html>