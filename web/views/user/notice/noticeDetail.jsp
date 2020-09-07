<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link  rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeMain.css">
<link  rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeStyle.css">
<link  rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeDefault.css">
<meta charset="UTF-8">
<style>
	.outer{
		width:800px;
		height:500px;
		background:black;
		color:white;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	table {
		border:1px solid white;
	}

	.tableArea {
		width:450px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/refereeSideBar.jsp"></jsp:include>
	<div class="scontA   ">
		<div class="bbsTopArea"></div>

		<!-- 게시물 읽기 시작 { -->
		<h2 id="container_title">공지사항</h2>

		<article id="bo_v" style="width:100%">
    	<header>
        	<h1 id="bo_v_title">공지 사항 Title</h1>
    	</header>
		<hr class="bg2_1">
    	<section id="bo_v_info">
        	<h2>페이지 정보</h2>
        	작성자 <strong><span class="sv_member">최고관리자</span></strong>
        	<span class="sound_only">작성일</span><strong>날짜</strong>
        	조회<strong>nn회</strong>
        	댓글<strong>nn건</strong>
    	</section>

    	<!-- } 게시물 상단 버튼 끝 -->
		<hr class="bg2_1">	
    	<section id="bo_v_atc">
        	<h2 id="bo_v_atc_title">본문</h2>
	        <div id="bo_v_img"></div>

      		<!-- 본문 내용 시작 { -->
	        <div id="bo_v_con">
				<p><span style="font-size:12pt;">﻿코로나19 확산 우려로</span></p><p><span style="font-size:12pt;">&nbsp;</span></p><p><span style="font-size:12pt;">올해는 대입 수험생들을 위한 54일(10월 10일~12월 2일) 기도 모임이 없습니다.</span>&nbsp;</p>				</div>
    	    <!-- } 본문 내용 끝 -->
    	</section>
 
    	<!-- 링크 버튼 시작 { -->
  	    <div id="bo_v_bot">
     		<ul class="bo_v_nb">
        	   <li><a href="" class="btn_b01">다음글</a></li>
        	</ul>
            <ul class="bo_v_com">
        	    <li><a href="" class="btn_b01">목록</a></li>
            </ul>
		</div>
   		<!-- } 링크 버튼 끝 -->

		</article>
		<!-- } 게시판 읽기 끝 -->

		<script>
			function board_move(href) {
    			window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
			}
		</script>


		<!-- } 게시글 읽기 끝 -->
	</div>
	<div class="outer">
	<br>
	<h2 align="center"></h2>
		
		<%-- <div class="tableArea">
				<table>
					<tr>
						<td>제목 </td>
						<td colspan="3"><input type="text" size="50" name="title" value="<c:out value="${ requestScope.notice.nTitle }"/>" readonly></td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" value="<c:out value="${ requestScope.notice.nickName }"/>" name="writer" readonly>
						</td>
						<td>작성일</td>
						<td><input type="date" name="date" value="<c:out value="${ requestScope.notice.nDate }"/>" readonly></td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" style="resize:none;" readonly><c:out value="${ requestScope.notice.nContent }"/></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button onclick="location.href='${ applicationScope.contextPath }/selectList.no'">메뉴로 돌아가기</button>
					<c:if test="${ !empty loginUser.userId and sessionScope.loginUser.userId.equals('admin') }">
					<button onclick="location.href='${ applicationScope.contextPath }/selectNoticeForUpdate.no?num=<c:out value="${ requestScope.notice.nno }"/>'">수정하기</button>
					</c:if>
				</div>
		</div> --%>
	</div>
</body>
</html>