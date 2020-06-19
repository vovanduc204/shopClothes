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

<div class="product-details-full">                            
  <div class="container">
      <div class="row">
          <div class="col-md-5 col-lg-5 col-sm-12">
              <div class="product-detail-image">
                  <div class="main-image-wapper">
                      <img class="main-image"  src='<c:url value ="/resources/Image/product/${product.getProductimg()}"/>' alt="">
                  </div>
              </div>
          </div>
          <div class="col-md-7 col-lg-7 col-sm-12">
              <div class="product-details-right">
                  <div class="breadcrumbs">
                        <a href="#">Home</a>
                         <a href="#">Sneaker</a>
                        <span>Readwing </span>
                  </div>
                  <h3 id="productnamedettail" data-idproductdetail="${product.getIdproduct()}">${product.getProductname()}</h3>
						<h4 id="productpricedetail" data-pricedetail=" ${product.getPrice()}" style="color:red">$ ${product.getPrice()}</h4>
						<table class="table">
							<thead>
							    <tr>
							      <th scope="col">Color</th>
							      <th scope="col">Size</th>
							      <th scope="col">Amount</th>
							    </tr>
						  	</thead>
							<tbody>
								<c:forEach var="productdetail" items="${product.getListproductdetail()}">
									<tr >
										<td class="productcolor" data-idcolor="${productdetail.getProductcolor().getIdproductcolor()}">${productdetail.getProductcolor().getProductcolorname() }</td>
										<td class="productsize" data-idsize="${productdetail.getProductsize().getIdproductsize()}">${productdetail.getProductsize().getProductsizename() }</td>
										<td class="productamount" data-amount="${productdetail.getAmount()}">${productdetail.getAmount() }</td>
										<td><button data-productdetail="${productdetail.getIdproductdetail()}" class="button add_to_cart_button btnaddtocart">ADD TO CART</button></td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>

              </div>
          </div>
      </div>
    </div>
</div>
<div class="container">                        
    <div class="tab-details-product padding-40-60">
    
        <ul class="box-tabs nav-tab">
            <li class="active"><a data-toggle="tab" href="#tab-1">DESCRIPTION</a></li>
            
        </ul>
        <div class="tab-container">
              <div id="tab-1" class="tab-panel active">
                <p>${product.getDescription()}</p>
                
            </div>
             
        </div>  
    </div>   
</div> <!--END CONTAINER-->                          
<div class="container">
			<div class="tab-product tab-product-fade-effect">
				<ul class="box-tabs nav-tab">
		            <li class="active"><a data-animated="" data-toggle="tab" href="#tab-1">Product Relate</a></li>
		        </ul>
		        <div class="tab-content">
		        	<div class="tab-container" style="text-align:center;">
		        	
		        	
		        	<c:forEach var = "product" items="${listproductrelate}">
				            <div class="col-md-3 col-sm-6">
				        		<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="detail/${product.getIdproduct()}">
										<img src='<c:url value ="/resources/Image/product/${product.getProductimg()}"/>' alt="">
										</a>
										
									</div>
									<div class="product-info">
										<h3 class="product-name" style="height:50px;"><a href="detail/${product.getIdproduct()}">${product.getProductname()}</a></h3>
										<span class="price" >
											${product.getPrice()}
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




<jsp:include page="footer.jsp"></jsp:include>

	
</body>
</html>
