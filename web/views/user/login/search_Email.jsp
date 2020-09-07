<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	#div_1{
		width:400px;
		height:600px;
	
	}
	.header{
   grid-area: header;
   background-color: LightSeaGreen ;
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
 
   text-align:center;
   margin: 0 auto;
 }
  
 .midBottom{
   grid-area: midBottom;
  
   text-align:center;
   
 }
 #insert_member{
 	width:400px;
 }
  
 .footer{
   grid-area: footer;
   background-color: lightgreen;
 }
 #password_search{
 	width:400px;
 }
 #check{
 	width:200px;
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
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">Header</div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop"><h2>이메일 찾기</h2>
	  <div id="div_1">

<label style="float:left;">이름</label>
<input type="text" id="name" name="name" class="w3-input w3-border w3-border-black" >
<br>
<label style="float:left;" >주민등록번호</label>
<br><br>
<div style="float:left;">
<input type="text" id="Jumin_1" name="Jumin_1" class="w3-input w3-border w3-border-black" style="float:left">
</div>

<div style="float:left;">
<label style="font-weight:bold;"> - </label>
</div>

<div style="float:right;">
<input type="text"  style="float:left" id="Jumin_2" name="Jumin_2" class="w3-input w3-border w3-border-black">
</div>
<br><br><br>




	<button class="w3-btn w3-red" id="password_search">이메일 찾기</button></div>
	</div>
	  </div>
	  <div class="midBottom">
	  <div class="footer">Footer</div>
	</div>
</body>
</html>