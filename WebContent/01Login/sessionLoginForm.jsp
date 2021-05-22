<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	<div class="container">
		<div class="mb-3 row">
			<form action="<%=request.getContextPath()%>/01Login/sessionLogin.jsp"
				method="post">
				<div class="mb-3">
				<label for="InputID" class="form-label">ID</label>
				<input type="text" name="id" class="form-control" id="InputID" class="form-control" >
				</div>
				<div class="mb-3">
				<label for="InputPassword" class="form-label">Password</label>
				<input type="password" name="password" id="InputPassword" class="form-control">
				</div>
				<button type="submit" class="btn btn-primary" >login</button>
			</form>
		</div>


	</div>
</body>
</html>