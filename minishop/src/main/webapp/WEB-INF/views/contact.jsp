<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact</title>
   <jsp:include page="head.jsp"></jsp:include>
</head>
<body class="home">


<jsp:include page="header.jsp"></jsp:include>


<div class="container">
	<jsp:include page="ourcategories.jsp"></jsp:include>
</div>
	
<div class="page-banner contact-banner">
 	<div class="banner-content">
 		<span class="subtitle">We’re here to make you feel happy!</span>
         <h2 class="title">LET’S TALK!</h2>
 	</div>
 </div>
  <div class="container">
        <div class="row">
            <div class="col-sm-6">

                <div class="kt-contact-form margin-top-60">
                    <div id="message-box-conact"></div>
                    <h3 class="title">REACH US FOR ANY QUESTIONS YOU MIGHT HAVE</h3>
                    <p>
                        <input id="name" type="text" placeholder="Your name">
                    </p>
                    <p>
                        <input id="email" type="text" placeholder="Your Email">
                    </p>
                    <p>
                        <textarea id="content" placeholder="Your message!"></textarea>
                    </p>
                    <button id='btn-send-contact' class="button">SEND MESSAGE</button>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="margin-top-60">
                    <img src='<c:url value ="/resources/home/images/b/46.jpg"/>' alt="">
                    <h6 class="margin-top-20">GIVE US A CALL</h6>
                    <p class="roboto">Want to speak with a sales representative? Drop us a line and we’d be happy to answer any questions!</p>
                    <p style="font-size: 18px; color: #222; font-weight: bold;"><i class="fa fa-phone"></i> (+800) 6868 2268</p>
                </div>
            </div>
        </div>
    </div>
                         





<jsp:include page="footer.jsp"></jsp:include>

	
</body>
</html>
