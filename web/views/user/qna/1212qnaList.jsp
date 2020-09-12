 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	
	.outer{
		margin-left:90px;
		margin-right:90px;
	}
	
	#box1{
		text-align:center;
		 width:700px;
		 height:50px;
		 font-size:20px;
		 font-weight:bold;
		 border:2px solid lightgrey;
		 font-family: 'Gothic A1', sans-serif;
		 letter-spacing:5px;
		 box-shadow:0 1px 2px #5e5d5d;
	}
	.buttonboxes{
	
		border:2px solid lightgrey;
		 width:700px;
		 height:50px;
		 padding:5px;
		 box-shadow:0 1px 2px #5e5d5d;
		 text-align:center;
		 line-height:35px;
		
		
		 
		
	}
	#btn{
		width:80px;
		height:35px;
		color:white;
		/* padding:15px; */
		align:center;
		margin-left:auto;
		margin-right:30px;
		text-align:center;
		font-weight:medium;
		
		
		
	}
	.ref{
		font-size:20px;
		padding:5px;
	}
	#list-area{
		 border:2px solid lightgrey;
		 font-size:20px;
		 padding:10px;
	}
	#row{
		
		border-bottom:2px solid lightgrey;
	}
	#table-head{
		background:black;
		color:white;
	}
	

</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="outer">
	
	
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>
	  
	  
	  <div class="midTop">
	  	<br>
	  	 
	  	 <div class="tableArea">
	  	 	<form action="${ applicationScope.contextPath }" method="post">
	  	 	
	  	 		<h2 font-weight="bold">QnA</h2>
	  	 		
	  	 		
	  	 		<br>
	  	 		
	  	 		<div class="buttonboxes" align="center">
	  	 			<button id="btn" type="button" class="btn btn-secondary" style="text-align:center">매치취소</button>
	  	 			<button id="btn" type="button" class="btn btn-secondary" value="kjk">매치진행</button>
	  	 			<button id="btn" type="button" class="btn btn-secondary">서비스</button>
	  	 			<button id="btn" type="button" class="btn btn-secondary">매칭신청</button>
	  	 			<button id="btn" type="button" class="btn btn-secondary">구장관련</button>
	  	 		</div>
	  	 		
	  	 		 <br>
	  	 		 
	  	 		<div id="list-area">
	  	 		
	  	 			<table align="center" id="listArea">
	  	 				<tr id="table-head">
	  	 					<th>글번호</th>
	  	 					<th width="300px">글제목</th>
	  	 					<th width="300px">작성자</th>
	  	 					<th>조회수</th>
	  	 					<th width="300px">작성일</th>
	  	 				</tr>
	  	 				
	  	 				<c:forEach>
	  	 					<tr>
	  	 						<td><c:out value=""/></td>
	  	 						<td><c:out value=""/></td>
	  	 						<td><c:out value=""/></td>
	  	 						<td><c:out value=""/></td>
	  	 						<td><c:out value=""/></td>
	  	 						<td><c:out value=""/></td>
	  	 					</tr>
	  	 				</c:forEach>
	  	 			</table>
	  	 			
	  	 	
	  	 		</div>
	  	 		
	  	 	</form>
	  	 </div>
	  
	  </div>
	  
	  <br>
	  <br>
	  
	 <div class="footer">
	 	<img alt="" src="../../../resources/image/footer_jess.png" style="width:100%">
	 </div>
	  
	</div>
</body>
</html>




















