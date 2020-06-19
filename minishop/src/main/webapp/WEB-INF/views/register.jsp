<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>eCommerce</title>
   <jsp:include page="head.jsp"></jsp:include>
</head>
<body class="home">


	<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<jsp:include page="ourcategories.jsp"></jsp:include>
</div>
	<h2>${message}</h2>
	<section style="padding-bottom: 80px;padding-top: 50px;" class="content-page">
		<div class="container">
			<div class="row ">
				<div class="col-md-8 ">
					<div>
						<h3 style="display: inline;">REGISTER</h3>
						<a style="float:right;color:#0c0ce2" href='<c:url value ="/login"/>'>Login now</a>
					</div>
					<div style="border:0.5px ridge">
						<form style="height: 320px;" action="" method="POST">
						
						 <div class="form-group register_form">
					        <label>Email:</label>
					         <input type="text" class="form-control" placeholder="Enter your email" name="email" required="required">
					     </div>
					      <div class="form-group register_form" >
					        <label>Password:</label>
					         <input type="text" class="form-control" placeholder="Enter your password" name="password" required="required">
					     </div>
					      <div class="form-group register_form">
					        <label>Re-password:</label>
					         <input type="text" class="form-control" placeholder="Enter your re-password" name="repassword" required="required">
					     </div>
						
						<div class="form-group register_form" >
							<input id="btnLogin"  class="material-button" type="submit" value="Submit"/>
						</div>
						</form>
					</div>
				</div>
				
				<div class="col-md-4 sign_with" >
					<div class="section-title" ><h3>Sign in with</h3></div>
					<a href="#" class="btn-face m-b-20">
						<img src='<c:url value ="/resources/Image/facebook.png"/>'  alt="">
						Facebook
					</a>
					<br>
					<h5>OR</h5>
					<br>
					<a href="#" class="btn-google m-b-20">
						<img src='<c:url value ="/resources/home/images/icons/icon-google.png"/>'  alt="">
						Google
					</a>
				</div>
			</div>
		</div>          
	</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
