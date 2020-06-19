<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us</title>
   <jsp:include page="head.jsp"></jsp:include>
</head>
<body class="home">


<jsp:include page="header.jsp"></jsp:include>


<div class="container">
	<jsp:include page="ourcategories.jsp"></jsp:include>
</div>

<div class="page-banner about-banner">
    	<div class="banner-content">
    		<span class="subtitle">Welcome to Boutique - Let’s shop with us !</span>
            <h2 class="title">BOUTIQUE</h2>
    	</div>
    </div>
    <!-- About -->
    <div class="section-about ">
        <div class="container">
            <div class="section-title text-center style7 margin-top-60">
                <span class="sub-title">Welcome to Boutique - Beautiful Creative Ecommerce Template!</span>
                <h3>THE BOUTIQUE</h3>
            </div>

            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <blockquote class="style2 margin-bottom-10">Praesent accumsan, nunc eget semper cursus, tellus nisl sagittis massa, vel egestas erat odio sed sapien. In malesuada ipsum ut elit vestim pretium. In a luctus tellus. Fusce id euismod justo. Vivamus ullamcorper, lacus at congue feugiat, metus justo fermentum mauris Etiam rhoncus enim non nulla posuere bibendum et non lacus. Aliquam rhoncus vel metus vel elementum.</blockquote>
                </div>
            </div>
            <div class="text-center GreatVibes">
                Johnathan Doe
            </div>
        </div>
    </div>
    <!-- About -->                          


<div class="section-team margin-top-80">
        <div class="container">
            <div class="section-title text-center style7">
                <span class="sub-title">Our Awesome Team!</span>
                <h3>MEET OUR TEAM</h3>
            </div>
            <div class="teams owl-carousel nav-center-center nav-style7" data-loop="true" data-nav="true" data-dots="false" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":2},"1000":{"items":3}}'>
                <div class="team">
                    <div class="avatar">
                        <img src='<c:url value ="/resources/home/images/teams/1.jpg"/>'  alt="">
                    </div>
                    <div class="info">
                        <h3 class="name">John Doe</h3>
                        <span class="position">CEO/Founder Boutique</span>
                    </div>
                </div>
                <div class="team">
                    <div class="avatar">
                        <img src='<c:url value ="/resources/home/images/teams/2.jpg"/>' alt="">
                    </div>
                    <div class="info">
                        <h3 class="name">Christiana Q</h3>
                        <span class="position">Art Director/Founder Boutique</span>
                    </div>
                </div>
                <div class="team">
                    <div class="avatar">
                        <img src='<c:url value ="/resources/home/images/teams/3.jpg"/>' alt="">
                    </div>
                    <div class="info">
                        <h3 class="name">Jonathan Howard</h3>
                        <span class="position">Product Boutique</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ./Team -->
<div class="section-skills margin-top-80">
        <div class="container">
            <div class="section-title text-center style7">
                <span class="sub-title">We’ra all Talents!</span>
                <h3>OUR AWESOME SKILLS</h3>
            </div>

            <div class="kt-processbar">
                <div data-bgskill="#c99947" data-bgbar="#e4e4e4" data-percent="85" data-height="36" class="item-processbar">
                    <span class="processbar-title">ADOBE/PHOTOSHOP</span>
                    <div class="processbar-bg">
                        <div class="processbar-width">
                            <div class="processbar-percent">85%</div>
                        </div>
                    </div>
                </div>
                <div data-bgskill="#c99947" data-bgbar="#e4e4e4" data-percent="70" data-height="36" class="item-processbar">
                    <span class="processbar-title">LAYOUT/FRAME</span>
                    <div class="processbar-bg">
                        <div class="processbar-width">
                            <div class="processbar-percent">70%</div>
                        </div>
                    </div>
                </div>
                <div data-bgskill="#c99947" data-bgbar="#e4e4e4" data-percent="90" data-height="36" class="item-processbar">
                    <span class="processbar-title">UI DESIGN</span>
                    <div class="processbar-bg">
                        <div class="processbar-width">
                            <div class="processbar-percent">90%</div>
                        </div>
                    </div>
                </div>
                <div data-bgskill="#c99947" data-bgbar="#e4e4e4" data-percent="75" data-height="36" class="item-processbar">
                    <span class="processbar-title">FONT/TYPOGRAPHY</span>
                    <div class="processbar-bg">
                        <div class="processbar-width">
                            <div class="processbar-percent">75%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Section-testimonials-->
    <div class="section-testimonials margin-top-40">
        <div class="container">
            <div class="section-title text-center style7">
                <span class="sub-title">Testimonials!</span>
                <h3>WHAT OUR CILENTS SAY</h3>
            </div>
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="testimonials owl-carousel nav-center-center nav-style7" data-autoplay="true" data-loop="true" data-nav="false" data-dots="true" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'>
                        <div class="testimonial">
                            <div class="text">Praesent accumsan, nunc eget semper cursus, tellus nisl sagittis massa, vel egestas erat odio sed sapien. In malesuada ipsum ut elitpretium. In a luctus tellus. Fusce id euismod justo. Vivamus ullamcorper, lacus at congue feugiat, metus justo fermentum mauris Etiam rhoncus enim non nulla posuere bibendum et non lacus. Aliquam rhoncus vel metus vel elementum.</div>
                            <h3 class="name">Steve Job</h3>
                            <span class="position">CEO/Founder Apple</span>
                        </div>
                        <div class="testimonial">
                            <div class="text">Praesent accumsan, nunc eget semper cursus, tellus nisl sagittis massa, vel egestas erat odio sed sapien. In malesuada ipsum ut elitpretium. In a luctus tellus. Fusce id euismod justo. Vivamus ullamcorper, lacus at congue feugiat, metus justo fermentum mauris Etiam rhoncus enim non nulla posuere bibendum et non lacus. Aliquam rhoncus vel metus vel elementum.</div>
                            <h3 class="name">Steve Job</h3>
                            <span class="position">CEO/Founder Apple</span>
                        </div>
                        <div class="testimonial">
                            <div class="text">Praesent accumsan, nunc eget semper cursus, tellus nisl sagittis massa, vel egestas erat odio sed sapien. In malesuada ipsum ut elitpretium. In a luctus tellus. Fusce id euismod justo. Vivamus ullamcorper, lacus at congue feugiat, metus justo fermentum mauris Etiam rhoncus enim non nulla posuere bibendum et non lacus. Aliquam rhoncus vel metus vel elementum.</div>
                            <h3 class="name">Steve Job</h3>
                            <span class="position">CEO/Founder Apple</span>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <!-- ./Section-testimonials-->



<jsp:include page="footer.jsp"></jsp:include>

	
</body>
</html>