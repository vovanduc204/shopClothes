<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div class="margin-top-50">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-5">
				<div class="section-title text-center margin-top-40 margin-bottom-30">
					<h3>OUR CATEGORIES</h3>
					<span class="sub-title">Find all items you want by select our featured categories</span>
				</div>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-7">
				<ul class="category-menu category-carousel pull-left owl-carousel nav-style7 nav-center-center" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":4},"1000":{"items":4}}'>
					<li>
						<a href="#">
						<img src='<c:url value ="/resources/home/images/categorys/1.png"/>' alt="">
						Clothing
						</a>
					</li>
					<li>
						<a href="#">
						<img src='<c:url value ="/resources/home/images/categorys/2.png"/>'  alt="">
						Sneakers
						</a>
					</li>
					<li>
						<a href="#">
						<img src='<c:url value ="/resources/home/images/categorys/3.png"/>' alt="">
						Accessories
						</a>
					</li>
					<li>
						<a href="#">
						<img src='<c:url value ="/resources/home/images/categorys/4.png"/>' alt="">
						Handbags
						</a>
					</li>
				</ul>
			</div>
		</div>
</div>
<div class="container">
	<span class="line margin-top-50"></span>
</div>