<%@page import="java.util.List"%>
<%@page import="com.duc.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Boutique - eCommerce</title>
    <jsp:include page="head.jsp"></jsp:include>
  
</head>
<body class="home">



<jsp:include page="header.jsp"></jsp:include>


<div class="container">
	<jsp:include page="ourcategories.jsp"></jsp:include>
</div>

<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<h3>Information</h3>
				<table class="table">
					<thead>
					    <tr>
					    <th scope="col">Name</th>
					      <th scope="col">Color</th>
					      <th scope="col">Size</th>
					      <th scope="col">Amount</th>
					       <th scope="col">Price</th>
					    </tr>
				  	</thead>
					<tbody>
						<c:forEach var="value" items="${listcart}">
							<tr data-detailcart="${value.getIdproductdetail() }">
								<td class="nameproduct-cart" data-idproductcart="${value.getIdproduct()}">${value.getProductname() }</td>
								<td class="productcolor" data-idcolor="${value.getIdproductcolor()}">${value.getColorname()}</td>
								<td class="productsize" data-idsize="${value.getIdproductsize()}">${value.getSizename()}</td>
								<td class="productamount" ><input class="amount-cart" type="number" value="${value.getAmount()}" min="1" max="99"/></td>
								<td class="price-cart" data-value="${value.getPrice() }"><span> ${value.getPrice()} </span></td>
								<td><button class="btn btn-danger btnDeleteCart"> Xóa </button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<h3 >Total :<span id="sumprice"  style="color:red"></span> </h3>
			</div>
			<div class="col-md-6 col-sm-6">
				<h3>Information User</h3>
				<form action="" method="POST">
					<div class="form-group">
						 <label for="customernname">Name:</label>
						 <input type="text" class="form-control" id="customernname" name="customernname">
					</div>
					
					<div class="form-group">
						 <label for="phone">Phone:</label>
						 <input type="text" class="form-control" id="phone" name="phone">
					</div>
					<div class="radio">
						<label><input checked type="radio" name="formofdelivery" checked value="Giao hàng tận nơi">Giao hàng tận nơi</label>
					</div>
					<div class="radio">
					  	<label><input type="radio" name="formofdelivery" value="Nhận hàng tại cửa hàng">Nhận hàng tại cửa hàng</label>
					</div>
				
					<div class="form-group">
						 <label for="deliveryaddress">Address:</label>
						 <input type="text" class="form-control" id="deliveryaddress" name="deliveryaddress">
					</div>
					<div class="form-group">
					     <label for="note">Note:</label>
					 	 <textarea class="form-control" rows="5" id="note" name="note"></textarea>
					</div>
					<input type="submit" class="btn btn-primary" value="Đặt hàng">
				</form>
			</div>
		</div>
		<div class="row">
			
		</div>
	</div>                       



<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>
