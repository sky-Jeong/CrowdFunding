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
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
			/* 메인 색상 : rgba(0,178,178,.99) select color: #00B2B2 default: #353535*/
			/*border: 2px solid #00B2B2;*/			
		</style>

	</head>
	
	<body>
	
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<c:import url="./common/second-navbar.jsp"></c:import>
			<!-- slide show -->
			<c:import url="./common/slide.jsp"></c:import>
			
			<div class="container-fluid">
				<div class="main__div--container">
					<div class="main__div--category-wrap">
					
						<div class="main__div--main-content-area" style="border: none;">
							<h3 style="display: inline-block;" id="main__div--categoryName">오픈예정 둘러보기</h3>
						</div>
						
						<!-- start -->
						<!-- main category wrap -->
						<div class="main__div--category-wrap">
						
							<!-- contents area -->
							<div id="comingsoon-list" style="padding: 2rem 0rem;">
																		
							</div>
							
						</div>
						<!-- contents wrap finish -->
						
						<div id="main__div--btn-area">
							<button class="btn btn-default" id="btn__show-more" style="width:100%; border: none;">더 보기</button>
						</div>
					</div>
				</div>
			</div>
			
		</main>
		
		<script type="text/javascript" src="/js/reward/common.js"></script>
		<script type="text/javascript" src="/js/reward/comingsoonPage.js"></script>

	</body>
	
</html>