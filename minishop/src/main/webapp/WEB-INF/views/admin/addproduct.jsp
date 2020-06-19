<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Product</title>

        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/weather-icons.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/owl.carousel.min.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/owl.theme.default.min.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/font-awesome.min.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/themify-icons.css"/>'/>
        
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/menubar/sidebar.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/bootstrap.min.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/lib/helper.css"/>'/>
        <link rel="stylesheet" href ='<c:url value = "/resources/admin/css/style.css"/>'/>
        
        
        
    </head>

    <body>

        <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
            <div class="nano">
                <div class="nano-content">
                    <div class="logo"><a href="index.html"><!-- <img src="assets/images/logo.png" alt="" /> --><span>Admin</span></a></div>
                    <ul>
                        <li class="label">Main</li>
                        <li><a href="<c:url value = "/admin/dashboard"/>"><i class="ti-home"></i> Dashboard </a>
                           
                        </li>

                        <li><a href="<c:url value = "/admin/product"/>"><i class="ti-crown"></i> Product </a>
                       
                        
                        <li class="label">Extra</li>
                        <li><a class="sidebar-sub-toggle"><i class="ti-files"></i> Invoice <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                                <li><a href="invoice.html">Basic</a></li>
                                <li><a href="invoice-editable.html">Editable</a></li>
                            </ul>
                        </li>
                        
                        <li><a><i class="ti-close"></i> Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /# sidebar -->


        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="float-left">
                            <div class="hamburger sidebar-toggle">
                                <span class="line"></span>
                                <span class="line"></span>
                                <span class="line"></span>
                            </div>
                        </div>
                        <div class="float-right">
                            <ul>

                                <li class="header-icon dib"><i class="ti-bell"></i>
                                    <div class="drop-down">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Recent Notifications</span>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
	                                                <div class="notification-content">
	                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
	                                                    <div class="notification-heading">Mr. John</div>
	                                                    <div class="notification-text">5 members joined today </div>
	                                                </div>
                                            </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Mariam</div>
                                                    <div class="notification-text">likes a photo of you</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Tasnim</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Mr. John</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li class="text-center">
                                                    <a href="#" class="more-link">See All</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="header-icon dib"><i class="ti-email"></i>
                                    <div class="drop-down">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">2 New Messages</span>
                                            <a href="email.html"><i class="ti-pencil-alt pull-right"></i></a>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/1.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Michael Qin</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Mr. John</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Michael Qin</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                <img class="pull-left m-r-10 avatar-img" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt="" />
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Mr. John</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                                </li>
                                                <li class="text-center">
                                                    <a href="#" class="more-link">See All</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="header-icon dib"><span class="user-avatar">John <i class="ti-angle-down f-s-10"></i></span>
                                    <div class="drop-down dropdown-profile">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Upgrade Now</span>
                                            <p class="trial-day">30 Days Trail</p>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-user"></i> <span>Profile</span></a></li>

                                                <li><a href="#"><i class="ti-email"></i> <span>Inbox</span></a></li>
                                                <li><a href="#"><i class="ti-settings"></i> <span>Setting</span></a></li>

                                                <li><a href="#"><i class="ti-lock"></i> <span>Lock Screen</span></a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> <span>Logout</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="content-wrap">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 p-r-0 title-margin-right">
                            <div class="page-header">
                                <div class="page-title">
                                    <h1>Hello, <span>Product Here</span></h1>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4 p-l-0 title-margin-left">
                            <div class="page-header">
                                <div class="page-title">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                        <li class="breadcrumb-item active">Home</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
               
                   
                    <section id="main-content">
                        <div class="row">
                        	<div class="col-md-6 col-sm-6">
                        	
                        	<form id="form_product" action="">
                        	
                        	
	                        	<div class="form-group">
								    <label for="productname">Name</label>
								    <input type="text" class="form-control" name="productname" id="productname"  placeholder="Enter name">
							  	</div>
							  	<div class="form-group">
								    <label for="price">Price</label>
								    <input type="text" class="form-control" name="price" id="price"  placeholder="Enter price">
							  	</div>
							  	
							  	
							  	<div class="form-check">
								  <input class="form-check-input" type="radio" name="sex" id="rd-male" value="Nam" checked>
								  <label class="form-check-label" for="exampleRadios1">
								   Male
								  </label>
								</div>
								<div class="form-check">
								  <input class="form-check-input" type="radio" name="sex" id="rd-female" value="Nữ">
								  <label class="form-check-label" for="exampleRadios2">
								    Female
								  </label>
								</div>
							  	
							  	<select id="category" class="form-control" name="category">
							      
							         <c:forEach var="value" items="${listcategory}">
											<option value="${value.getIdcategory()}">${value.getCategoryname()}</option>
									</c:forEach>
							        
							        
						      </select>
							  	<div class="form-group">
								    <label for="description">Description</label>
								    <textarea class="form-control" name="description" id="description" rows="5"></textarea>
							   </div>
							   <div class="form-group">
								    <label for="productimg">Image</label>
								    <input id="product_image"  type="file" class="form-control" name="productimg"  placeholder="Enter image">
							  	</div>
							  	
							  	
							  	
							  	
							  	<div id="container-detail-product">
							  		<div class="add_product_detail">
									  	<span>Product Detail</span>
									  	<select id="productsize" class="form-control" name="productsize">
									      
									         <c:forEach var="value" items="${listproductsize}">
													<option value="${value.getIdproductsize()}">${value.getProductsizename()}</option>
											</c:forEach>
									        
									        
								      </select><br>
								      <select id="productcolor" class="form-control" name="productcolor">
									      
									         <c:forEach var="value" items="${listproductcolor}">
													<option value="${value.getIdproductcolor()}">${value.getProductcolorname()}</option>
											</c:forEach>
									        
									        
								      </select><br>
								      
									  	<input type="number" class="form-control" name="amount" id="amount"  placeholder="Enter amount"><br>
									  	<button style="display:block;margin-right:0;margin-left:auto"  type="button" class="btn btn-danger btnclone"><i class="ti-hand-point-right"></i> Clone</button><br>
								  	</div>
							  	
							  	</div>
							  
							  	
							  	<div id="product_detail" class="add_product_detail product_detail_clone">
								  	<span>Product Detail</span>
								  	<button style="display:block;margin-right:0;margin-left:auto" type="button" class="btn btn-danger remove-clone"><i class="ti-hand-point-right"></i> Remove clone</button><br>
								  	<select id="productsize" class="form-control" name="productsize">
								      
								         <c:forEach var="value" items="${listproductsize}">
												<option value="${value.getIdproductsize()}">${value.getProductsizename()}</option>
										</c:forEach>
								        
								        
							      </select><br>
							      <select id="productcolor" class="form-control" name="productcolor">
								      
								         <c:forEach var="value" items="${listproductcolor}">
												<option value="${value.getIdproductcolor()}">${value.getProductcolorname()}</option>
										</c:forEach>
								        
								        
							      </select><br>
							      
								  	<input type="number" class="form-control" name="amount" id="amount"  placeholder="Enter amount"><br>
								  	
								  		<button style="display:block;margin-right:0;margin-left:auto" type="button" class="btn btn-danger btnclone"><i class="ti-hand-point-right"></i> Clone</button><br>
							  	</div>
							  	
							  	
							  	
							  	
							  	<button id="add_new_product" style="width:120px;" type="button" class="btn btn-success"><i class="ti-plus"></i> Add New</button><br>
							  	
							  	<button id="update_old_product" style="width:120px;margin-bottom: 20px" type="button" class="btn btn-success hidden" data-update><i class=""></i> Update</button><br>
							  	
							  	
							  	<button id="out_product" style="width:120px;" type="button" class="btn btn-success hidden"><i class=""></i> Out</button><br>
							  	
							  	</form>
							  	
							  	
							  	
							  	
							  	
	                        </div>
	                        <div class="col-md-6 col-sm-6">
	                         <div class="row" style="margin-top:20px;">
		                    	<div>
		                    		<button id="deleteallproduct" style="width:120px;" type="button" class="btn btn-info "><i class="ti-trash"></i> Delete </button><br>
		                    	</div>
		                    	
		                    </div>
	                        	<table id="table-product" class="table ">
								    <thead>
								      <tr>
								        <th>
								        	<div class="checkbox">
											  	<label><input id="checkall" type="checkbox" value=""></label>
											</div>
								        </th>
								        <th>Name</th>
								        <th>Price</th>
								        <th>For</th>
								      </tr>
								    </thead>
								    <tbody>
								      <tr>
								       <c:forEach var="value" items="${listproduct}">
											<tr>
												<td>
													<div class="checkbox">
													  	<label><input class="checkboxproduct" type="checkbox" value="${value.getIdproduct()}"></label>
													</div>
												</td>
												<td class="nameproduct-cart" data-idproductcart="${value.getIdproduct()}">${value.getProductname() }</td>
												<td ><span> ${value.getPrice()} </span></td>
												<td ><span> ${value.getSex()} </span></td>
												<td class="updateproduct btn btn-warning" data-id="${value.getIdproduct()}">Update</td>
											</tr>
										</c:forEach>
								       
								      </tr>
								    </tbody>
								</table>
								<nav aria-label="Page navigation example">
							  <ul class="pagination">
							  <c:forEach var="i" begin="1" end="${sumpage}" >						  		
							  		 <c:choose>
								         <c:when test = "${i == 1}">
								            <li class="page-item active"><a class="page-link " href="#">${i}</a></li>
								         </c:when>
								       
								         <c:otherwise>
								            <li class="page-item"><a class="page-link" href="#">${i}</a></li>
								         </c:otherwise>
								      </c:choose>
							  
								    
								</c:forEach>
							  
							  </ul>
							</nav>
	                        </div>
	                         
                        	
                                       
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer">
                                    <p>2018 © Admin Board. - <a href="#">example.com</a></p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div id="search">
            <button type="button" class="close">×</button>
            <form>
                <input type="search" value="" placeholder="type keyword(s) here" />
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
        
    
        <script src='<c:url value ="/resources/JS/jquery-3.4.1.min.js"/>'></script>       
        <script src='<c:url value ="/resources/admin/js/lib/jquery.nanoscroller.min.js"/>'></script>
        <script src='<c:url value ="/resources/admin/js/lib/menubar/sidebar.js"/>'></script>
        <script src='<c:url value ="/resources/admin/js/lib/preloader/pace.min.js"/>'></script>
        <script src='<c:url value ="/resources/admin/js/lib/bootstrap.min.js"/>'></script>
        <script src='<c:url value ="/resources/admin/js/lib/flot-chart/jquery.flot.js"/>'></script>
		<script src='<c:url value ="/resources/admin/js/lib/weather/jquery.simpleWeather.min.js"/>'></script>
		<script src='<c:url value ="/resources/admin/js/lib/weather/weather-init.js"/>'></script>
		<script src='<c:url value ="/resources/admin/js/lib/owl-carousel/owl.carousel.min.js"/>'></script>
		<script src='<c:url value ="/resources/admin/js/lib/owl-carousel/owl.carousel-init.js"/>'></script>
		<script src='<c:url value ="/resources/admin/js/scripts.js"/>'></script>
    </body>

</html>


	
