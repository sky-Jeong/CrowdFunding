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
			
				<div class="div_member-summary">
					<h2>펀딩 완료 🎉</h2>
					<h3>든든한 서포터 ${login.memberName}님<br>펀딩해 주셔서 감사합니다.</h3>
					<div class="funding-summary">
						<div>
							<p>결제 예정일: ${fundingInfo.payDateStr}</p>
							<p>펀딩 성공 시에만 결제됩니다.</p>	
						</div>
						<div>
							<p>리워드 발송시작일: ${fundingInfo.sendDate}</p>
							<p>예기치 못한 사정으로 발송이 지연되는 경우 입력하신 이메일 혹은 전화번호로 안내 예정입니다.</p>	
						</div>
					</div>
				</div>
				
				</div>
				
			</div>
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">


	</script>
	
</html>