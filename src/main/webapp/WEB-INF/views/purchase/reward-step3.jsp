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

			.container{
				width: 60%;
			}
			
			.funding-summary-area{
			
				padding: 1rem 1.5rem;
				margin: 2rem 0px;
			
				background-color: #F6F6F6;
				border-radius: 3px;
				
			}

			.result{
				display: block;
				color: #4C4C4C;
			}
			
			.btn-wrapper{
				text-align: center;
				padding: 1rem 0px;
			}
			
			#funding-btn{
				padding: 0.8rem 1.3rem;
				
				color: white;
				font-size: 1.7rem;
				font-weight: 300;
				
				border: none;
				border-radius: 4px;
				background-color: #00c4c4;
				
			}
			
			.funding-summary{
				margin: 1.8rem 0px 1.1rem;
				padding: 0.3rem 0px;
			}
			
			.summary-info{
				margin: 0.8rem 0px;
			}

		</style>
		
	</head>
	
	<body>
		
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>

			<c:import url="./common/purchase-header.jsp"></c:import>
			<div class="container">	

				<div class="div_member-summary">
					<h2>펀딩 완료 🎉</h2>
					<div class="funding-summary-area">	
						<h3 style="margin: 1rem 0px;">든든한 서포터 ${login.memberName}님<br>펀딩해 주셔서 감사합니다.</h3>
						<div class="funding-summary">
							<div class="summary-info">
								<span class="result">결제 예정일: ${fundingInfo.payDateStr}</span>
								<span class="result">펀딩 성공 시에만 결제됩니다.</span>	
							</div>
							<div class="summary-info">
								<span class="result">리워드 발송시작일: ${fundingInfo.sendDate} 예정</span>
								<span class="result">예기치 못한 사정으로 발송이 지연되는 경우 입력하신 이메일 혹은 전화번호로 안내 예정입니다.</span>	
							</div>
						</div>
					</div>
				</div>
				
				<div class="btn-wrapper">
					<button id="funding-btn">펀딩 내역 보러가기</button>
				</div>

			</div>
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">

		var purchaseInfoNum = '${purchaseInfo.orderNum}'
	
		$("#funding-btn").click(function(){
			alert( purchaseInfoNum + "  펀딩내역 페이지로 이동 예정입니다.");
		});

	</script>
	
</html>