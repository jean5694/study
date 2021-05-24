<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	session.invalidate();
 	
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그아웃</title>
</head>
<body> 
<div class="container">
	<script> 
	alert("로그아웃하였습니다.");
	location.href = "sessionLoginForm.jsp";
	</script>
	
	<%--
	response.sendRedirect("sessionLoginForm.jsp"); //경고창 알림 없이 바로 넘어가서 스크립트로 대체함
	--%>
</div>
</body>
</html>