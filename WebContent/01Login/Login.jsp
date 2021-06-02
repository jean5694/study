<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample#1" %>

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>로그인 폼</title>
</head>
<body>
	<s1:navbar />

	<div class="container ">

		<form action="<%=request.getContextPath()%>/01Login/LoginPage.jsp" method="post">
			<div class="mb-3" >
				<label for="InputID" class="form-label">아이디</label> <br>
				<input type="text" name="id" id="InputID" class="form-control">
			</div>
			<div class="mb-3">
				<label for="InputPassword" >패스워드</label> <br>
				<input type="password" name="password" id="InputPassword" class="form-control">
			</div>	
			
			<div>
			<br> 
			</div>
			
			
			<div>
				<button type="submit" class="btn btn-dark">로그인</button>
				<button type="button" onclick=" location.href='sessionJoin.jsp' " class="btn btn-dark">회원가입</button>
			</div>
			
		</form>
		
	</div>
</body>
</html>