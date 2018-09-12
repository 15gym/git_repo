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
		// 버튼의 클릭 이벤트
		$("#mybtn").click(function() {
			$.ajax({
				url: "ajax/text/textdata.jsp",
				type: "get",
				dataType: "text",
				data: {
					"keyword" : "Hello Ajax",
					"test" : "testing"
				},
				timeout: 30000,
				cache: false,
				/** 파일 읽기에 성공한 경우 */
				success: function(data) {
					// dataType값이 text일 경우에는 단순히 내용에 대한 
					// 문자열이므로, 직접 HTML요소에 출력할 수 있다.
					$("#result").html(data);
				},
				/** 파일 읽기에 실패한 경우 (주소 오타, 웹서버 중지 등) */
				error: function(xhr, textStatus, errorThrown) {
					$("div").html("<div>" + textStatus
							+ " (HTTP-" + xhr.status +  " / " + 
							+ errorThrown + ")</div>");
				}
			});
		});
	});
</script>
</head>
<body>
	<h1 class="title">$.ajax() 함수를 사용한 텍스트 읽기</h1>
	<div class="exec">
		<input type="button" value="txt파일 가져오기" id="mybtn">
	</div>
	<div class="console" id="result"></div>
</body>
</html>