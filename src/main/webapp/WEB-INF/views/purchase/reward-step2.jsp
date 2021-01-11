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
				text-align: right;
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
							
							<c:forEach items="${orderList}" var="vo">
								<tr class="order_list">
									<td>
										<span class="order-reward title">${vo.rewardVO.title}</span>
										<span class="order-reward product">${vo.rewardVO.product}</span>
										<span class="order-reward span_qty-amont">
											수량: ${vo.orderQuantity}
										</span>
									</td>
								</tr>
							</c:forEach>
						
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