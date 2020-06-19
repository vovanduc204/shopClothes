<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>eCommerce-Login</title>
   <jsp:include page="head.jsp"></jsp:include>
</head>
<body class="home">


<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<jsp:include page="ourcategories.jsp"></jsp:include>
</div>
	
	<h1 style="color: red;">${checklogin}</h1>

	<section style="padding-bottom: 80px;padding-top: 50px;" class="content-page">
		<div class="container">
			<div class="row ">
				<div class="col-md-8 ">
					<div>
						<h3 style="display: inline;">Login</h3>
						<a style="float:right;color:#0c0ce2" href='<c:url value ="/register"/>'>Create new account</a>
					</div>
					<div style="border:0.5px ridge">
						<form style="height: 340px;" action="" method="POST">
						
						 <div class="form-group register_form">
					        <label>Email:</label>
					         <input type="text" class="form-control" placeholder="Enter your email" name="email" required="required">
					     </div>
					      <div class="form-group register_form" >
					        <label>Password:</label>
					         <input type="text" class="form-control" placeholder="Enter your password" name="password" required="required">
					     </div>
					     <div class="form-group login_remember" >
					        <label>Remember Me:   </label>    
					       	<input type="checkbox" name="remember-me" />
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
