<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRJ_SHOP</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: auto;
                max-height: 100%;
            }
        </style>
    </head>
    <body>

        <div class="container">

            <a class="navbar-brand" href="home"><i class="fa fa-home fa-lg" aria-hidden="true"></i></a>
            <div class="table  mt-4">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-10">
                            <h5>Giỏ hàng</h5>
                        </div>               
                    </div>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="total" value="0"/>
                        <c:set var="tt" value="0"/>
                        <c:forEach items="${cart}" var="o">
                            <c:set var="tt" value="${tt+1}"/>
                            <c:set var="total" value="${total+o.quantity*o.product.price}"/>
                            <tr>
                                <td>${tt}</td>
                                <td>${o.product.name}</td>
                                <td style="width: 200px; height: 180px;">
                                    <img src="${o.product.img}">
                                </td>
                                <td>
                                    <fmt:setLocale value = "vi-VN"/>
                                    <fmt:formatNumber value = "${o.product.price}" type = "currency" />
                                </td>
                                <td style="text-align: center">
                                    <button><a href="process?num=-1&id=${o.product.id}">-</a></button>
                                    ${o.quantity}
                                    <button><a href="process?num=1&id=${o.product.id}">+</a></button>
                                </td>
                                <td>
                                    <fmt:setLocale value = "vi-VN"/>
                                    <fmt:formatNumber  value = "${o.quantity*o.product.price}" type = "currency"/>
                                </td>
                                <td class="row">
                                    <form action="process" method="post">
                                        <input type="hidden" name="id" value="${o.product.id}"/>
                                        <input type="submit" value="X"/>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <h6>Total: <fmt:setLocale value = "vi-VN"/>
                    <fmt:formatNumber type="currency" value = "${total}" /></h6>



            </div>
            <form action="checkout" method="post">
                <input type="submit" value="Checkout"/>
            </form>
            <a href="home"><button type="button" class="btn btn-primary">Continue Shopping</button>

        </div>

    </a>
    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>