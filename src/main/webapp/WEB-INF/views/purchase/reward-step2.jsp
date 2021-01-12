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
		
			.order_list-area{
				padding: 2rem 15rem;
			}
		
			.order_list-table{
				border-top: 1px solid #747474;
				width: 100%;
			}
			
			.order_list {
				border-bottom: 1px solid #EAEAEA;
			}
			
			.order_list td{
				padding: 0.5rem 1rem ;
			}
			
			.order-reward{
				display: block;
				margin: 0.6rem 0px;
				font-weight: 300;
			}
	
			.title{
				color: #00c4c4;
				font-size: 1.4rem;
			}

			.product{
				color: #8C8C8C;
				font-size: 1.3rem;
			}
			
			.span_qty-amont{
				color: #4C4C4C;
				font-weight: 500;
				padding-left: 43rem;
			}
			
			.fee-area{
				display: inline-block;
				padding: 1.3rem 0px;
			}
			
			.fee-amount{
				float: right;
			}

			.fee-title{
				color: #747474;
				font-weight: 600;
			}
			
			.aditional-fee{
				border-bottom: 1px dashed #747474;
			}
			
			.total-summary{
				background-color: #f6f6f6;
				border-bottom: none !important;
			}
			
			.purchase-result{
				color: #00c4c4;
			}
			
			.final-amount-title{
				margin-top: 0.6rem;
			}
			
			.final-amount{
				font-size: 2rem;
			}

		</style>
		
	</head>
	
	<body>
		
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>

			<c:import url="./common/purchase-header.jsp"></c:import>
			<div class="container">	
				
				<!-- 작업범위를 확인하기 위한 임시 div -->
				<div style="border: 1px solid red; width: 100%; ">
					
					<c:import url="./common/purchase-step.jsp"></c:import>
					
					<div class="order_list-area">
					
						<table class="order_list-table">
							
							<!-- order data -->
							<c:forEach items="${orderList}" var="vo">
								<tr class="order_list">
									<td>
										<span class="order-reward title">${vo.rewardVO.title}</span>
										<span class="order-reward product">${vo.rewardVO.product}</span>
										<span class="order-reward span_qty-amont">
											<span>수량: ${vo.orderQuantity}</span>
											<span style="float: right;">${vo.amountStr}원</span>
										</span>
									</td>
								</tr>
							</c:forEach>
							<!-- fin: order data -->
							
							<tr class="order_list aditional-fee">
								<td>
									<span class="fee-area fee-title">배송비</span>
									<span class="fee-area fee-amount">${shippingFeeStr}원</span>
								</td>
							</tr>
							
							<tr class="order_list total-summary">
													
								<!-- row data -->	
								<input type="hidden" id="totalAmount" value="${totalAmount}">
								<input type="hidden" id="shippingFee" value="${shippingFee}">
								<input type="hidden" id="finalAmount" value="${finalAmount}">
								<!-- fin: row data -->
													
								<td>
									<span class="fee-area fee-title">펀딩금액</span>
									<span class="fee-area fee-amount">${totalAmountStr}</span>
								</td>
								
							</tr>
							
							<tr class="order_list total-summary">
								<td>
									<span class="fee-area fee-title">배송비</span>
									<span class="fee-area fee-amount">${shippingFeeStr}원</span>
								</td>				
							</tr>
						
							<tr class="order_list total-summary">
								<td>
									<span class="fee-area fee-title purchase-result final-amount-title">최종결제금액</span>
									<span class="fee-area fee-amount purchase-result final-amount">${finalAmountStr}원</span>
								</td>				
							</tr>
						
						</table>
					
					</div>
					
				</div>
				
			</div>
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">


	</script>
	
</html>