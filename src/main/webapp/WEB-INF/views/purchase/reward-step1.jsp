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

			.div_contents-wrapepr{
				padding: 2rem 0px;
			}
			
			.div_contents-header{
				margin-bottom: 1rem;
			}
			
			.div_contents-header > span{
				color: #4C4C4C;
				font-size: 1.4rem;
			}
			
			.div_contents-header #sub-title{
			
				color: black;
				margin-right: 0.5rem;
				font-size: 1.8rem;
				font-weight: bold;
				
			}
			
			.div_reward{
				width: 100%;
				background-color: #F6F6F6;
				padding: 1rem;
				margin: 2rem 0px;
			}
			
			.ul_reward-list{
				padding: 0px;
				list-style: none;
			}
			
			.ul_reward-list dl{
				margin: 0px;
			}
			
			.ul_reward-list dt{
				padding: 4rem 1rem;
				margin-right:1rem;
				float: left;
				text-align: center;
				display: block;
			}
			.ul_reward-list dd{
				width: 100%;
				padding: 0px 4rem;
			}
			
			.ul_reward-list dd p{
				font-weight: 200;
			}
			
			.amount{
				color: #3A3A3A;
				font-size: 1.7rem;
				font-weight: 500 !important;
			}
			
			.contents{
				padding-top: 0.5rem;
				margin-bottom: 0.7rem;
				font-size: 1.38rem;
			}
			
			.title{
				margin-right: 1rem;
			}
			
			.reward-contents{
				font-size: 1.2rem;
				margin-bottom: 0.2rem;
			}
			
			.reward-name{
				color: #8C8C8C;
			}
			
			.checked-area{
				margin: 1rem 0px 0.8rem;
			}
			
			.checked-area div{
				display: inline-block;
			}
			
			.input-area{
				margin-top: 1rem;
			}
			
			.quantity{
				margin-right: 23rem;
			}
			
			.qty-btn-icon{
				font-size: 1rem;
			}
			
			.qty_btn{
				color: #9E9E9E;
				font-weight: 200;
				border: 1px solid #9E9E9E;
				padding: 0.1rem 0.7rem 0.15rem;
				background: none;
			}
			
			.order-qty-리워드번호{
				width: 7rem;
				color: #353535;
				font-weight: 400;
				padding-right: 0.8rem;
				border: 1px solid #00c4c4;
				text-align: right;
			}
			
			.option{
				width: 50%;
			}
			
			.order-opt-리워드번호{
				width: 100%;
			}
						
			.span_option{
				color: #00c4c0;
				margin-left: 1rem;
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
				<div style="border: 1px solid red; width: 100%;">
				
				<c:import url="./common/purchase-step.jsp"></c:import>
				
				<div class="div_contents-wrapepr">
				
					<div class="div_contents-header">
						<span>
							<span id="sub-title">리워드 선택</span> 펀딩해주시는 금액에 따라 감사의 의미로 리워드를 제공해 드립니다.
						</span>
					</div>
					
					<!-- reward list -->
					<div class="div_reward-list">
					
						<form action="">
					
							<ul class="ul_reward-list">
							
								<!--  반복문 돌릴 부분 -->
								<li class="div_reward">
								
									<!-- 
										해당 박스 클릭시 서버로 넘기는 값
											rewardNum
											
									 -->
									<dl class="dl_reward-box" title="reward-id">
										<dt>
											<label>
												<input type="checkbox" class="reward-chk" id="chk_reward-리워드번호" name="rewardNum" value="리워드번호">
											</label>
										</dt>
										<dd>
											<label for="chk_reward-리워드번호" style="width: 91.8%;">
												<p class="amount">142,000원 펀딩합니다.</p>
												<p class="contents">
													<span class="title">[슈퍼얼리버드] 백허그 백팩 스몰 올리브</span>
													<span class="remains"> (55개 남음)</span>
												</p>
												<p class="reward-contents reward-name">
													백허그 백팩 어쩌고 저쩌고 요리요리 숑숑숑
												</p>
												<p class="reward-contents">
													<span class="shipping">배송비 없음 | 리워드 제공 예상일: 2021년 02월 초 (1 ~ 10)일 예정 </span>
												</p>
											</label>
											
											<!-- 클릭시 수량 체크를 보이기 위함 -->
											<div class="checked-area" style="width: 100%;">
												<div class="quantity">
													<p class="reward-contents">수량</p>
													<p class="input-area">
														<button type="button" class="qty_btn qty_minus-btn">
															<i class="glyphicon glyphicon-menu-left qty-btn-icon"></i>
														</button>
														<input type="text" name="orderQuantity" class="order-qty-리워드번호" value=1>
														<button type="button" class="qty_btn qty_plus-btn">
															<i class="glyphicon glyphicon-menu-right qty-btn-icon"></i>
														</button>
													</p>
												</div>
												
												<div class="option">
													<p class="reward-contents">옵션<span class="span_option">예시) 주황, 노랑</span></p>
													<p class="input-area">
														<input type="text" name="orderOption" class="order-opt-리워드번호">
													</p>
												</div>
												
											</div>
											<!-- fin: 수량 및 옵션 체크 범위 -->
										</dd>
									</dl>
								
								</li>
							
							</ul>
							
						</form>
					
					</div>
				
				</div>
				
				</div>
				<!-- fin: 임시 div -->
				
			</div>
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">


	</script>
	
</html>