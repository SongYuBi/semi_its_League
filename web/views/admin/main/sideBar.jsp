<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Bootstrap core CSS-->
<link href="/semi/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="/semi/resources/css/all.min.css" rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="/semi/resources/css/dataTables.bootstrap4.css" rel="stylesheet">
<link href="/semi/resources/css/sb-admin.css" rel="stylesheet">
<style>
#wrapper ul {
	
}

.sidebar navbar-nav {
	width: 150px;
}

.sidebar .nav-link {
	min-width: 150px;
	min-height: 200px;
	margin-top: 30px;
	margin-left: -20px;
}

.sidebar .sidebar-image {
	margin-left: 45px;
	margin-top: 30px;
	align-content: center;
}

.sidebar-text {
	margin-left: -50px;
	margin-top: 10px;
	text-align: center;
}

p {
	font-size: 20px;
	margin-left: 5px;
}
</style>

</head>

<body id="page-top">
	
	<!-- logo -->

	<nav class="navbar navbar-expand navbar-dark static-top"
		style="background: skyblue;">

		<a class="navbar-brand mr-1" href="index.html"> <img
			src="/semi/resources/image/chu/logo.png" width="200px" height="75px"
			style="margin-left: 10px;">
		</a>

		<!-- Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i></i>
					</button>
				</div>
			</div>
		</form>

		<!-- search icon -->
		<ul class="navbar-nav ml-auto ml-md-0">

			<li class="nav-item dropdown no-arrow"><a class="nav-link"
				href="#" id="userDropdown" role="button"> <i
					class="fas fa-user-circle fa-fw"></i>
			</a></li>
		</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<div class="sidebar" style="max-width: 150px;">
			<span class="nav-item active"> <a class="nav-link"
				href="index.html"> <img class="sidebar-image"
					src="/semi/resources/image/chu/home_un.png" width="60px"
					style="margin-top: -10px;">
					<p class="sidebar-text">HOME</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				id="pagesDropdown" role="button" style="margin-top: -120px;"> <img
					class="sidebar-image" src="/semi/resources/image/chu/league_un.png"
					width="40px" style="margin-left: 52px;">
					<p class="sidebar-text">리그 관리</p>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown"></div> <br>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -90px; margin-left: -22px;"> <img
					class="sidebar-image"
					src="/semi/resources/image/chu/referee_un.png" width="60px">
					<p class="sidebar-text">심판 관리</p>
			</a>
			</span> 
			
			<span class="nav-item dropdown"> 
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-top: -70px;"> 
			<img class="sidebar-image" src="/semi/resources/image/chu/user_un.png" width="60px">
					<p class="sidebar-text">회원 관리</p>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown" x-placement="bottom-start" style="position:absolute; width:50px;
			will-change: transform; rop; 0px; left; 0px; margin-top:-20px; transform: translate3d(0px, 63px, 0px);">
				<a class="dropdown-item" href="/semi/views/admin/member/user.jsp">회원관리</a>
				<a class="dropdown-item" href="/semi/views/admin/member/exile.jsp">추방 관리</a>
				<a class="dropdown-item" href="/semi/views/admin/member/withdraw.jsp">탈퇴 관리</a>
				</div>
			</span> 
			
			<span class="nav-item"> 
			<a class="nav-link" href="#" style="margin-top: -70px;"> 
			<img class="sidebar-image" src="/semi/resources/image/chu/add_user_un.png" width="60px">
			<p class="sidebar-text" style="letter-spacing: -2px;">가입승인 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -65px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/board_un.png" width="45px"
					style="margin-left: 50px;">
					<p class="sidebar-text">게시판 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -55px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/ground_un.png" width="60px"
					style="margin-left: 43px;">
					<p class="sidebar-text">구장 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -72px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/profit_un.png" width="60px"
					style="margin-left: 42px;">
					<p class="sidebar-text">매출 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -55px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/my account_un.png" width="60px"
					style="margin-left: 43px;">
					<p class="sidebar-text">My Account</p>
			</a>
			</span>
		</div>
		
		        <!-- Bootstrap core JavaScript-->
				<script src="/semi/resources/js/jquery.min.js"></script>
				<script src="/semi/resources/js/bootstrap.bundle.min.js"></script>

		
				<!-- Custom scripts for all pages-->
				<script src="/semi/resources/js/sb-admin.min.js"></script>

				<!-- Demo scripts for this page-->
				<script src="/semi/resources/js/datatables-demo.js"></script>
				<script src="/semi/resources/js/chart-area-demo.js"></script>
</body>
</html>