<%--
  Created by IntelliJ IDEA.
  User: SanArima
  Date: 25-Jun-19
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-sm-2">
                <div class="logo"><a href="/homes"><img
                        src="${pageContext.request.contextPath}/Content/images/logo.png" alt="FlatShop"></a></div>
            </div>
            <div class="col-md-10 col-sm-10">
                <div class="header_top">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                        </div>
                        <div class="col-md-3">
                            <ul class="usermenu">

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="header_bottom">
                    <ul class="option">
                        <li id="search" class="search">
                            <form method="post" action="/homes?action=search">
                                <input class="search-input-detail" type="text" name="search" placeholder="Enter your search term...">
                                <input class="search-detail" type="submit" value="">
                            </form>
                        </li>
                        <li class="option-cart">
                            <a href="#" class="cart-iconcss">cart <span class="cart_no">02</span></a>
                            <ul class="option-cart-item">
                                <li>
                                    <div class="cart-item">
                                        <div class="image"><img
                                                src="${pageContext.request.contextPath}/Content/images/products/thum/products-01.png"
                                                alt="">
                                        </div>
                                        <div class="item-description">
                                            <p class="name">Lincoln chair</p>
                                            <p>Size: <span class="light-red">One size</span><br>Quantity: <span
                                                    class="light-red">01</span></p>
                                        </div>
                                        <div class="right">
                                            <p class="price">$30.00</p>
                                            <a href="#" class="remove"><img
                                                    src="${pageContext.request.contextPath}/Content/images/remove.png"
                                                    alt="remove"></a>
                                        </div>
                                    </div>
                                </li>
                                <li><span class="total">Total <strong>$60.00</strong></span>
                                    <button class="checkout" onClick="location.href='checkout.html'">CheckOut
                                    </button>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span
                                class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li style="top:15px;"><a class="active" href="/homes">HOME</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>