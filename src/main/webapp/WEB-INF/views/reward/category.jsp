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
			<!-- contents common area -->
			<c:import url="./common/fundingList.jsp"></c:import>
		</main>
		
		<script type="text/javascript" src="/js/reward/common.js"></script>
		<script type="text/javascript" src="/js/reward/fundingPage.js"></script>
		
	</body>
	
</html>