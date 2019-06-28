package com.c0419h1_nhom1.shopthoitrang.controller;

import com.c0419h1_nhom1.shopthoitrang.entity.HoaDon;
import com.c0419h1_nhom1.shopthoitrang.entity.SanPham;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet", urlPatterns = "/cart")
public class CartServlet extends HttpServlet {

    private HoaDon hoadonDAO = new HoaDon();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createHoaDon":
                try {
                    createHoaDon(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createHoaDon":

                break;
            default:
                ShowFormHoaDon(request, response);
                break;
        }
    }

    private void createHoaDon(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = 0;
        String ngayban = request.getParameter("ngayban");
        int id_khachhang = Integer.parseInt(request.getParameter("id_khachhang"));
        int id_nhanvien = Integer.parseInt(request.getParameter("id_nhanvien"));
        double tongtien = Double.parseDouble(request.getParameter("tongtien"));
        double vat = Double.parseDouble(request.getParameter("vat"));
        double thanhtien = Double.parseDouble(request.getParameter("thanhtien"));

        HoaDon newHoaDon = new HoaDon(id, ngayban, id_khachhang, id_nhanvien, tongtien, vat, thanhtien);
        this.hoadonDAO.createHoaDon(newHoaDon);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Cart/index.jsp");
        request.setAttribute("message", "New customer was created");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void ShowFormHoaDon(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        List<SanPham> listSessionSanpham = (List<SanPham>) session.getAttribute("listSessionCartSanpham");
        // đổ giỏ hàng qua cart
        List<SanPham> newShowCart = new ArrayList<>();
        for (int i = 0; i < listSessionSanpham.size(); i++) {
            newShowCart.add(listSessionSanpham.get(i));
        }
        request.setAttribute("newShowCart", newShowCart); // đổ dữ liệu giỏ hàng qua cart
        RequestDispatcher dispatcher = request.getRequestDispatcher("Views/Cart/index.jsp");
        request.setAttribute("message", "New customer was created");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
