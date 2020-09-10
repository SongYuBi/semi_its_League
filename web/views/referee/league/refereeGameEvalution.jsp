<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<style>
.wrapper {
	margin-left: 225px;
}

.header {
	background: gray;
}

#myCarousel {
	width: 25%;
	margin-left: 37.5%;
}

.carousel-control.left {
	color: currentColor;
}

.carousel-control.right {
	color: currentColor;
}

.midTop {
	background-color: white;
}

.matchDate {
	font-weight: 700;
	border: 1px solid black;
	padding: 10px;
}

.table_area {
	border: 2px solid black;
	padding: 15px;
}



</style>
</head>
<body>
	<jsp:include page="/views/referee/common/adminSideBar.jsp"></jsp:include>
	
	<div class="wrapper">
		<div class="header">
			<h1>경기 평가</h1>
		</div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
			<hr>
			<div id="myCarousel" class="carousel slide" data-ride="carousel"
				data-interval="false">
				<!-- Indicators -->
				<!-- <ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="" class="active"></li>
					<li data-target="#myCarousel" data-slide-to=""></li>
					<li data-target="#myCarousel" data-slide-to=""></li>
				</ol> -->

				<!-- Wrapper for slides -->

				<div class="carousel-inner">
					<div class="item" id="carouselVal1">
						<h1 id="carouselValue1" align="center">1</h1>
					</div>
					<div class="item" id="carouselVal2">
						<h1 id="carouselValue2" align="center">2</h1>
					</div>
					<div class="item" id="carouselVal3">
						<h1 id="carouselValue3" align="center">3</h1>
					</div>
					<div class="item" id="carouselVal4">
						<h1 id="carouselValue4" align="center">4</h1>
					</div>
					<div class="item" id="carouselVal5">
						<h1 id="carouselValue5" align="center">5</h1>
					</div>
					<div class="item" id="carouselVal6">
						<h1 id="carouselValue6" align="center">6</h1>
					</div>
					<div class="item" id="carouselVal7">
						<h1 id="carouselValue7" align="center">7</h1>
					</div>
					<div class="item" id="carouselVa8">
						<h1 id="carouselValue8" align="center">8</h1>
					</div>
					<div class="item" id="carouselVal9">
						<h1 id="carouselValue9" align="center">9</h1>
					</div>
					<div class="item" id="carouselVal10">
						<h1 id="carouselValue10" align="center">10</h1>
					</div>
					<div class="item" id="carouselVal11">
						<h1 id="carouselValue11" align="center">11</h1>
					</div>
					<div class="item" id="carouselVal12">
						<h1 id="carouselValue12" align="center">12</h1>
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" id="downCount"
					data-slide="prev" style="background: white"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next" style="background: white"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<div class="table_area">
				<div class="matchDate"></div>
				<div>
					<table class="table table-striped custab">
						<thead>
							<tr>
								<th>리그</th>
								<th>경기</th>
								<th>구장</th>
								<th class="text-center">결과입력</th>
							</tr>
						</thead>
						<tr>
							<td>A리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>종합운동장</td>
							<td class="text-center"><a class='btn btn-info btn-xs' id="myModalbtn">
							<span class="glyphicon glyphicon-edit"></span> Edit</a>
						</tr>
						<tr>
							<td>B리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>용산 아이파크</td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
						</tr>
						<tr>
							<td>C리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>용인 참스포츠</td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
						</tr>
					</table>

				</div>
				<div class="matchDate"></div>
				<div>
					<table class="table table-striped custab">
						<thead>
							<tr>
								<th>리그</th>
								<th>경기</th>
								<th>구장</th>
								<th class="text-center">결과입력</th>
							</tr>
						</thead>
						<tr>
							<td>A리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>종합운동장</td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit" id="modal_btn"></span> Edit</a>
						</tr>
						<tr>
							<td>B리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>용산 아이파크</td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
						</tr>
						<tr>
							<td>C리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>용인 참스포츠</td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
						</tr>
					</table>

				</div>

			</div>
		</div>
		<div class="midBottom"></div>
		<div class="footer"></div>
		
	</div>
	<jsp:include page="/views/referee/common/matchCreate_Modal.jsp"></jsp:include>
	<script>
		// 현재 달로 변경해주는 함수
		$(document).ready(function() {
			var month = getMonthDate() + 1;

			for (var i = 1; i < 13; i++) {
				var $carouselValue = $("#carouselValue" + i);
				if (month == $carouselValue.text()) {
					$("#carouselVal" + i).attr("class", "item active");
					console.log($("#carouselVal" + i).text());

				}
			}
		});

		// 현재 날짜로 변환
		$(document).ready(function() {
			var date = getDate();
			console.log(date);
			$(".matchDate").text(date);
		});

		// 날짜 구하기
		function getMonthDate() {
			var date = new Date().getMonth();
			return date
		};

		function getDate() {
			var date = new Date();
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var day = date.getDate();
			var formatDate = year + "-" + ("0" + month).slice(-2) + "-"
					+ ("0" + day).slice(-2);
			return formatDate;
		}

	</script>
</body>
</html>