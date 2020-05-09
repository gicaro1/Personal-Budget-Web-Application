<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Index</title>
<!-- google Fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,700,800i&display=swap"
	rel="stylesheet">
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!--  ----------ANIMATE-CDN ----------- --> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- bootraap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<!-- customs CSS -->
<link rel="stylesheet" href="http://localhost:8080/PBWA/css/styles.css" />

</head>
<body>



	<div class="col-12-sm m-2 py-4 welcome_tittle text-muted  w-100">
		<h1 class=" text-center animated  fadeInDown delay-2s">Personal budget Web Application</h1>
		
		<!-- <img src="/img/geometry.jpg" class="bg" alt=""> -->



	</div>


	<div class="row d-flex justify-content-center row_login_container ">




		<div class="col-lg-5  ">

			<div class="container  ">


				<div class="  card p-3 mt-3 login_main_container ">
					<div class="text-center card-header bg-success rounded shadow">
						<h1 class="h1 text-light my-4  card_welcome_tittle ">Welcome
							Back!</h1>
						<%-- <c:out value="${USER_SESSION}"/> --%>
					</div>

					<div class="car-body pt-3">


						<c:choose>
							<c:when test="${username == null }">

								<form class="needs-validation" action="login" method="get"
									class="user">




									<div class="form-group shadow">

										<input type="text" name="username" id="validationServer01"
											class="form-control is-valid  input_login form-control-user  "
											required aria-describedby="emailHelp" placeholder="Name:">
									</div>










									<div class="form-group shadow">

										<input type="password" name="userpass" id="validationServer01"
											class="form-control is-valid  form-control-user" required
											id="exampleInputPassword" placeholder="Password:">
									</div>
									<button type="submit"
										class="btn btn-outline-success btn-lg  btn-block shadow">Login</button>

								</form>
								<%-- 	<h3>
									<c:out value="${MESSAGE}" />
								</h3>
 --%>
								<%-- 	<div class="alert alert-dange data-dismiss="
									alert"r" role="alert">
									<c:out value="${MESSAGE}" />
								</div> --%>
							<%-- 	<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true"> <c:out value="${MESSAGE}" /></span>
								</button> --%>

								<div class="alert alert-danger mt-2 text-center alert-dismissible fade show" role="alert"><c:out value="${MESSAGE}" />
								
								
								
								
								</div>
							</c:when>



							<c:otherwise>
								<p>login please</p>
							</c:otherwise>


						</c:choose>
					</div>

					<hr>
					<div class="text-center">

						<div class="text-center">
							<!-- register link  -->
							<a class="small" href="register.jsp">Go to register!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>
