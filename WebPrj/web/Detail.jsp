<%-- 
    Document   : Detail
    Created on : Dec 29, 2020, 5:43:04 PM
    Author     : trinh
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail </title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->

        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Minics</title>


        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet"> <!-- range slider -->

        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        <header class="header_section">
            <div class="header_top">
                <div class="container-fluid">
                    <div class="top_nav_container">
                        <div class="contact_nav">
                            <a href="">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span>
                                    Call : +01 123455678990
                                </span>
                            </a>
                            <a href="">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span>
                                    Email : minics@gmail.com
                                </span>
                            </a>
                        </div>
                        <form action="search" method="post" class="form-inline my-2 my-lg-0">
                            <from class="search_form">
                                <input value="${txtS}" name="txt" type="text" class="form-control" placeholder="Search here...">
                                <button  class="btn btn-secondary" type="submit">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </button>
                            </from>
                        </form>
                        <div class="user_option_box">
                            <a href="login" class="account-link">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <span>
                                    <c:if test="${sessionScope.account!=null}">
                                        <a class="nav-brand" href="logout" >LOGOUT</a>
                                    </c:if>
                                    <c:if test="${sessionScope.account==null}">
                                        <a class="nav-brand" href="login" >LOGIN</a>
                                    </c:if>
                                </span>
                            </a>
                            <a href="cart" class="cart-link">
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <span>
                                    Cart
                                </span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="header_bottom">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="home.jsp">
                            <span>
                                Minics
                            </span>
                        </a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class=""> </span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ">
                                <c:if test="${sessionScope.account!=null}">                                                             
                                    <li class="nav-item ">
                                        <a class="nav-link" href="profile.jsp">Hello ${sessionScope.account.username} </a>
                                    </li>               
                                </c:if>
                                <li class="nav-item ">
                                    <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <c:if test="${sessionScope.account.isSell==2}">                                                             
                                    <li class="nav-item">
                                        <a class="nav-link" href="managerad"> Manager Products</a>
                                    </li>         
                                </c:if>
                                <c:if test="${sessionScope.account.isAdmin==1}">                                                             
                                    <li class="nav-item">
                                        <a class="nav-link" href="manageracc"> Manager Account</a>
                                    </li>         
                                </c:if>
                                <c:if test="${sessionScope.account.isSell==1}">                                                             
                                    <li class="nav-item">
                                        <a class="nav-link" href="manager"> Manager Products</a>
                                    </li>       
                                </c:if>
                                <li class="nav-item  active">
                                    <a class="nav-link" href="home">Products</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="why.jsp">Why Us</a>
                                </li>

                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="heading_container heading_center" style="display: flex; margin-top: 10px;">
            <h5>
                <a style="padding-right: 10px;" href="home">All</a>
                <c:forEach items="${requestScope.listC}" var="c">
                    <a style="padding-right: 10px;" class="${tag == c.cid?"active":""}" href="category?id=${c.cid}">${c.cname}</a>
                </c:forEach>

            </h5>
        </div> 
        <div class="container" style=" margin-right:  50px; margin-top: 50px; margin-bottom: 50px">
            <div class="row">
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${detail.img}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency"> $</span><span class="num">${detail.price}</span>
                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>
                                                    ${detail.description}
                                                </p></dd>
                                        </dl>

                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    <dt>Quantity: </dt>
                                                    <dd>
                                                        <select class="form-control form-control-sm" style="width:70px;">
                                                            <option> 1 </option>
                                                            <option> 2 </option>
                                                            <option> 3 </option>
                                                        </select>
                                                    </dd>
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div> <!-- row.// -->
                                        <hr>
                                        <a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>
                                        <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->


                    </div>
                </div>
                <c:forEach items="${requestScope.listP}" var="p">
                    <div class="col-sm-6 col-lg-4">
                        <form action="cookiep" method="post" class="">

                            <div class="box">
                                <div class="img-box">
                                    <img src= ${p.img} alt="">

                                    <span class="add_cart_btn"> 
                                        <input type="hidden" value="${p.id}" name="id">
                                        <input type="hidden" value="1" name="num">
                                        <input  class="add_cart_btn" type="submit" value="Add To Cart" /><i aria-hidden="true"></i>
                                    </span>

                                </div>
                                <div class="detail-box">
                                    <h5>
                                        <a href="detail?pid=${p.id}" style="color: black">
                                            ${p.name}
                                        </a>
                                    </h5>
                                    <div class="product_info">
                                        <h5>
                                            <span>$</span> ${p.price}
                                        </h5>
                                        <div class="star_container">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>                           
                        </form>
                    </div>

                </c:forEach>
            </div>
        </div>

        <section class="info_section ">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="info_contact">
                            <h5>
                                <a href="" class="navbar-brand">
                                    <span>
                                        Minics
                                    </span>
                                </a>
                            </h5>
                            <p>
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                Hai Ba Trung - Ha Noi
                            </p>
                            <p>
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                +01 1234567890
                            </p>
                            <p>
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                minics@gmail.com
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_info">
                            <h5>
                                Information
                            </h5>
                            <p>
                                Minics luôn hướng đến chất lượng của sản phẩm và trải nghiệm của khách hàng.

                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_links">
                            <h5>
                                Useful Link
                            </h5>
                            <ul>
                                <li>
                                    <a href="index.html">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="about.html">
                                        About
                                    </a>
                                </li>
                                <li>
                                    <a href="product.html">
                                        Products
                                    </a>
                                </li>
                                <li>
                                    <a href="why.html">
                                        Why Us
                                    </a>
                                </li>
                                <li>
                                    <a href="testimonial.html">
                                        Testimonial
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_form ">
                            <h5>
                                Newsletter
                            </h5>
                            <form action="">
                                <input type="email" placeholder="Enter your email">
                                <button>
                                    Subscribe
                                </button>
                            </form>
                            <div class="social_box">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-youtube" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>                                        
        <!-- footer section -->
        <footer class="footer_section">
            <div class="container">
                <p>
                    &copy; <span id="displayYear"></span> All Rights Reserved By
                    <a href="https://html.design/">Free Html Templates</a>
                </p>
            </div>
        </footer>
        <!-- footer section -->
    </body>
</html>
