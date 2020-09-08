<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/defaultLayout.css">
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>Insert title here</title>

<style type="text/css">
.wBtn {
	position: relative;
}

.wBtn button {
	position: absolute;
	z-index: 10;
	top: 50%;
	transform: translateY(-50%);
	width: 71px;
	height: 71px;
	border-radius: 100%;
	border: none;
	background: transparent;
}

.wBtn button:before {
	font-family: "xeicon";
	color: #000;
	font-size: 30px;
}

.wBtn button.slick-prev {
	left: -250px;
	font-size: 0;
	color: transparent;
}

.wBtn button.slick-prev:before {
	content: "\e906";
}

.wBtn button.slick-next {
	right: -70px;
	font-size: 0;
	color: transparent;
}

.wBtn button.slick-next:before {
	content: "\e907";
}

*:focus {
	outline: none;
}

.datediv {
	background-color: white;
}

.datediv:hover {
	cursor: pointer;
}

.datedivB {
	background-color: #3534A5;
	border: none;
	color: white;
}

.wdiv {
	height: 120px !important;
	margin: 34px;
	width: 300px;
}

select {
	width: 100px;
	font-size: 20px !important;
	height: 40px;
	padding: 0 0 0 10px;
	margin: 0 !important;
}

h3 {
	font-size: 2em !important;
}

tr {
	height: 100px;
}

th {
	font-size: 2em;
	text-align: center !important;
}
 .toplo{
 	list-style:none;
    margin:0;
    padding:0;
 }
 ul li{
 	float: right;
 	margin : 2px;
 	}
 .lil,.banner{
 	cursor:pointer;
 	pont-size:20px;
 }
 .ta{
 	border-bottom:1px solid black;
 }

</style>

