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
				margin-bottom: 2rem;
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
				border: 1px solid silver;
				padding: 2rem 3rem;
			}
			
			dt{
				border: 1px solid green;
				display: inline-block;
				
			}
			
			dd{
				display: inline-block;
				border: 1px solid olive;
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
							
								<li class="div_reward">
								
									<!-- 
										해당 박스 클릭시 서버로 넘기는 값
											rewardNum
											
									 -->
									<dl class="dl_reward-box" title="reward-id">
										<dt>
											<label for="">
												<input type="checkbox" class="reward-chk" id="chk_reward-리워드번호" name="rewardNum" value="리워드번호">
											</label>
										</dt>
										<dd>
											<label for="chk_reward-리워드번호">
											
												<p class="amount">142,000원 펀딩합니다.</p>
												
												<p>
													<span class="title">[ 슈퍼얼리버드 ] 백허그 백팩 스몰 올리브</span>
													<span class="remains"> (55개 남음)</span>
												</p>
												
												<p class="reward-name">
													백허그 백팩 어쩌고 저쩌고 요리요리 숑숑숑
												</p>
												
												<p>
													<span class="shipping">배송비 없음 | 리워드 제공 예상일: 2021년 02월 초 (1 ~ 10)일 예정 </span>
												</p>
												
											</label>
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