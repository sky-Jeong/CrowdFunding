<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 나의 펀딩 - 크라우드 펀딩</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.container{
				width: 100%;
				padding: 0px;
			}

			.myreward-header{
				border-bottom: 1px solid #EAEAEA;
			}
			
			.contents-area{
				width: 60%;
				margin: 2.8rem auto 2.5rem;
			}
			
			#page-title{
				font-size: 3.3rem;
				font-weight: 700;
			}
			
			.status-area{
				text-align: right;
				font-size: 2rem;
			}
			
			.funding-list_table{
				width: 100%;
				margin: 2rem 0px;
			}
			
			.funding-list_table td{
				padding: 2rem;
				margin: 2rem 0px;
				border: 1px solid #F6F6F6;
				cursor: pointer;
			}
			
			.category{
				color: #8C8C8C;
				font-size: 1.23rem;
				font-weight: 350;
			}
			
			.category:nth-child(2){
				float: right;
			}
			
			.title-area{
				margin-top: 1rem;
			}
			
			.title{
				margin: 0.2rem 0px;
				font-size: 1.7rem;
				font-weight: 500;
			}
		
			.funding-status{
				
				color: #6799FF;
				
				font-size: 1.5rem;
				font-weight: 600;
				
				margin-top: 3rem;
				
			}
			
			.status-circle{
				width: 0.5rem; height: 0.5rem;
				border-radius: 50%;
				display: inline-block;
				margin-right: 0.4rem;
				margin-bottom: 0.2rem;
			}
			
			#funding-status{
				background-color: #00c4c4;
			}
			
			#funding-status_fin{
				background-color: #FF7171;
			}
		
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>
		
		<div class="container">	
		
			<div class="myreward-header">
				<div class="contents-area">
					<div id="page-title">나의 펀딩</div>
				</div>
			</div>
			
			<div class="myreward-body">
			
				<div class="contents-area">
				
					<div class="status-area">
						<select name="status">
							<option value="" selected="selected">전체</option>
							<option value="결제 예약">결제 예약</option>
							<option value="예약 취소">예약 취소</option>
						</select>
					</div>

					<table class="funding-list_table">
					
						<c:forEach items="${purchase.purchaseVOs}" var="vo">
					
							<tr>
							
								<td class="my-reward-funding" title="${vo.purchaseInfoVO.orderNum}">
									<div>
										<span class="category">${vo.rewardVO.type} / ${vo.rewardVO.fundingVO.categoryVO.categoryName}</span>
										<span class="category">${vo.purchaseInfoVO.orderedAtStr} 펀딩</span>
									</div>
									<div class="title-area">
										<div class="category">
											<c:choose>
											
												<c:when test="${vo.rewardVO.fundingVO.fundingStatus eq '진행중'}">
													<span class="status-circle" id="funding-status"></span> ${vo.rewardVO.fundingVO.fundingStatus}
												</c:when>
												
												<c:otherwise>
													<span class="status-circle" id="funding-status_fin"></span> ${vo.rewardVO.fundingVO.fundingStatus}
												</c:otherwise>
											
											</c:choose>
												
										</div>
										<div class="title">${vo.rewardVO.fundingVO.title}</div>
									</div>
									<div class="category">
										by ${vo.rewardVO.fundingVO.makerVO.company}
									</div>
									<div class="funding-status">
										${vo.purchaseInfoVO.status}
									</div>
								</td>
							
							</tr>
							
						</c:forEach>
						
					</table>
					
				</div>
				
			</div>
			
		</div>
		
	</body>
	
	<script type="text/javascript">

		$(".my-reward-funding").click(function(){
			var purchaseNum = $(this).attr("title");
			location.href = "/mypage/myfunding/purchase/" + purchaseNum;
		});
	
	</script>
	
</html>