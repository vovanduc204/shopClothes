<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Boutique </title>
	
	<jsp:include page="head.jsp"></jsp:include>
	
</head>
<body class="home">


<jsp:include page="header.jsp"></jsp:include>


<div class="container">
   	<!-- Home slide -->
	<div class="owl-carousel nav-style4 nav-center-center" data-items="1" data-nav="true" data-dots="false" data-loop="true" data-autoplay="true">
		<img src='<c:url value ="/resources/home/images/slides/12-1.jpg"/>'  alt="">
		<img src='<c:url value ="/resources/home/images/slides/12-2.jpg"/>' alt="">
	</div>
	<!-- ./Home slide -->
	<div class="">
		<div class="row">
			<div class="col-sm-4 margin-top-30">
				<a class="banner-opacity" href="#"><img src='<c:url value ="/resources/home/images/b/12-5.png"/>'  alt=""></a>
			</div>
			<div class="col-sm-4 margin-top-30">
				<a class="banner-opacity" href="#"><img src='<c:url value ="/resources/home/images/b/12-6.png"/>' alt=""></a>
			</div>
			<div class="col-sm-4 margin-top-30">
				<a class="banner-opacity" href="#"><img src='<c:url value ="/resources/home/images/b/12-7.png"/>' alt=""></a>
			</div>
		</div>
	</div>
	
	<jsp:include page="ourcategories.jsp"></jsp:include>
	
	
	<div class="margin-top-50">
		<div class="container">
			<div class="tab-product tab-product-fade-effect">
				<ul class="box-tabs nav-tab">
		            <li class="active"><a data-animated="" data-toggle="tab" href="#tab-1">Best Sellers</a></li>
		        </ul>
		        <div class="tab-content">
		        	<div class="tab-container" style="text-align:center;">
		        	
		        	
		        	<c:forEach var = "product" items="${listProduct}">
				            <div class="col-md-3 col-sm-6" style = "height:500px">
				        		<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="detail/${product.getIdproduct()}">
										<img src='<c:url value ="/resources/Image/product/${product.getProductimg()}"/>' alt="">
										</a>
										
									</div>
									<div class="product-info">
										<h3 class="product-name" style="height:50px;"><a href="detail/${product.getIdproduct()}">${product.getProductname()}</a></h3>
										
										<span class="price" >
											<fmt:setLocale value="en_US"/>
      										<strong><fmt:formatNumber value="${product.getPrice()}" type="currency"/></strong>
										</span><br>
										
									</div>
								</div>
								<a style="margin-top:12px" href="detail/${product.getIdproduct()}" class="button add_to_cart_button">VIEW</a>
			        		</div>    
			          </c:forEach>
			        	
		        	</div>
		        </div>
			</div>
		</div>
	</div>
	<div class="section-brand-slide margin-bottom-60">
		<div class="brands-slide owl-carousel nav-center-center nav-style7" data-nav="true" data-dots="false" data-loop="true" data-margin="65" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":6}}'>
			<a href="#"><img src='<c:url value ="/resources/home/images/brands/brand10.png"/>'  alt=""></a>
			<a href="#"><img src='<c:url value ="/resources/home/images/brands/brand11.png"/>'  alt=""></a>
			<a href="#"><img src='<c:url value ="/resources/home/images/brands/brand12.png"/>'  alt=""></a>
			<a href="#"><img src='<c:url value ="/resources/home/images/brands/brand13.png"/>'  alt=""></a>
			<a href="#"><img src='<c:url value ="/resources/home/images/brands/brand14.png"/>'  alt=""></a>
			<a href="#"><img src='<c:url value ="/resources/home/images/brands/brand15.png"/>'  alt=""></a>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>
