<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Admin UI</title>

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

                        <li><a href='<c:url value ="/admin/product/"/>'><i class="ti-crown"></i> Product </a>
                       
                        
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
                                    <h1>Hello, <span>Welcome Here</span></h1>
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
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Today Expenses </div>
                                            <div class="stat-digit"> <i class="fa fa-usd"></i>8500</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-success w-85" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Income Detail</div>
                                            <div class="stat-digit"> <i class="fa fa-usd"></i>7800</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-primary w-75" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Task Completed</div>
                                            <div class="stat-digit"> <i class="fa fa-usd"></i> 500</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-warning w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-two">
                                        <div class="stat-content">
                                            <div class="stat-text">Task Completed</div>
                                            <div class="stat-digit"> <i class="fa fa-usd"></i>650</div>
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-danger w-65" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                        <!-- /# row -->

                        <div class="row">
                           
                            <!-- /# column -->
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>New Orders </h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Product</th>
                                                        <th>quantity</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="round-img">
                                                                <a href=""><img class="w-35" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt=""></a>
                                                            </div>
                                                        </td>
                                                        <td>Lew Shawon</td>
                                                        <td><span>Dell-985</span></td>
                                                        <td><span>456 pcs</span></td>
                                                        <td><span class="badge badge-success">Done</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="round-img">
                                                                <a href=""><img class="w-35" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt=""></a>
                                                            </div>
                                                        </td>
                                                        <td>Lew Shawon</td>
                                                        <td><span>Asus-565</span></td>
                                                        <td><span>456 pcs</span></td>
                                                        <td><span class="badge badge-warning">Pending</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="round-img">
                                                                <a href=""><img class="w-35" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt=""></a>
                                                            </div>
                                                        </td>
                                                        <td>lew Shawon</td>
                                                        <td><span>Dell-985</span></td>
                                                        <td><span>456 pcs</span></td>
                                                        <td><span class="badge badge-success">Done</span></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="round-img">
                                                                <a href=""><img class="w-35" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt=""></a>
                                                            </div>
                                                        </td>
                                                        <td>Lew Shawon</td>
                                                        <td><span>Asus-565</span></td>
                                                        <td><span>456 pcs</span></td>
                                                        <td><span class="badge badge-warning">Pending</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="round-img">
                                                                <a href=""><img class="w-35" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt=""></a>
                                                            </div>
                                                        </td>
                                                        <td>lew Shawon</td>
                                                        <td><span>Dell-985</span></td>
                                                        <td><span>456 pcs</span></td>
                                                        <td><span class="badge badge-success">Done</span></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="round-img">
                                                                <a href=""><img class="w-35" src='<c:url value ="/resources/admin/images/avatar/3.jpg"/>' alt=""></a>
                                                            </div>
                                                        </td>
                                                        <td>Lew Shawon</td>
                                                        <td><span>Asus-565</span></td>
                                                        <td><span>456 pcs</span></td>
                                                        <td><span class="badge badge-warning">Pending</span></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
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


	
