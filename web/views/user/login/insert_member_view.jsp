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
<script>
function validate() {
    var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디와 패스워드가 적합한지 검사할 정규식
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    // 이메일이 적합한지 검사할 정규식
    
    //이름 정규화 공식
     var regul3 = /^[가-힝a-zA-Z]{2,}$/;

    var password = document.getElementById("password");
    var password_re = document.getElementById("password_re");
    var email = document.getElementById("Email");
    var name = document.getElementById("name");
    var gender = document.getElementsByName("gender");
    var Jumin_1 = document.getElementById("Jumin_1");
    var Jumin_2 = document.getElementById("Jumin_2");
    var addess = document.getElementById("address");
    var phone1 = document.getElementById("phone1");
    var phone2 = document.getElementById("phone2");
    var phone3 = document.getElementById("phone3");
    
    if ((email.value=="")){
        alert("이메일을 입력해주세요");
        email.focus();
        return false;
    }
    
    if ((password.value=="")){
        alert("비밀번호를 입력해 주세요");
        password.focus();
        return false;
    }
	
	if ((password_re.value=="")){
        alert("비밀번호를 입력해 주세요");
        password_re.focus();
        return false;
    }
	
	if(password.value != password_re.value){
		 alert("비밀번호가 일치하지 않습니다.");
	        password_re.focus();
	        return false;
	}else{
		console.log("유저 비밀번호 일치");
	}
    
	if ((name.value=="")){
        alert("이름을 입력해주세요");
        name.focus();
        return false;
    }
	
	
	if ((Jumin_1.value=="")){
        alert("주민번호를 입력해주세요");
        Jumin_1.focus();
        return false;
    }

	if ((Jumin_2.value=="")){
        alert("주민번호를 입력해주세요");
        Jumin_2.focus();
        return false;
    }
	
	
	 
    if ((addess.value=="")){
        alert("주소를 입력해주세요");
        addess.focus();
        return false;
    }
    
    if ((phone1.value=="")){
        alert("이메일을 입력해주세요");
        phone1.focus();
        return false;
    }
    
    if ((phone2.value=="")){
        alert("이메일을 입력해주세요");
        phone2.focus();
        return false;
    }
    
    if ((phone3.value=="")){
        alert("이메일을 입력해주세요");
        phone3.focus();
        return false;
    }
    
    
    
	var index = false;
	
	for (var i = 0; i < gender.length; i++) {
		//성별을 검사하면서 한개라도 체크가되어있다면
		if (gender[i].checked) {
			index = true;
			
		}
	}
	
	
	if(index == false){
		alert("성별을 눌러주세요.");
	}
    
   
	
}
</script>

</head>
<body>
 <form name="insertUser" action="<%= request.getContextPath() %>/insertUser.me" method="post" onsubmit="return validate();">
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">Header</div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop">
	  <div id="div_1">
	  
<label style="float:left;">이메일</label>
<input type="Email" id="Email" name="Email" class="w3-input w3-border w3-border-black"  maxlength="30">

<label style="float:left;">비밀번호</label>
<input type="password" id="password" name="password" class="w3-input w3-border w3-border-black"  maxlength="12">

<label style="float:left;">비밀번호 확인</label>
<input type="password" id="password_re" name="password_re" class="w3-input w3-border w3-border-black"  maxlength="12">

<label style="float:left;">이름</label>
<input type="text" id="name" name="name" class="w3-input w3-border w3-border-black" >

<label style="float:left;" >주민등록번호</label>
<br><br>
<div style="float:left;">
<input type="text" id="Jumin_1" name="Jumin_1" class="w3-input w3-border w3-border-black" style="float:left"  maxlength="6">
</div>

<div style="float:left;">
<label style="font-weight:bold;"> - </label>
</div>

<div style="float:right;">
<input type="text"  style="float:left" id="Jumin_2" name="Jumin_2" class="w3-input w3-border w3-border-black"  maxlength="7">
</div>

<br><br>
<div style="padding:5px;">
<label style="float:left;">성별</label><br>

<label>남</label><input class="w3-radio" id="male" type="radio" value="M" name="gender" class="gender"> 

<label>여</label><input  class="w3-radio" id="female" type="radio" value="W" name="gender" class="gender"><br>
</div>

<label style="float:left;">주소</label>
<input type="text" id="address" name="address" class="w3-input w3-border w3-border-black">

<label style="float:left;">사용자 실력</label>

<select name="Grade" class="w3-input w3-border">
	<option value="defualt" selected="selected" >실력을 선택해주세요.</option>
	<option value="상">상</option>
	<option value="중">중</option>
	<option value="하">하</option>
</select><br>

<label style="float:left;">전화번호</label><br><br>
<input type='tel' name='phone1' id='phone1'  size="4" maxlength="3" class=" w3-border w3-border-black" style="width:100px; height:35px;"/> &nbsp&nbsp - &nbsp&nbsp
        <input type='tel' name='phone2' id='phone1' size="4" maxlength="4" class=" w3-border w3-border-black"  style="width:100px; height:35px;" />&nbsp&nbsp  - &nbsp&nbsp
        <input type='tel' name='phone3' id='phone1'  size="4" maxlength="4" class=" w3-border w3-border-black"  style="width:100px; height:35px;" />
<br><br>
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
	  <div class="midBottom">
	  <input type="submit" value="가입하기" class="w3-btn w3-red" id="insert_member">
	  <!-- <button class="w3-btn w3-red" id="insert_member">가입하기</button></div> -->
</form>
	  <div class="footer">Footer</div>
	</div>
</body>
</html>