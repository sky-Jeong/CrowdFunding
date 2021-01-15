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
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v9.0" nonce="mWVhBUUF"></script>
		
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
				padding: 1rem 1.9rem;
				
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
			
			.sub-description-wrapper{
				margin: 0.5rem 0px 1rem;
			}
			
			#sub-description{

				color: #5D5D5D;
				
				font-size: 1.3rem;
				font-weight: 700;
				
			}
			
			.div_summary-header{
				margin-top: 2rem;
				font-size: 3rem;
				font-weight: bold;
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
					<div class="div_summary-header">펀딩 완료 🎉</div>
					<div class="funding-summary-area">	
						<h3 style="margin: 1rem 0px;">든든한 서포터 ${login.memberName}님<br>펀딩해 주셔서 감사합니다.</h3>
						<div class="funding-summary">
							<div class="summary-info">
								<span class="result">결제 예정일: ${fundingInfo.payDateStr}</span>
								<span class="result">펀딩 성공 시에만 결제됩니다.</span>	
							</div>
							<div class="summary-info">
								<span class="result">리워드 발송시작일: ${fundingInfo.shippingDate}</span>
								<span class="result">예기치 못한 사정으로 발송이 지연되는 경우 입력하신 이메일 혹은 전화번호로 안내 예정입니다.</span>	
							</div>
						</div>
					</div>
				</div>
				
				<div class="btn-wrapper">
					<div class="sub-description-wrapper">
						<span id="sub-description">결제 예약 결과 및 배송 예상일 조회는<br>나의 펀딩현황에서 확인하세요.</span>
					</div>
					<button id="funding-btn">펀딩 내역 보러가기</button>
				</div>
				
<!-- 				<div class="facebook-share-wrapper">
				<div id="fb-root"></div>
					<div class="fb-share-button"
						data-href="https://developers.facebook.com/docs/plugins/"
						data-layout="button" data-size="large">
						<a target="_blank"
							href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse"
							class="fb-xfbml-parse-ignore">공유하기</a>
					</div>
				</div> -->

			</div>
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">

		var purchaseInfoNum = '${purchaseInfo.orderNum}'
	
		$("#funding-btn").click(function(){
			location.href="/mypage/myfunding/purchase/" + purchaseInfoNum;
		});

	</script>
	
</html>