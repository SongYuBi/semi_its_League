<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/views/admin/common/adminSideBar_admin.jsp"></jsp:include>
	
	<div class="wrapper">
		<div class="header"><h1>관리자 메인</h1></div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop"></div>
		<div class="midBottom"></div>
		<div class="footer"></div>
	</div>
</body>
</html>