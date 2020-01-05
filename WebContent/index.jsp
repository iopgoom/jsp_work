<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%-- JSP 주석문입니다  이코드는 서블릿으로 변환할 때 자바 코드로 변하지 않아요. --%>

<%-- 문제 1. 변수 선언하고 출력하기 --%>
<h1>자기소개</h1>
<% String age = request.getParameter("age"); %>
<% String name = request.getParameter("name"); %>
<div>안녕하세요 저는 <%= age %>살 <%= name %>입니다.</div>

<%-- 문제 2. 구구단 출력하기 --%>
<h1>구구단</h1>
<div class = "gugu-wrap">
<% for(int i = 2 ; i < 10 ; i++){%>
	<div class = "gugu" style="border:1px solid black;">
	<h1><%= i %> 단 </h1>
	<%for(int j = 1 ; j < 10 ; j++){ %>		
		<p style="padding:0; margin:0;"><%= (i + " X " + j + " = " + i * j)	 %></p>
	<%}%>
	</div>
	<%}%>
</div>

<%-- 문제 3. ArrayList를 임포트해서 ArrayList를 이용해 1~10까지 저장하고 출력해주세요. --%>
<h1>ArrayList를 이용해 1~10까지 저장하고 출력</h1>
<div>
<% ArrayList<Integer> strs = new ArrayList<Integer>(); %>
<% for(int i = 1; i <= 10; i++) {
	strs.add(i);
}
	out.println(strs);%></div>









