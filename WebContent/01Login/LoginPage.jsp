<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample#1" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)) {
		session.setAttribute("MEMBERID", id);
	

%>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인 성공</title>
</head>
<body>
<s1:navbar />
<div class="container">
	<script>
		alert("로그인에 성공했습니다.");
	</script> 
	
	<div class="row justify-content-center">
	<div class="mt-5 row" >
		<%= id%>님 반갑습니다.	
	</div>
	</div>
		<br>
		<br>
		<%--
 		   session.setMaxInactiveInterval(1*60); // 초 단위
		--%>
	<div class="row justify-content-center">
		<div class="mt-5 row" >
			<button type="button" onclick=" location.href='Logout.jsp' " class="btn btn-dark">로그아웃</button>
		</div>
	</div>
	
</div>
</body>
</html>

<%
	} else { //로그인 실패시
		%>
		<script>
		alert("로그인에 실패하였습니다.");
		history.go(-1);
		</script>
		<% 
	}

%>
