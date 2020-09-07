<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<link rel="stylesheet" type="text/css"
   href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
   <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript"
   src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>Insert title here</title>
<style>
.header {
	grid-area: header;
	background-color: LightSeaGreen;
}

.leftCol {
	grid-area: leftCol;
	background-color: orange;
}

.rightCol {
	grid-area: rightCol;
	
}

.midTop {
	grid-area: midTop;

	
}
.img_back{	

	width:80%;
	height:300px;
	background-image:url("../../../resources/image/soccer_image.jpg");
	background-repeat: no-repeat;
	back
}

.midBottom {
	grid-area: midBottom;
}

.footer {
	grid-area: footer;
	background-color: lightgreen;
}

.wrapper {
	display: grid;
	grid-template-columns: 1fr 4fr 4fr 1fr;
	/* grid-template-rows: 50px 100px 100px 30px; */
	grid-auto-rows: minmax(100px, auto);
	grid-template-areas: "header header header header"
		"leftCol midTop midTop rightCol"
		"leftCol midBottom midBottom rightCol" "footer footer footer footer";
	grid-gap: 5px;
}

.team_name {
	font-size: 200%;
	color: white;
	position: relative;
	left: 5%;
	top: 20%;
}

.team_result {
	font-size: 200%;
	color: red;
}

.main_image {
	width: 80%;
	height: 200px;
}

.rank {
	position: relative;
	left: 5%;
	top: 0%;
}

.rank_table {
	background-color: ligntgray;
}

.rank-shadow {
	box-shadow:0px  2px 2px #333;
	
}
.font-white{
	color:white;
	position: relative;
	left: 5%;
	top: 20%;
}

.memBer{
	float: right;
	margin-top: 10px;
	width : 310px;
	background-color : #2A3682;
	color : white;
}
.team_result_value{
	font-size: 200%;
}

.cal_font_size{
	font-size: 200%;
	text-align:center;
}
</style>

</head>
<body>
	<jsp:include
		page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>

	<div class="wrapper">
		<div class="header">Header</div>
		<div class="leftCol">LeftCol</div>
		<div class="rightCol">이런곳에 수정ㅎ면되</div>
		<div class="midTop">
		<div class="img_back">
				<p class="team_name">울산 현대 축구단</p>
				
						<p class="font-white">공식 홈페이지 :</p>
				<p>온라인 샵 :</p>
		
			
				</div>
					
			<p class="team_result">역대 전적</p>
			<p class="team_result_value">30전 12승 18패</p>
			
			<p class="team_result_value">구단 인원 : 6명</p>
			<p class="team_result_value">참가 중인 리그 : it's ManLeague busan</p>
			<br><br>

		<h4>선수 리스트</h2>
		<table id="club_info_table" class="w3-table" border="1" width="300">
				<thaed>
				<tr bgcolor="lightgray" border="1" class="rank-shadow">
					<th width="100px">이름</th>
					<th width="200px">실력</th>
					<th width="100px">골</th>
				</tr>
				</thaed>
				<tbody>
					<tr>
						<td>박지성</td>
						<td>중</td>
						<td>12</td>
					</tr>
				</tbody>
			</table>
		 <button id = "memBer" class="w3-btn w3-round memBer" onclick="member_management();">선수관리</button>
		</div>
		<div class="midBottom">
			<h4 class="rank">순위</h4>
			<table id="club_info_table" class="w3-table" border="1">
				<thaed>
				<tr bgcolor="lightgray" border="1" class="rank-shadow">
					<th width="100px">순위</th>
					<th width="200px">구단</th>
					<th width="100px">경기수</th>
					<th width="100px">승점</th>
					<th width="100px">승</th>
					<th width="100px">무</th>
					<th width="100px">패</th>
					<th width="100px">득점</th>
					<th width="100px">실점</th>
					<th width="100px">득실</th>
				</tr>
				</thaed>
				<tbody>
					<tr>
						<td>1</td>
						<td>울산 현대 축구단</td>
						<td>12R</td>
						<td>22</td>
						<td>8</td>
						<td>2</td>
						<td>2</td>
						<td>12</td>
						<td>2</td>
						<td>10</td>
					</tr>
				</tbody>
			</table>
 <button id="delete_clue
 " class="w3-btn w3-round memBer">구단 삭제</button>
 
 
 <!-- stlye 은 slick 영역 확인용 -->
	<div style="padding:50px 100px; background-color: skyblue;">
	  	<div id="slider-div"  >
		    <div class="cal_font_size" value="1">1월</div>
		    <div class="cal_font_size">2월</div>
		    <div class="cal_font_size">3월</div>
		    <div class="cal_font_size">4월</div>
		    <div class="cal_font_size">5월</div>
		    <div class="cal_font_size">6월</div>
		    <div class="cal_font_size">7월</div>
		    <div class="cal_font_size">8월</div>
		    <div class="cal_font_size">9월</div>
		    <div class="cal_font_size">10월</div>
		    <div class="cal_font_size">11월</div>
		    <div class="cal_font_size">12월</div>
	  	</div>
	</div>
	
	<table id="LeagueInfoTable" border="1" class="w3-table"> 
	 	<thead>
	 		<tr>
	 			<th width="100px">팀1</th>
	 			<th width="200px">팀2</th>
	 			<th width="200px">국적</th>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		
	 	</tbody>
	</table>
	
	<script>
	function member_management(){
		window.open('club_member_management_view.jsp','선수관리','resizeable=no width=500 height=500');
	}
	
	
	$("#slider-div").children().click(function(){
	
		var _month = $(this).text();
		var month = _month.substring(0,1);
		console.log(month);
		
		for(var i = 1 ; i < 13; i++){
			if(month == i ){

				var $tableBody = $("#LeagueInfoTable tbody");
				
				$tableBody.html('');
				
				var $tr = $('<tr>');
				var $noTd = $("<td>").text("일본");
				var $nameTd = $("<td>").text("한국");
				var $nationTd = $("<td>").text("12시 30분 입니다요");
				
				console.log("테이블은 생성이 안되나?");
				
				$tr.append($noTd);
				$tr.append($nameTd);
				$tr.append($nationTd);
				
				$tableBody.append($tr);
			}
		}
	});
	
	
	
	
	
	
  		$(function(){
			$('#slider-div').slick({
				slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
				infinite : true, 	//무한 반복 옵션	 
				slidesToShow : 5,		// 한 화면에 보여질 컨텐츠 개수
				slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
				speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
				arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
				dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
				autoplay : true,			// 자동 스크롤 사용 여부
				autoplaySpeed : 100000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
				pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
				vertical : false,		// 세로 방향 슬라이드 옵션
				prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
				nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
				dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
				draggable : true, 	//드래그 가능 여부 
				
				responsive: [ // 반응형 웹 구현 옵션
					{  
						breakpoint: 960, //화면 사이즈 960px
						settings: {
							//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
							slidesToShow:3 
						} 
					},
					{ 
						breakpoint: 768, //화면 사이즈 768px
						settings: {	
							//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
							slidesToShow:2 
						} 
					}
				]

			});
  		})
  		
  		
  		
  		
	</script>
	
		<div class="footer">Footer</div>
	</div>
</body>
</html>