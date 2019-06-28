<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/25/2019
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <title>Welcome to FlatShop</title>
    <!--linkcss-->
    <jsp:include page="../Shared/_linkcss.jsp"></jsp:include>
    <!--linkcss-->
</head>

<body>
<div class="wrapper">
    <!-- header-->
    <jsp:include page="../Shared/_header.jsp"></jsp:include>
    <!-- header-->

    <div class="clearfix">
    </div>
    <!--   body contact-->
    <div class="container_fullwidth">
        <div class="container shopping-cart">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="title">Shopping Cart</h3>
                    <div class="clearfix">
                    </div>
                    <table class="shop-table">
                        <thead>
                        <tr>
                            <th>Hình ảnh</th>
                            <th>Thông tin</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                            <th>Xóa</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items='${requestScope["newShowCart"]}' var="sanpham">
                            <tr>
                                <td>
                                    <img src="${pageContext.request.contextPath}/Content/images/products/${sanpham.getHinhanh()}"
                                         alt="">
                                </td>
                                <td>
                                    <div class="shop-details">
                                        <div class="productname">${sanpham.getTensp()}</div>
                                        <p>
                                            Product Code :<strong class="pcode">Dress 120</strong>
                                        </p>
                                    </div>
                                </td>
                                <td>
                                    <h5 id="giasp${sanpham.getId()}">${sanpham.getGia()}</h5>
                                </td>

                                <td>
                                    <input type="number" name="soluongcart" id="soluongcart" value="1" placeholder="Số lượng"
                                           oninput="tongtien(this.value)">
                                </td>

                                <td>
                                    <h5><a class="red" id="tongtiensp${sanpham.getId()}">${sanpham.getGia()}</a></h5>
                                </td>
                                <td>
                                    <a href="#"><img src="${pageContext.request.contextPath}/Content/images/remove.png"
                                                     alt=""></a>
                                </td>
                                <script>
                                    function tongtien(value) {
                                        value = parseInt(value);
                                        var getTongtienInput = parseInt(document.getElementById("giasp${sanpham.getId()}").value);
                                        document.getElementById("tongtiensp${sanpham.getId()}").innerHTML = ${sanpham.getGia()} * value;
                                    }
                                </script>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="6">
                                <button class=" pull-right"><a href="#">Quay lại lướt shop</a></button>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                    <!-- Contact -->
                    <div class="checkout-page">
                        <ol class="checkout-steps">
                            <li class="steps active">
                                <a class="step-title">Điền Thông tin liên hệ</a>
                                <div class="step-description">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <div class="run-customer">
                                                <h5>Thông tin liên hệ</h5>
                                                <form>
                                                    <div class="form-row">
                                                        <label class="lebel-abs">Tên<strong
                                                                class="red">*</strong></label>
                                                        <input type="text" class="input namefild" name="">
                                                    </div>
                                                    <div class="form-row"><label class="lebel-abs">Địa chỉ<strong
                                                            class="red">*</strong></label>
                                                        <input type="text" class="input namefild" name="">
                                                    </div>
                                                    <div class="form-row"><label class="lebel-abs">Số điện thoại<strong
                                                            class="red">*</strong></label>
                                                        <input type="text" class="input namefild" name="">
                                                    </div>
                                                    <input type="submit" value="Login">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ol>
                    </div>
                    <!--End Contact -->
                </div>
            </div>
        </div>
    </div>

    <!--    body contact-->
    <div class="clearfix">
    </div>
    <!--    footer-->
    <jsp:include page="../Shared/_footer.jsp"></jsp:include>
    <!--    footer-->
</div>
<!-- Bootstrap core JavaScript===============================================-->
<jsp:include page="../Shared/_linkjs.jsp"></jsp:include>

</body>

</html>