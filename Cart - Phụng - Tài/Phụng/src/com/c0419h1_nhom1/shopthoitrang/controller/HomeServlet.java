package com.c0419h1_nhom1.shopthoitrang.controller;

import com.c0419h1_nhom1.shopthoitrang.entity.NhaSanXuat;
import com.c0419h1_nhom1.shopthoitrang.entity.SanPham;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/homes")
public class HomeServlet extends HttpServlet {
    private SanPham sanPhamDAO = new SanPham();
    private NhaSanXuat nhaSanXuatDAO = new NhaSanXuat();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "search":
                try {
                    searchProductByName(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "create":
                break;
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "view":
                try {
                    viewDetail(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    private void viewDetail(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        SanPham sanpham = this.sanPhamDAO.getsanpham(id);

        NhaSanXuat nhaSanXuatbyid = this.nhaSanXuatDAO.getNhasanxuat(sanpham.getIdNhasanxuat());
        RequestDispatcher dispatcher;
        if (sanpham == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("sanpham", sanpham);
            request.setAttribute("nhasanxuat", nhaSanXuatbyid);
            dispatcher = request.getRequestDispatcher("Views/Detail/index.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) {
        List<SanPham> dssanpham = this.sanPhamDAO.getAllProduct();

        request.setAttribute("dssanpham", dssanpham);

        RequestDispatcher dispatcher = request.getRequestDispatcher("Views/Home/index.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchProductByName(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException{
        String nameProduct = request.getParameter("search");
        List<SanPham> dssanpham = this.sanPhamDAO.searchProductByName(nameProduct);

        request.setAttribute("dssanpham", dssanpham);

        RequestDispatcher dispatcher = request.getRequestDispatcher("Views/Home/index.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
