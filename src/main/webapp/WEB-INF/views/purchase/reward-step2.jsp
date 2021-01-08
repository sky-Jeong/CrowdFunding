<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>크라우드펀딩 하디즈</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		
		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/purchase/purchase-step.css">
		
		<style type="text/css">

		</style>
		
	</head>
	
	<body>
		
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>

			<c:import url="./common/purchase-header.jsp"></c:import>
			<div class="container">	
				
				<!-- 작업범위를 확인하기 위한 임시 div -->
				<div style="border: 1px solid red; width: 100%;">
					<c:import url="./common/purchase-step.jsp"></c:import>
				</div>
				
			</div>
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">


	</script>
	
</html>