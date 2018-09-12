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
		$("#checkid").click(function() {
			var input_value = $("input[name='user_id']").val();
			
			if(!input_value) {
				alert("아이디를 입력하세요");
				$("input[name='user_id']").focus();
				return false;
			}
			
			var url = "ajax/idcheck/idcheck.jsp";
			
			$.get(url, {
					"user_id": input_value
				}, function(data) {
				
					var result_text = $(data).find("result").text();
					var result = eval(result_text);
					
					if(!result) {
						$(".console").html("<span style='color=blue;'>"
											+ "사용할 수 있는 아이디입니다");
					} else {
						$(".console").html("<span style='color=red;'>"
								+ "사용할 수 없는 아이디입니다");
					}
				}
			);
		});
	});
</script>
</head>
<body>
	<h1 class="title">아이디 중복 검사</h1>
	<div class="exec">
		<form action="">
			<input type="text" name="user_id"/>
			<input type="button" id="checkid" value="중복검사"/>
		</form>
	</div>
	<div class="console"></div>
</body>
</html>