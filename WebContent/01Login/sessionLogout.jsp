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
	로그아웃하였습니다.
	
	<%
	response.sendRedirect("sessionLoginForm.jsp");
	%>
</div>
</body>
</html>