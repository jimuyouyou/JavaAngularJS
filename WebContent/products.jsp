<%@ page language="java" contentType="text; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.king.Products"%>

<%
	Products p = new Products();
	out.println(p.getProducts());
%>
