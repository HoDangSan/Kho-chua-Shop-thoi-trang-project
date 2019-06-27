<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/26/2019
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <tr>
                        <td>
                            <img src="${pageContext.request.contextPath}/Content/images/products/small/products-06.png" alt="">
                        </td>
                        <td>
                            <div class="shop-details">
                                <div class="productname">Tên Sản Phẩm</div>
                                <p>
                                    Product Code :<strong class="pcode">Dress 120</strong>
                                </p>
                            </div>
                        </td>
                        <td>
                            <h5>$200.00</h5>
                        </td>
                        <td>
                            <select name="">
                                <option selected value="1">1</option>
                                <option value="1">2</option>
                                <option value="1">3</option>
                            </select>
                        </td>
                        <td>
                            <h5><strong class="red">$200.00</strong></h5>
                        </td>
                        <td>
                            <a href="#"><img src="${pageContext.request.contextPath}/Content/images/remove.png" alt=""></a>
                        </td>
                    </tr>
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
