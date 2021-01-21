<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 서포터 영역 -->
<div class="funding-summary">

	<div class="funding-summary-title">나의 프로젝트</div>

	<!-- funding card area -->
	<ul class="ul-stlye funding-cards">
		
		<li id="my-funding-summary">
			<a href="/mypage/myfunding/rewardfundinglist">
				<span class="card-title title-count">펀딩하기</span>
				<span class="title-count"><b id="purchase-count_b"></b> 회</span>
			</a>
		</li>
		
			
		<li>
			<a href="">
				<span class="card-title title-count">좋아요</span>
				<span class="title-count"><b id="like-count_b">0</b> 회</span>
			</a>
		</li>
		
			
		<li>
			<!-- 현재 지지서명은 작업이 완료되지 않아 0회로 공통되게 나타남 -->
			<a href="">
				<span class="card-title title-count">지지서명</span>
				<span class="title-count"><b id="sign-count_b">0</b> 회</span>
			</a>
		</li>
	
	</ul>
	<!-- fin: funding card area -->
	
	<div class="info-wrapper">
		
		<div class="info-contents">
			<span class="contents-span">
				<i class="glyphicon glyphicon-envelope message-icon"></i><span id="info-title">메시지</span>
			</span>
			<span class="contents-span">
				<i class="glyphicon glyphicon-menu-right next-btn"></i>
			</span>
		</div>
		
		<div class="info-contents">
			<span class="contents-span">
				<i class="glyphicon glyphicon-gift message-icon"></i><span id="info-title">쿠폰</span>
			</span>
			<span class="contents-span">
				<i class="glyphicon glyphicon-menu-right next-btn"></i>
			</span>
		</div>
		
	</div>
	
</div>

<div class="funding-summary">

	<div class="funding-summary-title">나의 활동</div>
						
	<div class="info-wrapper">
		
		<div class="info-contents">
			<span class="contents-span">
				<i class="glyphicon glyphicon-heart-empty message-icon"></i><span id="info-title">좋아요</span>
			</span>
			<span class="contents-span">
				<i class="glyphicon glyphicon-menu-right next-btn"></i>
			</span>
		</div>
		
		<div class="info-contents">
			<span class="contents-span">
				<i class="glyphicon glyphicon-pencil message-icon"></i><span id="info-title">지지서명</span>
			</span>
			<span class="contents-span">
				<i class="glyphicon glyphicon-menu-right next-btn"></i>
			</span>
		</div>
					
		<div class="info-contents">
			<span class="contents-span">
				<i class="glyphicon glyphicon-bullhorn message-icon"></i><span id="info-title">공지사항</span>
			</span>
			<span class="contents-span">
				<i class="glyphicon glyphicon-menu-right next-btn"></i>
			</span>
		</div>
		
		<div class="info-contents">
			<span class="contents-span">
				<i class="glyphicon glyphicon-wrench message-icon"></i><span id="info-title">설정</span>
			</span>
			<span class="contents-span">
				<i class="glyphicon glyphicon-menu-right next-btn"></i>
			</span>
		</div>
		
	</div>
	
</div>
<!-- fin: 서포터 영역 -->