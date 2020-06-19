<%@page import="java.util.List"%>
<%@page import="com.duc.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

	<title>Product</title>
 	<jsp:include page="head.jsp"></jsp:include>
 	
</head>
<body class="home">

	<jsp:include page="header.jsp"></jsp:include>
	
	
	
	
<div class="main-container shop-with-banner left-slidebar">
	<div class="container">
		<div class="shop-banner">
			<img src='<c:url value ="/resources/home/images/slides/slider-cat2.jpg"/>' alt="">
		</div>
		<div class="breadcrumbs style2">
            <a href="#">Home</a>
            <span>Products</span>
        </div>
		<div class="row">
			<div class="main-content col-sm-8 col-md-9">
				<div class="shop-top">
                    <div class="shop-top-left">
                        <span class="woocommerce-result-count">Showing 1-9 of 2268 results</span>
                    </div>
                    <div class="shop-top-right">
                        <div class="orderby-wapper">
                            <select class="orderby">
                                <option value="">Short by Newness</option>
                                <option value="">Short by price</option>
                            </select>
                        </div>
                        <div class="orderby-wapper display-products">
                            <span class="label-filter">SHOW:</span>
                            <select class="orderby">
                                <option value="">9 products</option>
                                <option value="">12 products</option>
                            </select>
                        </div>

                        <div class="show-grid-list">
                            <span class="label-filter">VIEW:</span>
                            <a class="show-grid" href="#"><i class="fa fa-th"></i></a>
                            <a class="show-list active" href="#"><i class="fa fa-list"></i></a>
                        </div>
                    </div>
                </div>
				<ul class="product-list-grid desktop-columns-3 tablet-columns-2 mobile-columns-1 row flex-flow">
					
				      
				      <c:forEach var = "product" items="${listproduct}">
				         <li class="product-item style4 col-sm-6 col-md-4">
							<div class="product-inner">
								<div class="product-thumb">
									<a href="href='<c:url value ="detail/${product.getIdproduct()}"/>' "><img src='<c:url value ="/resources/Image/product/${product.getProductimg()}"/>' alt=""></a>
									<div class="gorup-button">
										<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
										<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
										<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
									</div>
									
									<div class="add-cart-wapper">
										<a href="#" class="button add_to_cart_button">ADD TO CART</a>
									</div>
								</div>
								<div class="product-info">
									<h3 class="product-name"><a href="href='<c:url value ="detail/${product.getIdproduct()}"/>'">${product.getProductname()}</a></h3>
									<span class="price">
										<ins>$ ${product.getPrice()}</ins>					
									</span>
								</div>
							</div>
						</li>
				      </c:forEach>	
				</ul>
				
				<div class="navigation">
                    <ul>
                    
	                    <c:url value="/product/${id}/${categoryname}" var="prev">
					        <c:param name="page" value="${page-1}"/>
					    </c:url>
					    <c:if test="${page > 1}">
					        <a href="<c:out value="${prev}" />" class="pn prev"><i class="fa fa-long-arrow-left"></i>Previous</a>
					    </c:if>
	                   <c:forEach begin="1" end="${noOfPages}" step="1" varStatus="i">
					        <c:choose>
					            <c:when test="${page == i.index}">
					                <span style="color:darkolivegreen;font-weight:bold">${i.index}</span>
					            </c:when>
					            <c:otherwise>
					                <c:url value="/product/${id}/${categoryname}" var="url">
					                    <c:param name="page" value="${i.index}"/>
					                </c:url>
					                <li><a href='<c:out value="${url}" />'>${i.index}</a></li>
					            </c:otherwise>
					        </c:choose>
				    	</c:forEach>
				    	 <c:url value="/product/${id}/${categoryname}" var="next">
					        <c:param name="page" value="${page + 1}"/>
					    </c:url> 
				        <c:if test="${page +1<= noOfPages}">
				        	<a href='<c:out value="${next}" />' class="pn next">Next<i class="fa fa-long-arrow-right"></i></a>
				    	</c:if>
					    
                    </ul>
                </div>
                
			</div>
			<div class="col-sm-4 col-md-3 sidebar"> 
                <!-- Product category -->
                <div class="widget widget_product_categories">
                    <h2 class="widget-title">Categories</h2>
                    <ul class="product-categories">
	                    <c:forEach var="category" items="${listcategory}">
					    	<c:choose>
					            <c:when test="${category.getIdcategory() eq id}">
					                 <li class="current-cat"><a href='<c:url value ="/product/${category.getIdcategory()}/${category.getCategoryname()}"/>'>${category.getCategoryname()}</a></li>
					            </c:when>
					            <c:otherwise>
					                <li><a href='<c:url value ="/product/${category.getIdcategory()}/${category.getCategoryname()}"/>'>${category.getCategoryname()}</a></li>
					            </c:otherwise>
					        </c:choose>
						</c:forEach>
                    </ul>
                </div>
                <!-- ./Product category -->
                 <!-- Filter price -->
                <div class="widget widget_price_filter">
                    <h2 class="widget-title">PRICES</h2>
                    <div class="price_slider_wrapper">
                        <div class="amount-range-price">Price: $85.00 - $125.00</div>
                        <div data-label-reasult="price:" data-min="0" data-max="500" data-unit="$" class="slider-range-price " data-value-min="50" data-value-max="350"></div>
                        <button class="button">Filter NOW</button>
                    </div>
                </div>
                <!-- ./Filter price -->
                 <!-- By color -->
                <div class="widget widget_fillter_color">
                    <h2 class="widget-title">COLOUR</h2>
                    <div class="inner">
                    	<a href="#"><span style="background-color:#736357;"></span></a>
                    	<a class="active" href="#"><span style="background-color:#bdb871;"></span></a>
                    	<a href="#"><span style="background-color:#f26522;"></span></a>
                    	<a href="#"><span style="background-color:#fff799;"></span></a>
                    </div>
                </div>
                 <!-- ./By color -->
                 <!-- By color -->
                <div class="widget widget_fillter_size">
                    <h2 class="widget-title">SIZE Option</h2>
                    <div class="inner">
                    	<a href="#"><span>S</span></a>
                    	<a class="active" href="#"><span>M</span></a>
                    	<a href="#"><span>L</span></a>
                    	<a href="#"><span>XL</span></a>
                    	<a href="#"><span>XXL</span></a>
                    </div>
                </div>
                
                
                <!-- Product tags -->
                <div class="widget widget_product_tag_cloud style2">
                    <h2 class="widget-title">TAGS</h2>
                    <div class="tagcloud">
                        <a href="#">Handbag</a>
                        <a href="#">Leather</a>
                        <a href="#">Vintage</a>
                        <a href="#">Women</a>
                        <a href="#">Sexy Dress</a>
                        <a href="#">Shoping</a>
                    </div>
                </div>
                <!-- ./Product tags -->
        	</div>
		</div>
	</div>
</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>