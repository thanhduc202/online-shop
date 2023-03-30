<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->

        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Minics| Product</title>


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

            .pagination a{
                color: black;
                font-size: 20px;
                float: right;
                padding:8px 16px;
                text-decoration: none;
            }
            .pagination a.active{
                color: white;
                background-color: #0066cc;
            }
            .pagination a:hover:not(.active){
                background-color: #0066cc;
                color: white;
            }
            .cat a{
                color: black;
                text-decoration: none;
            }
            .cat a.active{
                color: blue;
            }
        </style>
    </head>

    <body class="sub_page">

        <div class="hero_area">
            <!-- header section strats -->
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
                                <a href="" class="account-link">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <span>
                                        <c:if test="${sessionScope.account!=null}">
                                            <a  href="logout" >LOGOUT</a>
                                        </c:if>
                                        <c:if test="${sessionScope.account==null}">
                                            <a  href="login" >LOGIN</a>
                                        </c:if>
                                    </span>
                                </a>
                                <a href="cart" class="cart-link">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <span>
                                        Cart(${requestScope.size}) 
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
                                            <a class="nav-link" href="profile">Hello ${sessionScope.account.username} </a>
                                        </li>               
                                    </c:if>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="home">Home</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="product">Product</a>
                                    </li>
                                    <c:if test="${sessionScope.account.isAdmin==1}">                                                             
                                        <li class="nav-item">
                                            <a class="nav-link" href="manageracc"> Manager Account</a>
                                        </li>         
                                    </c:if>
                                    <c:if test="${sessionScope.account.isSell==2}">                                                             
                                        <li class="nav-item">
                                            <a class="nav-link" href="managerad"> Manager Products</a>
                                        </li>         
                                    </c:if>
                                    <c:if test="${sessionScope.account.isSell==1}">                                                             
                                        <li class="nav-item">
                                            <a class="nav-link" href="manager"> Manager Products</a>
                                        </li>       
                                    </c:if>

                                    <li class="nav-item">
                                        <a class="nav-link" href="why.jsp">Why Us</a>
                                    </li>

                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
            <!-- end header section -->
        </div>


        <!-- product section -->
        <section class="slider_section ">
            <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container ">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="detail-box">
                                        <h1>
                                            Welcome to our shop
                                        </h1>
                                        <p>
                                            Mô hình cao cấp - chính hãng.
                                        </p>                
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="img-box">
                                        <img src="images/36391dabf22d51c98c373704092ecddf8c6b16416b8773e99dc518bb.jpg" alt="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </section>
        <section class="product_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our Products
                    </h2>
                    <div style="display: flex; margin-top: 10px;" class="cat" >
                        <h5>    

                            <a <c:if test="${requestScope.tag==-1}">class="active"</c:if> style="padding-right: 10px;" href="product">       
                                    All                         
                                </a>|
                            <c:forEach items="${requestScope.listC}" var="c">
                                <a  style="padding-right: 10px;" class="${tag == c.cid?"active":""}" href="category?id=${c.cid}">${c.cname} </a>|
                            </c:forEach>

                        </h5>
                    </div> 

                </div>
                <h6>Sắp xếp theo</h6>
                <div class="sapxep">  
                    <!-- change from post to get method -->
                    <form action="product" method="get" id="f">
                        <select name="sortname" onchange="document.getElementById('f').submit()">
                
                            <option  value="0">Option</option>
                            <option ${requestScope.sortname.equals("1")?"selected":""} value="1">a-z</option>
                            <option ${requestScope.sortname=="2"?"selected":""} value="2">z-a</option>
                            <option ${requestScope.sortname=="3"?"selected":""} value="3">Price↥</option>
                            <option ${requestScope.sortname=="4"?"selected":""} value="4">Price↧</option>

                        </select>
                    </form>
                </div>
                <c:if test="${requestScope.listP.size()==0}">
                    <h4 style="text-align: center;margin-top: 50px"> Không có sản phẩm</h4>
                </c:if>
                <c:if test="${requestScope.listP!=nul}">
                    <div class="row">
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
                </c:if>

                <c:set var="page" value="${requestScope.page}"/>
                <div class="pagination">
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                        <a class="${i==page?"active":""}" href="product?page=${i}&&sortname=${requestScope.sortname}">${i}. &nbsp;&nbsp;&nbsp;</a>
                    </c:forEach>
                </div>
            </div>

        </section>

        <!-- end product section -->


        <!-- info section -->
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

        <!-- end info_section -->


        <!-- footer section -->
        <footer class="footer_section">
            <div class="container">
                <p>
                    &copy; <span id="displayYear"></span> All Rights Reserved By
                    <a href="https://html.design/">Thanh    </a>
                </p>
            </div>
        </footer>
        <!-- footer section -->

        <!-- jQery -->
        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>
        <script type="text/javascript">
                            function buy(id) {
                                document.f.action = "cookiep?id=" + id + "&num=" + 1;
                                document.f.submit();
                            }

                            function searchByName(param) {
                                var txtSearch = param.value;
                                $.ajax({
                                    url: "/Project_banhang/searchAjax",
                                    type: "get", //send it through get method
                                    data: {
                                        txt: txtSearch
                                    },
                                    success: function (data) {
                                        var row = document.getElementById("content");
                                        row.innerHTML = data;
                                    },
                                    error: function (xhr) {
                                        //Do Something to handle error
                                    }
                                });
                            }
        </script>  

    </body>

</html>