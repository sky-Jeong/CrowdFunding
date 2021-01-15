<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 - 나의 펀딩현황</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			body{
				padding-bottom: 10rem;
				background-color: #F5F7FA;
			}
			
			.container{
				width: 60%;
				margin: 3rem auto;
			}
			
			.summary-header{
				color: #747474;
			}
			
			.summary-header div{
				margin: 1rem 0px;
			}
						
			.purchase-info{
				width: 100%;
				padding: 2rem;
				border: 1px solid #EAEAEA;
				background-color: white;
			}
			
			#funding-status{
				width: 0.8rem; height: 0.8rem;
				border-radius: 50%;
				background-color: #00c4c4;
				display: inline-block;
				margin-right: 0.5rem;
			}
			
			#funding-title{
				
				color: #747474;
				cursor: pointer;
				
				font-size: 1.8rem;
				font-weight: 650;
				text-decoration: underline;

			}
			
			.company-info{
				margin: 0.5rem 0px 3rem;
				color: #8C8C8C;
				font-weight: 300;
			}
			
			.company-info span{
				text-decoration: underline;
			}
			
			.funding-summary-table{
				width:100%;
			}
			
			.funding-summary-table td{
				padding: 0.2rem 0px;
				color: #5D5D5D;
				font-weight: 300;
			}
			
			.funding-summary-table tr td:nth-child(2){
				text-align: right;
			}
			
			.purchase_info-wrapper{
				color:#5D5D5D;
				margin: 1rem 0px;
				font-size: 1.3rem;
				font-weight: 300;
			}
			
			.pay-info{
				margin: 1.3rem 0px;
			}
			
			#reservation-cancle-btn{
				width:100%;
				padding: 1rem;
				margin: 0.3rem 0px;
				background-color: white;
				border: 1px solid #D5D5D5;
				border-radius: 3px;
				font-size: 1.7rem;
				font-weight: 300;
			}
		
		</style>
		
	</head>

	<body>

		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>

		<div class="container">	
			
			<div class="purchase-info">
				
				<div class="summary-header">
					<div id="categoy">
						${purchaseInfo.fundingVO.charDivisionStr} / ${purchaseInfo.fundingVO.categoryVO.categoryName}
					</div>
					<div>
						<div> <span id="funding-status"></span> ${purchaseInfo.fundingVO.fundingStatus}</div>
					</div>
				</div>
				
				<div class="funding-info-wrapper">
				
					<div>
						<a id="funding-title">${purchaseInfo.fundingVO.title}</a>
					</div>
					
					<div class="company-info">
						by <span>${purchaseInfo.fundingVO.makerVO.company}</span>
					</div>
					
					<table class="funding-summary-table">
					
						<tr>
							<td>펀딩 번호</td>
							<td>${purchaseInfo.orderNum}</td>
						</tr>
					
						<tr>
							<td>펀딩 날짜</td>
							<td>${purchaseInfo.orderedAtStr}</td>
						</tr>
						
						<tr>
							<td>펀딩 마감일</td>
							<td>${purchaseInfo.fundingVO.deadlineStr}</td>
						</tr>
						
						<tr>
							<td>펀딩 상태</td>
							<td style="font-weight: 500;">${purchaseInfo.status}</td>
						</tr>
						
					</table>
					
					<c:if test="${purchaseInfo.status eq '결제 예약' }">
					
						<div class="purchase_info-wrapper">
							<div class="pay-info">
								펀딩 종료 후 ${purchaseInfo.fundingVO.payDateStr2}에 결제 될 예정입니다.
							</div>
							<div>
								<button id="reservation-cancle-btn">결제 예약 취소</button>
							</div>
							<div class="pay-info">
								결제 예약 취소는 ${purchaseInfo.fundingVO.deadlineStr} 까지 가능합니다.<br>
								리워드 종료 및 수량 변경은 불가하며, 취소 후 재 펀딩 해야합니다.
							</div>
						</div>
					
					</c:if>
					
				</div>
			
			</div>
			
		</div>

	</body>

</html>