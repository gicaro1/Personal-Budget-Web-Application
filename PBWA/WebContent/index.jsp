<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- google Fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,700,800i&display=swap"
	rel="stylesheet">
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- bootraap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- StylesSheet  -->
<link rel="stylesheet" href="http://localhost:8080/PBWA/css/styles.css" />

<title>Login</title>
</head>
<body>
	<h1>Login</h1>

	<div align="center">


	<%-- 	<c:choose> --%>


<%-- 			<c:when test="${username == null }"> --%>

				<form action="login" method="get">
				
				
					Name:<input type="text" name="username" /><br /> <br />
					Password:<input type="password" name="userpass" /><br /> <br />
					
					<input type="submit" value="login" />
				<%-- 	<a href="${pageContext.request.servletContext.contextPath }/Logout">logout</a> --%>
			
				</form>
				<form action="logout" method="post" >
					<input type="submit" value="logout" class="btn-danger" />
				</form>
					
				
					<div class=" alert alert-sucesss" role="alert">
				<%-- 	<strong>you are signed in ${username }</strong> --%>

				</div>

		<%-- 	</c:when>
 --%>
		<%-- 	<c:otherwise> --%>
			
		<!-- 		<div>
					<a href="/Logout">logout</a>
		
				</div> -->
			

		<%-- 	</c:otherwise> --%>
	<%-- 	</c:choose> --%>



	</div>

</body>
</html>
