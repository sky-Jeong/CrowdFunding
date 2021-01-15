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
				width: 63%;
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
				margin: 1rem 0px;
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
				font-size: 1.22rem;
				font-weight: 300;
			}
			
			.pay-info{
				margin: 1.3rem 0px;
			}
			
			#reservation-cancle-btn{
				width:100%;
				padding: 1rem;
				margin: 0.2rem 0px;
				background-color: white;
				border: 1px solid #D5D5D5;
				border-radius: 3px;
				font-size: 1.7rem;
				font-weight: 300;
			}
			
			.funding-info{
				color: #5D5D5D;
				padding-bottom: 1rem;
				font-size: 1.42rem;
				font-weight: 300;
			}
			
			.funding-info div:nth-child(3){
				margin-top: 1rem;
			}
			
			#reward-title{
				color: #4C4C4C;
				font-size: 1.75rem;
				font-weight: 650;
				margin-bottom: 1.3rem;
			}
		
			.funding-info div:nth-child(5){
				margin: 1.7rem 0px 0.2rem;
				font-size: 1.3rem;
			}
			
			.sub-title{
				margin-bottom: 1rem;
				font-weight: 500;
			}

			.total-pay-amount td{
				padding: 0.5rem 0px;
				font-size: 1.4rem;
				font-weight: 500;
			}
			
			#change-shipping-info_btn{
				
				width: 100%;
				color: #00c4c4;
				
				margin: 1.2rem 0px 0px;
				padding: 1.2rem;
				
				background-color: white;
				border-radius: 2px;
				border: 1px solid #00c4c4;
				
				font-size: 1.5rem;
				
			}
			
			#change-shipping-info_btn:hover{
				color:white;
				background-color: #00c4c4;
			}
			
			.shipping-info_table{
				width: 100%;
			}
			
			.shipping-info_table td{
				padding: 0.5rem 0px;
			}
			
			.shipping-info_table td div{
				color: #5D5D5D;
			}
			
			.text-input{
			
				width: 100%; height: 3.5rem;
				display: block;
			
				border: 1px solid #EAEAEA;	
				padding-left: 0.8rem;
				margin: 0.5rem 0px;
				
			}
			
			#add-shipping-option{
				font-size: 1.2rem;
				font-weight: 300;
			}
			
			#doro-addr{
				cursor: pointer; 
			}
			
			.info-btn{
				width: 49.3%;
				padding: 1.1rem 0px;
				margin: 1rem 0px;
				font-size: 1.6rem;
				font-weight: 400;
				background-color: white;
			}
			
			#cancle-btn{
				color: #5D5D5D;
				border: 1px solid #D5D5D5;
			}
			
			#cancle-btn:hover{
				color: white;
				background-color: #5D5D5D;
			}
			
			#save-btn{
				float: right;
				color: #00c4c4;
				border: 1px solid #00c4c4;
			}
			
			#save-btn:hover{
				color:white;
				background-color: #00c4c4;
			}
			
			.shipping-info-update_wrapper{
				display: none;
			}
		
			.yes-btn{
				color: white;
				width: 5rem;
				border: 1px solid #00c4c4;
				background-color: #00c4c4;
			}
			
			#no-btn{
				float: left;
			}
			
			button:focus{
				outline: 0 !important;
			}
		
			input:focus{
				outline: 0 !important;
				border: 1px solid #00c4c4;
			}
		
		</style>
		
	</head>

	<body>

		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>

		<div class="container">	
		
			<!-- purchase info (1) -->
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
					
					<c:choose>
					
						<c:when test="${purchaseInfo.status eq '결제 예약' }">
						
							<div class="purchase_info-wrapper">
								<div class="pay-info">
									펀딩 종료 후 ${purchaseInfo.fundingVO.payDateStr2}에 결제 될 예정입니다.
								</div>
								<div>
									<button id="reservation-cancle-btn" data-toggle="modal" data-target="#reservationCancleModal" >결제 예약 취소</button>
								</div>
								<div class="pay-info">
									결제 예약 취소는 ${purchaseInfo.fundingVO.deadlineStr} 까지 가능합니다.<br>
									리워드 종료 및 수량 변경은 불가하며, 취소 후 재 펀딩 해야합니다.
								</div>
							</div>
						
						</c:when>
						
						<c:otherwise>
							<div class="purchase_info-wrapper">
								<div class="pay-info">
									결제 예약이 취소되었습니다.
								</div>
							</div>
						</c:otherwise>
						
					</c:choose>
					
				</div>

			</div>
			<!-- fin: purchase info (1) -->
							
			<!-- funding info wrapper (2) -->
			<c:forEach items="${purchaseInfo.purchaseVOs}" var="vo">
			
				<div class="purchase-info">
					
					<div class="funding-info-wrapper funding-info">
						<div id="reward-title">선택. ${vo.rewardVO.title}</div>
						<div>${vo.rewardVO.product}</div>
						<div>${vo.rewardVO.amountStr}원 / ${vo.orderQuantity}개</div>
						<div>발송 시작일: ${vo.rewardVO.shippingDate}</div>
						<div>※ 프로젝트 교환/펀딩금반환/AS 정책은 반환・정책을 확인하세요.</div>
					</div>
					
				</div>
				
			</c:forEach>
			<!-- fin: funding info wrapper (2) -->
			
			<!-- purchase info -->
			<div class="purchase-info">
				
				<div class="sub-title">결제 내역</div>
				<table class="funding-summary-table">
					
					<tr>
						<td>리워드 금액</td>
						<td>${purchaseInfo.amountStr}원</td>
					</tr>
					
					<tr>
						<td>배송비</td>
						<td>${purchaseInfo.shippingFeeStr}원</td>
					</tr>
					
					<tr class="total-pay-amount">
						<td>최종 결제 금액</td>
						<td>${purchaseInfo.totalAmountStr}원</td>
					</tr>
					
				</table>
			
			</div>
				
			<!-- shipping info -->
			<div class="purchase-info">
				
				<div class="sub-title">배송지 정보</div>
				
				<!-- 배송지 정보 수정 -->
				<div class="shipping-info-update_wrapper">
					
					<form action="/purchase/buyerInfo/update" method="post" id="update-frm">
						
						<div id="hidden-area">				
							<input type="hidden" name="orderNum" value="${purchaseInfo.orderNum}">
						</div>
						
						<table class="shipping-info_table">

							<tr>
								<td>
									<div>이름</div>
									<input type="text" class="text-input" name="buyer_name" id="name"
											value="" required="required">
								</td>
							</tr>
							
							<tr>
								<td>
									<div>핸드폰 번호</div>
									<input type="text" class="text-input" name="buyer_tel" id="tel"
											value="" required="required">
								</td>
							</tr>

							<tr>
								<td>
									<div>주소</div>
									<input type="hidden" name="buyer_postcode" id="buyer-postcode">
									<input type="text" class="text-input" name="buyer_addr" id="doro-addr"
											value="" readonly="readonly" required="required">
									<input type="text" class="text-input" name="buyer_addr_detail" id="detail_addr"
											value="" required="required">
								</td>
							</tr>
							
							<tr>
								<td>
									<div>배송 시 요청사항 (선택)</div>
									<input type="text" class="text-input" name="custom_data" id="custom"
											value="">
									<div id="add-shipping-option">해당 요청사항은 배송에 관련된 내용만 적어주세요.</div>
								</td>
							</tr>
							
							<tr>
								<td>
									<button type="button" class="info-btn" id="cancle-btn">취소</button>
									<button type="button" class="info-btn"
											data-toggle="modal" data-target="#myModal" id="save-btn">저장</button>
								</td>
							</tr>

						</table>
					
					</form>
					
				</div>
				
				<div class="shipping-summary">
				
					<table class="funding-summary-table">
						
						<tr>
							<td>${purchaseInfo.buyer_name}<br>${purchaseInfo.buyer_tel}</td>
						</tr>
						
						<tr>
							<td>
								[${purchaseInfo.buyer_postcode}] ${purchaseInfo.buyer_addr}
								<br>
								${purchaseInfo.buyer_addr_detail}
							</td>
						</tr>

						<c:if test="${purchaseInfo.status eq '결제 예약' }">
							<tr>
								<td>
									<button id="change-shipping-info_btn">배송지 정보 변경하기</button>
								</td>
							</tr>
						</c:if>
							
					</table>
				
				</div>
			
			</div>
			
		</div>

	</body>
	
	<!-- 결제 예약 취소 모달 -->
	<div id="reservationCancleModal" class="modal fade" role="dialog">
		
		<div class="modal-dialog" style="width: 30%;">
		
		    <!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="text-align: center;">
					<br>
					<p>결제 예약을 취소하시겠습니까?</p>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="no-btn" data-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-default yes-btn" title="cancle" data-dismiss="modal">예</button>
				</div>
		    </div>
		    
		</div>
		
	</div>
	
	<!-- 배송 정보 변경 모달 -->
	<div id="myModal" class="modal fade" role="dialog">
		
		<div class="modal-dialog" style="width: 30%;">
		
		    <!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="text-align: center;">
					<br>
					<p>배송 정보를 변경하시겠습니까?</p>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="no-btn" data-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-default yes-btn" title="shipping" data-dismiss="modal">예</button>
				</div>
		    </div>
		    
		</div>
		
	</div>
	
	<c:import url="../../common/postcode.jsp"></c:import>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="/js/common/postcode.js"></script>
	
	<script type="text/javascript">

		var fundingStatus = '${purchaseInfo.fundingVO.fundingStatus}';

		// funding 진행 상태에 따라 색깔 표시
		function setStatusColor(fundingStatus){

			var color = "#00c4c4";

			if(fundingStatus == '종료'){
				color = "#F15F5F";
			}

			$("#funding-status").css("background-color",color);

		}
	
		// 우편번호 가져오기
		$("#doro-addr").click(function() {
			sample2_execDaumPostcode();
		});

		$(".yes-btn").click(function(){

			var title = $(this).attr("title");

			if(title == 'shipping'){
				$("#update-frm").attr("action","/purchase/buyerInfo/update");
			} else {

				var hiddenTag = '<input type="hidden" name="status" value="예약 취소">';
					
				$("#hidden-area").append(hiddenTag);
				$("#update-frm").attr("action","/purchase/buyerInfo/cancle");

			}
			
			$("#update-frm").submit();
			
		});

		$("#change-shipping-info_btn").click(function(){
			infoInit();
			$(".shipping-summary").css("display","none");
			$(".shipping-info-update_wrapper").css("display","block");
		});

		// shipping info 초기화
		function infoInit(){
			$("#tel").val('${purchaseInfo.buyer_tel}');
			$("#name").val('${purchaseInfo.buyer_name}');
			$("#custom").val('${purchaseInfo.custom_data}');
			$("#doro-addr").val('${purchaseInfo.buyer_addr}');
			$("#buyer-postcode").val('${purchaseInfo.buyer_postcode}');
			$("#detail_addr").val('${purchaseInfo.buyer_addr_detail}');
		}

		$("#cancle-btn").click(function(){
			$(".shipping-summary").css("display","block");
			$(".shipping-info-update_wrapper").css("display","none");
		});

	</script>

</html>
