<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.TreeMap" %>
<%@page import="demo.AjaxDemo" %>
<%@page import="demo.Connect" %>
<%@page import="com.google.gson.Gson" %>

 <%
 String empid = request.getParameter("empid");
 
 TreeMap<String, String> tm = new AjaxDemo().getData(empid);
 
     Gson g = new Gson();
	String json = g.toJson(tm);
	System.out.println(json);
	out.println(json);
 
 %>