<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.header{
   grid-area: header;
 
 }
 
 th>td{
		width: 10%;
		height: 50px;
		background-color: #2A3682;
			
	}
	
  #th_width{
  	border : 1px solid white;
  		width: 300px;
  		height: 200px;
  		text-align:center;
  		
  }
 .leftCol{
   grid-area: leftCol;
   background-color: orange;
 }
  
 .rightCol{
   grid-area: rightCol;
   background-color: lightblue;
 }
  
  .midTop{
   grid-area: midTop;
 
 }
  
 .midBottom{
   grid-area: midBottom;
   background-color: pink;
 }
  
 .footer{
   grid-area: footer;
   background-color: lightgreen;
 }
 .wrapper {
  display: grid;
  grid-template-columns: 1fr 4fr 4fr 1fr;
  /* grid-template-rows: 50px 100px 100px 30px; */
  grid-auto-rows: minmax(100px, auto);
  grid-template-areas:
  "header header header header"
  "leftCol midTop midTop rightCol"
  "leftCol midBottom midBottom rightCol"
  "footer footer footer footer";
  grid-gap: 5px;
 }
 
 #text_header{
 	text-decoration-line:underline;
 	text-decoration-color:#EA9C2D;
 	fon-size: large;
 	position:relative;
 	left: 10%;
 	top: 30%;
 
 }
 
 #text_header_date{
 position:relative;
 	left: 80%;
 	top: 10%;
 }
 
 #text_header_login{
 	position:relative;
 	left: 75%;
 	top: 0%;
 }
 
 #text_header_insertMember{
 position:relative;
 	left: 85%;
 	top: -25%;
 	fon-size: meduim;
 }
 th{
 	color:white;
 }
 .th_club_name{
 
 	width:200px;
 }
 
 table{
 	width : 100%;
 	min-width: 500px;
 }

.rank {
	position: relative;
	left: 5%;
	top: 0%;
}
 
 .rank-shadow {
	box-shadow:0px  2px 2px #333;
	
}
.td_100{
height:75px;
border-bottom:2px solid gray;
}


</style>
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">
	  <p id="text_header_login" onclick="login_click();">로그인</p>
	  	<p id="text_header_insertMember">회원가입</p>
	  	<p id="text_header">구단 정보 조회</p>
	  	<p id="text_header_date">2020.07.31 기준</p>
	  	
	  </div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop">

			<h4 class="rank">순위</h4>
			<table id="club_info_table" class="w3-table">
				<thaed>
				<tr bgcolor="#2A3692"  class="rank-shadow">
					<th width="100px"></th>
					<th width="200px" height="50px">구단</th>
					<th width="100px" height="50px">경기수</th>
					<th width="100px" height="50px">승점</th>
					<th width="100px" height="50px">승</th>
					<th width="100px" height="50px">무</th>
					<th width="100px" height="50px">패</th>
					<th width="100px" height="50px">득점</th>
					<th width="100px" height="50px">실점</th>
					<th width="100px" height="50px">득실</th>
				</tr>
				</thaed>
				<tbody>
					<tr class="td_100">
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

		</div>

<script type="text/javascript">

	function login_click(){
		console.log("??");
		window.open('../login/loginView.jsp','로그인','resizeable=no width=500 height=300');
		
	}
</script>
	  </div>

	  <div class="footer">Footer</div>
	</div>
</body>
</html>