package com.c0419h1_nhom1.shopthoitrang.controller;

import com.c0419h1_nhom1.shopthoitrang.entity.HoaDon;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

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

    private void ShowFormHoaDon(HttpServletRequest request, HttpServletResponse response) {


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
