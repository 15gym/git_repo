<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {		
		// 추가된 동적 요소의 수를 카운트 하기 위한 전역변수
		var i = 1;
		var h3 = $("<h3>").html("오늘은 화요일!!!");
		$("body").append(h3);
		
		$("input:eq(0)").click(function() {
			// 새로운 요소의 생성
			var li1 = $("<li>").css("color", "red").html("추가항목" + (i++));
			var li2 = $("<li>").css("color", "green").html("추가항목" + (i++));
			var li3 = $("<li>").css("color", "blue").html("추가항목" + (i++));
			var li4 = $("<li>").html("TEST");
			// 새로 생성된 요소에 대한 이벤트 추가
			// remove() 함수는 해당 요소를 삭제하는 기능임
			li1.click(function() {
				$(this).remove();
			});
			li2.click(function() {
				$(this).remove();
			});
			li3.click(function() {
				$(this).remove();
			});
			// A.append(B) --> A에 B를 추가하다.
			// B.appendTo(A) --> B를 A에 추가하다.
			li1.appendTo($("ul"));
			$("ul").append(li2);
			$("ul").append(li3);
			$("ul").append(li4);
		});
		
		$("input:eq(1)").click(function() {
			$("ul").empty();
		});
		
	});
</script>
</head>
<body>
<input type="button" value="추가">
<input type="button" value="삭제">
<!-- 동적으로 요소가 추가될 태그 -->
<ul></ul>
</body>
</html>