</head>
<body>
	<jsp:include
		page="${ application.contextPath }/views/common/sideBar.jsp"/>
		
	<div class="wrapper">
		<div class="head">
			<div align="right">
			<c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div onclick="login();">로그인</div></li>
					<li style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;">회원가입</li>
				</ul>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
			<div id="userInfo">
				<label><c:out value="${sessionScope.loginUser.pfName }" />
					님의 방문을 환영합니다.</label>
				<div class="btn" align="right">
					<div id="changeInfo" onclick="updateMember();">정보수정</div>
					<div id="logoutBtn" onclick="logout();">로그아웃</div>
				</div>
			</div>
		</c:if>
				<div align="center">
					<img src="../../../resources/image/banner.png"
						style="cursor: pointer">
				</div>
			</div>
		</div>
		<div class="header">
			<div class="visual" align="center">
				<div>
					<img src="../../../resources/image/footer.png" class="banner">
				</div>
				<div>
					<img src="../../../resources/image/footer.png" class="banner">
				</div>
				<div>
					<img src="../../../resources/image/footer.png" class="banner">
				</div>
			</div>
		</div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
			<div class="responsive wBtn">
				<div align="center" class="datediv wdiv datedivB" onclick="chioe1();">
					<h3>1<h3><span>목</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe2();">
					<h3>2<h3><span>금</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe3();">
					<h3>3<h3><span style="color: blue;">토</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe4();">
					<h3>4<h3><span style="color: red;">일</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe5();">
					<h3>5<h3><span>월</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe6();">
					<h3>6<h3><span>화</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe7();">
					<h3>7<h3><span>수</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe8();">
					<h3>8<h3><span>목</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe9();">
					<h3>9<h3><span>금</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe10();">
					<h3>10<h3><span style="color: blue;">토</span>
				</div>
			</div>
			<div class="container-my">
				<div class="table-wrapper">
					<div class="table-title"></div>

					<!-- table div -->
					<div style="margin-top: 70px;">
						<select id="selS">
							<option>서울</option>
							<option>경기</option>
							<option>인천</option>
							<option>대구</option>
							<option>대전</option>
							<option>부산</option>
						</select>

						<!-- 1 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb1"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }111</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 2 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb2"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }2222</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- 3 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb3"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }3333</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- 4 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb4"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }4444</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- 5 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb5"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }5555</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 6 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb6"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }66666</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- 7 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb7"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }77777</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- 8 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb8"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }88888</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- 9 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb9"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }9999</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 10 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb10"
								style="margin-top: 40px;">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>추가,삭제
											<p></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="c" begin="1" end="10" step="1">
										<tr>
											<td>${c }1010</td>
											<td>${c }</td>
											<td>${c }</td>
											<td><a class="add" title="Add" data-toggle="tolltip"></a>
												<a class="edit" title="Edit" data-toggle="tooltip"></a> <a
												class="delete" title="Delete" data-toggle="tooltip"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!--10번끝 -->
					</div>
				</div>
			</div>
		</div>
		<div class="footer" align="center">
			<img src="../../../resources/image/footer.png">
		</div>
	</div>

	<!-- slider banner -->
	<script type="text/javascript">
		$(".visual").slick({
			slidesToShow : 1, // 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,
			arrows : false,
			autoplay : true,
			autoplaySpeed : 3000,
			infinite : true,
			speed : 1000,
			pauseOnHover : true,
			responsive : [ { /* 반응형웹*/
				breakpoint : 960, /*  기준화면사이즈 */
				settings : {
					slidesToShow : 2
				}
			/*  사이즈에 적용될 설정 */
			}, { /* 반응형웹*/
				breakpoint : 768, /*  기준화면사이즈 */
				settings : {
					slidesToShow : 1
				}
			/*  사이즈에 적용될 설정 */
			} ]
		});
	</script>

	<!-- 날짜 -->
	<script type="text/javascript">
		$('.slider-single').slick({
			slidesToShow : 1,
			slidesToScroll : 1,
			arrows : true,
			fade : false,
			adaptiveHeight : true,
			infinite : false,
			useTransform : true,
			speed : 400,
			cssEase : 'cubic-bezier(0.77, 0, 0.18, 1)',
		});

		$('.responsive').slick({
			infinite : false,
			speed : 500,
			slidesToShow : 5,
			slidesToScroll : 5,
			responsive : [ {
				breakpoint : 1024,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1,
					infinite : true,
				}
			}, {
				breakpoint : 600,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			}, {
				breakpoint : 480,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			}
			]
		});

		$(".datediv").click(function() {
			$(this).siblings().removeClass("datedivB");
			$(this).addClass("datedivB");

			if ($(this).is(".datedivB") == "true") {

			}
		});
	</script>

	<script type="text/javascript">
		$(function(){
			for(var i = 1; i < 11; i++) {
				if(i === 1) {
					$(".tb1").show();
					$("")
				}else {
					$(".tb" + i).hide();				
				} 
			}
		});
	
		
		function chioe1() {
			
			for(var i = 1; i < 11; i++) {
				if(i === 1) {
					$(".tb1").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		
		function chioe2() {
			
			for(var i = 1; i < 11; i++) {
				if(i === 2) {
					$(".tb2").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		
		function chioe3() {
			for(var i = 1; i < 11; i++) {
				if(i === 3) {
					$(".tb3").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		
		function chioe4() {
			for(var i = 1; i < 11; i++) {
				if(i === 4) {
					$(".tb4").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		
		function chioe5() {
			for(var i = 1; i < 11; i++) {
				if(i === 5) {
					$(".tb5").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		
		function chioe6() {
			for(var i = 1; i < 11; i++) {
				if(i === 6) {
					$(".tb6").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		
		function chioe7() {
			for(var i = 1; i < 11; i++) {
				if(i === 7) {
					$(".tb7").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		function chioe8() {
			for(var i = 1; i < 11; i++) {
				if(i === 8) {
					$(".tb8").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}
		};
		function chioe9() {
			for(var i = 1; i < 11; i++) {
				if(i === 9) {
					$(".tb9").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}

		};
		function chioe10() {
			for(var i = 1; i < 11; i++) {
				if(i === 10) {
					$(".tb10").show();
				}else {
					$(".tb" + i).hide();				
					
				} 
				
			}

		};
		
		
		
		/*  로그인 창 띄우기 */
		function login(){
			console.log("asd");
			window.open('../login/loginView.jsp','로그인','resizeable=no width=500 height=300');
		}
		
		function logout(){
			var check = window.confirm("로그아웃");
			
			if(check){
				location.href ="<%=request.getContextPath()%>/logout.me";
			}
		}
		
	</script>


</body>
</html>