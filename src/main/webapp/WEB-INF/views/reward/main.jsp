<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 펀딩 - 크라우드펀딩</title>
		
		<c:import url="../template/bootstrap.jsp"></c:import>
		
		<link rel="stylesheet" href="/css/reward/fundingList.css">
		<link rel="stylesheet" href="/css/reward/slideshow.css">
		<link rel="stylesheet" href="/css/reward/second-navbar.css">
		
		<style type="text/css">
			/* 메인 색상 : rgba(0,178,178,.99) select color: #00B2B2 default: #353535*/
			/*border: 2px solid #00B2B2;*/
		</style>

	</head>
	
	<body>
	
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
			
			<c:import url="./common/second-navbar.jsp"></c:import>
			
			<!-- main page slide -->
			<div class="main__div--slide-image">
				<div class="slide-image">
					<ul class="main__ul--slide-wrap">
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 1</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 2</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 3</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 4</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 5</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 6</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- fin: main page slide -->

			<!-- contents common area -->
			<c:import url="./common/fundingList.jsp"></c:import>

		</main>
		<script type="text/javascript" src="/js/reward/fundingPage.js"></script>
		
	</body>
	
</html>