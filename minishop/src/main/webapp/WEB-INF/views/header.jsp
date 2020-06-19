<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>



<div id="box-mobile-menu" class="box-mobile-menu full-height full-width">
	<div class="box-inner">
		<span class="close-menu"><span class="icon pe-7s-close"></span></span>
	</div>
</div>
<div id="header-ontop" class="is-sticky"></div>
<header id="header" class="header style3 style12">
	<div class="container">
		<div class="topbar">
			<ul class="boutique-nav topbar-menu left">
				<li><a href="#"><i class="fa fa-phone"></i>Call Us: +0707 969 084</a></li>
				<li><a href="#"><i class="fa fa-envelope"></i>voduc204@gmail.com</a></li>
			</ul>
			<ul class="boutique-nav topbar-menu right">
				<li class="menu-item-has-children">
                       <c:choose>
		                    <c:when test="${first!=null}">
		                    	<a class="bordersuccess">${first}</a>
		                    	<ul class="sub-menu">
			                        <li><a href='<c:url value ="/logout"/>'>LOGOUT</a></li>
		                         </ul>
		                    </c:when>    
		                    <c:otherwise>
			                    <a><i class="fa fa-lock"></i> Account</a>
		                    	<ul class="sub-menu">
			                        <li><a href='<c:url value ="/login"/>'>LOGIN</a></li>
									<li><a href='<c:url value ="/register"/>'>REGISTER</a></li>
								 </ul>
		                    </c:otherwise>
		                </c:choose> 
				</li>
				
				<li class="menu-item-has-children">
					<a href="#"><img src='<c:url value ="/resources/home/images/flag3.png"/>'  alt="">English</a>
					<ul class="sub-menu">
                        <li><a href="#">English</a></li>
                        <li><a href="#">French</a></li>
                    </ul>
				</li>
			</ul>
		</div>
		<div class="main-header">
			<div class="main-menu-wapper">
				<div class="row">
					<div class="col-sm-12">
						<div class="logo2 text-center">
							<a href="#"><img src='<c:url value ="/resources/home/images/logos/1.png"/>' alt=""></a>
						</div>
					</div>
					<div class="col-xs-2 col-sm-3 col-md-7 col-lg-5 menu_Active">
						<ul class="boutique-nav main-menu clone-main-menu">                                      
							<li class="active menu-item-has-children item-megamenu">
								<a href='<c:url value ="/"/>'>Home</a>
							
							</li>
							<li class="menu-item-has-children">
	                            <a>Product</a>
	                            <span class="arow"></span>
	                            <ul class="sub-menu">
	                            <c:forEach var="category" items="${listcategory}">
			                        <li><a href='<c:url value ="/product/${category.getIdcategory()}/${category.getCategoryname()}?page=1"/>'>${category.getCategoryname()}</a></li>
			                    </c:forEach>
	                             
	                                
	                            </ul>
	                        </li>
	                        <li class="menu-item-has-children item-megamenu">
	                            <a href="#">Blog</a>
	                        </li>
							<li class="menu-item-has-children item-megamenu">
								<a href='<c:url value ="/contact"/>'>Contact us</a>
								
							</li>
							<li class="menu-item-has-children">
								<a href='<c:url value ="/aboutus"/>'>About us</a>
								
							</li>
						</ul>
						<span class="mobile-navigation"><i class="fa fa-bars"></i></span>
					</div>			
					<div class="col-sm-12 col-md-12 col-lg-3 logo-main">
						<div class="logo">
							<a href="#"><img src='<c:url value ="/resources/home/images/logos/1.png"/>' alt=""></a>
						</div>
					</div>
					<div class="col-xs-10 col-sm-9 col-md-5 col-lg-4 control-wapper">
						<div class="box-control">
							<form  class="box-search">
								<input type="text" class="search" placeholder="Search here...">
								<button class="button-search"><span class="pe-7s-search"></span></button>
							</form>
							<div class="mini-cart">
								<a id="cardamount" class="cart-link" href='<c:url value ="/cart/"/>'>
									<span class="icon pe-7s-cart">
									</span>
									
								 	 <c:if test = "${cartamount>0}">
								        <div class="carcircle">
									        <span >${cartamount}
									        </span>
								        </div>
								      </c:if>
									 <c:if test = "${cartamount<=0||cartamount==null}">
								        <div>
									      
								        </div>
								     </c:if> 
									
								</a>
								<div class="show-shopping-cart">
		                            <h3 class="title">YOU HAVE <span class="text-primary">(3 ITEMS)</span> IN YOUR CART</h3>
		                            <ul class="list-product">
		                            	<li>
		                            		<div class="thumb">
		                            			<img src='<c:url value ="/resources/home/images/products/1.png"/>' alt="">
		                            		</div>
		                            		<div class="info">
		                            			<h4 class="product-name"><a href="#">LONDON STAR SWEATSHIRT</a></h4>
		                            			<span class="price">1x£375.00</span>
		                            			<a class="remove-item" href="#"><i class="fa fa-close"></i></a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div class="thumb">
		                            			<img src='<c:url value ="/resources/home/images/products/1.png"/>' alt="">
		                            		</div>
		                            		<div class="info">
		                            			<h4 class="product-name"><a href="#">LONDON STAR SWEATSHIRT</a></h4>
		                            			<span class="price">1x£375.00</span>
		                            			<a class="remove-item" href="#"><i class="fa fa-close"></i></a>
		                            		</div>
		                            	</li>
		                            </ul>
		                            <div class="sub-total">
		                            	Subtotal:£255.00
		                            </div>
		                            <div class="group-button">
		                            	<a href="#" class="button">Shopping Cart</a>
		                            	<a href="#" class="check-out button">CheckOut</a>
		                            </div>
								</div>
							</div>								
		            	</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>