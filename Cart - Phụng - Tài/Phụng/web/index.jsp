<%@ page import="com.c0419h1_nhom1.shopthoitrang.jdbc.DBConnection" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/25/2019
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<%
  DBConnection db = new DBConnection();
  Connection conn = db.getConnection();
  if(conn == null){
    out.print("connection fail!");
  }
  else{
    out.print("connection success!");
  }
%>
</body>
</html>