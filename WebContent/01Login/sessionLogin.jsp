<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<div class="container">
	
	<script>
	alert("로그인에 성공했습니다.");
	</script> 
	<%= id%>님 반갑습니다.	


	<br>
	<br>
	<%
    session.setMaxInactiveInterval(1*60); // 초 단위
%>
	
	
	<button type="button" onclick=" location.href='sessionLogout.jsp' " class="btn btn-primary">Logout</button>
	
	
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
