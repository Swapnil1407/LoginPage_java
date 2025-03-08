<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="body_bg">

	<h4>Register Here</h4>
	
	<c: if test="${not empty successMsg}">
		<h4 style="color: green"> ${successMsg} </h4>
	</c:>
	
	<c: if test="${successMsg}">
		<h4 style="color: red"> ${errorMsg} </h4>
	</c:>
	
	<form action="regForm" method="post">
		Name : <input type="text" name="name"/> <br/> <br/>
		Email : <input type="text" name="email"/> <br/> <br/>
		Password : <input type="password" name="password"/> <br/> <br/>
		Phone No. : <input type="text" name="phoneno"/> <br/> <br/>
		<input type="submit" value="Register">
	</form>
	
	<br/> <br/>
	
	If already registered...<a href="loginPage"> <b>Click Here</b> </a>
</body>
</html>