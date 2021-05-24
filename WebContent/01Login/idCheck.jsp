<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
 
<%
    request.setCharacterEncoding("EUC-KR"); //한글이 깨지지 않도록 문자셋 지정
    String id = request.getParameter("id"); //id를 파라미터로 얻어와서 id변수에 넣는다.
    boolean result = mMgr.checkId(id); //아이디가 중복되었는지 체크하는 변수
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	 
</div>
</body>
</html>