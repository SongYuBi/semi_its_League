<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/defaultLayout.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.lgBtn {
			background:#111B39;
			color:white;
			width:300px; 
	 		height:60px; 
	 		font-size:42px;
	 		border-radius:15px;
		}
	.refundtext{
		font-size:30px;
		padding:10px;
		float:left;
		margin-left:20px;
		margin-top:30px;
		font-weight:600;
	}	
	
	.lis{
	font-size:30px;
	}
	
	.textspan{
	
	}
	.selectSt{
		float:right;
	 	margin-top:75px;
	 	margin-right:100px; 
	 	width:250px; 
	 	height:40px; 
	 	font-size:20px; 
	 	text-align-last:center;
	 	box-shadow:0px 0px 4px 0px gray;
	 	border:1px solid white;
	}
	
	.league-name{
		font-weight:600;
		font-size:60px;
		margin-top:50px;
		display:block;
		float:left;
		margin-left:40px;
	}
	.league-text{
		display:block;
		float:left;
		font-size:25px;
		list-style:none;
		margin-top: 20px;
	}
	.liline{
		border-bottom:2px double black;
		margin:20px;
		font-weight:550;
	}
	ul li span{
		margin:5px;
	}
	ol li span{
		margin:5px;
	}
	
</style>
</head>
<body>
	<jsp:include page="${applicationScope.contextPath }/views/common/sideBar.jsp"/>
	
	<div class="wrapper">
	<div class="head">head
		<div align="center">it`s league</div>
		<div align="right">
			<span>로그인</span>
			<span>또는</span>
			<span>회원가입</span>
		</div> 
	</div>
	  <div class="header" style="margin-top:100px;">
	  	<span style="font-size:40px; font-weight:bold;">리그신청</span>
	  </div>
	  
	  <div class="midTop">
	  	<div style="border:1px solid blue;width:100%; background:#F8F8F8; height:200px;">
	  		<span class="league-name">It's Man League</span>
	  		<select class="selectSt">
	  			<option>Seoul20(서울지역)</option>
	  			<option>Gyeonggi(경기지역)</option>
	  			<option>Incheon(인천지역)</option>
	  			<option>Daejun(대전지역)</option>
	  		</select>		
	  	</div>
	  	
	  	<div class="container-my">
        <div class="table-wrapper">
            <div class="table-title" style="border:1px solid blue;width:100%; background:#F8F8F8; height:350px; margin-top:50px;">
               	<ul class="league-text" style="margin-left:60px;">
               		<li class="liline">리그명 : <span>lt's Man League Seoul 20</span></li>
               		<li class="liline">주관 : <span>주식회사 It's League</span></li>
               		<li class="liline">심판 : <span>김근엄, 김진지, 김상식</span></li>
               		<li class="liline">최소 인원 수 : <span>6명</span></li>
               		<li class="liline">교체선수 : <span>5명</span></li>
               	</ul>
               	<ul class="league-text" style="margin-left:50px;">
               		<li class="liline">리그 기간 : <span>2020-06-01</span>&nbsp;~ &nbsp;<span>2020-08-31</span></li>
               		<li class="liline">경기장 : <span>강북 이내 제휴 경기장</span></li>
               		<li class="liline">총원 : <span>10명</span></li>
               		<li class="liline">선발 인원 수 : <span>5명</span></li>
               	</ul>
            </div>
                
        </div>
     </div>
	  
	  </div>
	  <div class="midBottom">
	 	 <div style="border:1px solid blue;width:100%; background:#F8F8F8; height:340px; margin-top:30px;">
	 	 	<p class="refundtext">환급 규정</p>
	 	 	<ol style="clear:both">
	 	 		<li class="lis"><span class="textspan">신청 후 일주일 이내 취소 시 : 전액환급</span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작일 30일 전 취소 시 : 80%</span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작일 14일 전 취소 시 : 50%</span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작일 7일 전 취소 시 : 20% </span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작 후 : 환불불가</span></li>
	 	 	</ol>
	  	</div>
	  	<button class="lgBtn" style="margin-left:480px; margin-top:50px;">리그신청</button>
	 
	  </div>
	  <div class="footer" align="center" style="margin-top:20px; height:300px;">
	  	<img src="../../../resources/image/footer.png">
	  </div>
	</div>
</body>
</html>