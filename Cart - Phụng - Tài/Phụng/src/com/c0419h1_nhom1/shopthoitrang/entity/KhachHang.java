package com.c0419h1_nhom1.shopthoitrang.entity;

import com.c0419h1_nhom1.shopthoitrang.jdbc.DBConnection;

public class KhachHang extends DBConnection {
    private int id;
    private String ten;
    private String sodienthoai;
    private String diachi;
    private String ghichu;

    public KhachHang() {
    }

    public KhachHang(int id, String ten, String sodienthoai, String diachi, String ghichu) {
        this.id = id;
        this.ten = ten;
        this.sodienthoai = sodienthoai;
        this.diachi = diachi;
        this.ghichu = ghichu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }
}
