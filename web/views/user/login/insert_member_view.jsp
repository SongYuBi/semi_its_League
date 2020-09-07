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
	  <div class="midTop">midTop
	  <div id="div_1">
<label style="float:left;">이메일</label>
<input type="Email" id="Email" name="Email" class="w3-input w3-border w3-border-black">
<label style="float:left;">비밀번호</label>
<input type="password" id="password" name="password" class="w3-input w3-border w3-border-black">
<label style="float:left;">비밀번호 확인</label>
<input type="password" id="password_re" name="password_re" class="w3-input w3-border w3-border-black">
<label style="float:left;">이름</label>
<input type="text" id="name" name="name" class="w3-input w3-border w3-border-black" >

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
<br><br>
<div style="padding:5px;">
<label style="float:left;">성별</label><br>
<label>남</label><input class="w3-check" id="check_box" type="checkbox" > 
<label>여</label><input  class="w3-check" id="check_box_2" type="checkbox" ><br>
</div>
<label style="float:left;">주소</label>
<input type="text" id="addess" name="address" class="w3-input w3-border">
<label style="float:left;">사용자 실력</label>
<select name="fruit" class="w3-input w3-border">
	<option value="defualt" selected="selected" >실력을 선택해주세요.</option>
	<option value="상">상</option>
	<option value="중">중</option>
	<option value="하">하</option>
</select>
<label style="float:left;">이메일 인증</label><br><br>
<div style="float:left;">
<input type="Email" id="email_check' name="email_check" class="w3-input w3-border">
</div >
<div>
<button class="w3-btn w3-red" id="check">인증번호 받기</button><br>
<input type="hidden" value="false" id="email_check">
</div>
	
	</div>
	  </div>
	  <div class="midBottom"><button class="w3-btn w3-red" id="insert_member">가입하기</button></div>
	  <div class="footer">Footer</div>
	</div>
</body>
</html>