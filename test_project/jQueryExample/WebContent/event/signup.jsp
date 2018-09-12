<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/event.css"/>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="script/inputCheck.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<h1>회원가입</h1>
	<form action="" name="form1" id="join">
		<div id="input">
		
			<h3>아이디</h3>
			<input type="text" name="user_id"/>
			
			<h3>비밀번호</h3>
			<input type="password" name="user_pw"/>
			
			<h3>주민번호</h3>
			<input type="password" name="juminno"/>
			
			<h3>성별</h3>
			<label for=""><input type="radio" name="gender" value="남자"/>남자</label>
			<label for=""><input type="radio" name="gender" value="여자"/>여자</label>
			
			<h3>이메일 주소</h3>
			<input type="email" name="email"/>
			
			<h3>URL</h3>
			<input type="url" name="url"/>
			
			<h3>핸드폰 번호</h3>
			<input type="tel" name="hpno"/>
			
			<h3>취미</h3>
			<label for=""><input type="checkbox" name="hobby" value="축구"/>축구</label>
			<label for=""><input type="checkbox" name="hobby" value="농구"/>농구</label>
			<label for=""><input type="checkbox" name="hobby" value="야구"/>야구</label>
			
			<h3>직업</h3>
			<select name="job">
				<option>--- 선택하세요 ---</option>
				<option value="프로그래머">프로그래머</option>
				<option value="퍼블리셔">퍼블리셔</option>
				<option value="디자이너">디자이너</option>
				<option value="기획">기획</option>
			</select>
			
			<input type="submit" value="회원가입" class="myButton"/>
			<input type="reset" value="다시작성" class="myButton"/>
		</div>
	</form>
</body>
</html>