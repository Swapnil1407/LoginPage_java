<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="body_bg">

	<h4>Login Here</h4>
	
	<c: if test="${successMsg}">
		<h4 style="color: red"> ${errorMsg} </h4>
	</c:>
	
	<form action="loginForm" method="post">
		Email : <input type="text" name="email"/> <br/> <br/>
		Password : <input type="password" name="password"/> <br/> <br/>
		<input type="submit" value="login">
	</form>
	
	<br/> <br/>
	
	If not registered...<a href="regPage"> <b>Click Here</b> </a>
</body>
</html>