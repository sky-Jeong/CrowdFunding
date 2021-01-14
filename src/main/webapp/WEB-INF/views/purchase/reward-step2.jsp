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
				padding: 2rem 11.5rem;
			}
		
			.order_list-table{
				border-top: 1px solid #747474;
				width: 100%;
			}
			
			.order_list {
				border-bottom: 1px solid #EAEAEA;
			}
			
			.order_list td{
				padding: 0.5rem 1.5rem ;
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
			
			.shipping-info-table {
				width: 100%;
			}
			
			.shipping-info-table th{
			
				font-size: 2rem;
				font-weight: bold;
			
				padding-bottom: 1.3rem;
			
			}
			
			.buyer-info{
				margin: 1.3rem 0px;
			}
			
			.supporter-info{
				width: 49%;
			}
			
			#supporter_info{
				padding: 1rem;
				
				border-radius: 3px;
				background-color: #EEEDE9;
			}
			
			.supporter-title{
				color: #4C4C4C;
			}
			
			.supporter{
				display: block;
				padding: 0.5rem;
			}
			
			.supporter-data{
				color: #8C8C8C;
			}
			
			.buyer-info:nth-child(3){
				border-bottom: 1px solid #8C8C8C;
				padding-bottom: 1.8rem;
				margin-bottom: 1.5rem;
			}
			
			.input-shipping-info:nth-child(4){
				padding: 1.1rem 0px;
				border-top: 1px solid #EAEAEA;
				border-bottom: 1px solid #EAEAEA;
			}
			
			#policy-contents{
				
				cursor: pointer;
			    display: inline-flex;
			    
			    max-width: 90%;
			    margin-left: 0.5rem;
			    margin-bottom: 5px;
			    
			    font-size: 1.35rem;
			    font-weight: 300;
			    
			}
			
			.input-shipping-info{
				margin: 1.5rem 0px;
			}
			
			.shipping-space{
				padding: 0.2rem 1.8rem;
				border-top: 2px solid #EAEAEA;
			}
			
			.shipping-info{
				margin: 0.5rem 0px;
				color: #5D5D5D;
				font-size: 1.5rem;
				font-weight: 600;
			}
			
			.shipping-txt{
				width: 100%; height: 3.5rem;
				border: 1px solid #A29584;
				border-radius: 5px;
			}
			
			#postcode-btn{
			
				color: white;
				background-color: #A29584;
				
				font-size: 1.5rem;
				font-weight: 300;
				
				border: 1px solid #A29584;
				border-radius: 3px;
				
				padding: 0.5rem 1rem;
				margin-bottom: 1.3rem;
				
			}
			
			.custom-txt{
				padding-left: 1.3rem;
			}
			
			#custom-data-title{
				padding-left: 0.5rem;
				font-size: 1.3rem;
			}
			
			#custom-data-description{
				color: #A29584;
				padding: 0.8rem 0rem 0.8rem 1rem;
				font-size: 1.2rem;
			}
			
			#total-chk_span{
				font-weight: 500;
			}
			
			.policy-chk-table{
				border: 1px solid #EAEAEA;
				width: 100%;
				margin-top: 1.8rem;
			}
			
			.policy-chk-table td{
				padding: 1.3rem 2rem;
				font-size: 1.6rem;
			}
			
			#policy-title{
				font-size: 2.2rem;
				font-weight: 650;
			}
			
			#total-chk_span{
				color: #4C4C4C;
				font-weight: 600;
				margin-left: 1rem;
			}
			
			.policy-title{
				color: #4C4C4C;
				margin-left: 1rem;
			}
			
			#total-chk-label{
				width: 100%;
			}
			
			.sub-title{
				font-weight: 250;
			}
			
			.policy-description{
				
				color: #BDBDBD;
				
				float: right;
				font-size: 1.5rem;
				font-weight: 250;
				
				cursor: pointer;
				text-decoration: underline;
				
			}
			
			#pay-reservation_btn{
				
				color: white;
				padding: 0.9rem 1.5rem;
				
				border-radius: 3px;
				border: 1px solid #00c4c4;
				background-color: #00c4c4;
				
				font-size: 1.8rem;
				font-weight: 300;
				
			}
			
			.btn-area{
				margin: 2rem 0px;
				text-align: center;
			}
			
			#buyer-chk-policy{
				margin-top: -1rem;
			}
			
			#doro-addr{
				margin-bottom: 0.8rem;
			}

		</style>
		
	</head>
	
	<body>
		
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>

			<c:import url="./common/purchase-header.jsp"></c:import>
			<div class="container">	

				<c:import url="./common/purchase-step.jsp"></c:import>
				
				<form action="/purchase/buy" method="post" id="buy-frm">
																	
					<input type="hidden" name="rewardNum" value="${voList.num}">
																	
					<!-- row data -->	
					<!-- PurchaseInfo VO -->
					<input type="hidden" id="totalAmount" name="amount" value="${totalAmount}">
					<input type="hidden" id="shippingFee" name="shippingFee" value="${shippingFee}">
					<input type="hidden" id="finalAmount" name="totalAmount" value="${finalAmount}">
					<input type="hidden" id="merchant_uid" name="merchant_uid">
					<input type="hidden" id="customer_uid" name="customer_uid">
					<input type="hidden" id="buyer_email" name="buyer_email" value="${login.email}">
					<input type="hidden" id="payAmount" name="payAmount" value=0>
					<input type="hidden" id="paid_method" name="paid_method" value="card">
					
					<!-- Supportor VO -->
					<input type="hidden" id="nameChk" name="nameYN" value="${openChk.nameYN}">
					<input type="hidden" id="amountChk" value="${openChk.amountYN}">
					<!-- fin: row data -->
				
					<div class="order_list-area">
					
						<table class="order_list-table">
							
							<!-- order data -->
							<c:forEach items="${orderList}" var="vo">
								
								<tr class="order_list">
								
									<td>
										
										<!-- purchase VO -->
										<!-- 서버에 배열로 넘어감 -->
										<!-- 구매 내역: purchaseVO에 나뉘어 들어감 -->
										<input type="hidden" name="orderQuantity" value="${vo.orderQuantity}">
										<input type="hidden" name="productNum" value="${vo.rewardVO.productNum}">
										<input type="hidden" name="option" value="${vo.purchaseOption}">
									
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
													
								<td>
									<span class="fee-area fee-title">펀딩금액</span>
									<span class="fee-area fee-amount">${totalAmountStr}원</span>
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
					<!-- fin: order list area -->
					
					<!-- shipping info area -->
					<div class="order_list-area shipping-info-area">
											
						<table class="shipping-info-table">
						
							<thead>
								<tr>
									<th class="supporter-info">펀딩 서포터</th>
									<th style="width: 1rem;"></th>
									<th class="supporter-info">리워드 배송지</th>
								</tr>
							</thead>
							
							<tbody>
							
								<tr>
								
									<td class="supporter-info" style="display: unset;">
										
										<div id="supporter_info">
										
											<div class="buyer-info">
												<span class="supporter supporter-title">이름</span>
												<span class="supporter supporter-data">${login.memberName}</span>
											</div>
											
											<div class="buyer-info">
												<span class="supporter supporter-title">이메일</span>
												<span class="supporter supporter-data">${login.email}</span>
											</div>
											
											<div class="buyer-info">
												<span class="supporter supporter-title">휴대폰</span>
												<span class="supporter supporter-data">${login.phone}</span>
											</div>
											
											<div>
												<input type="checkbox" id="policy-chk" required="required">
												<label for="policy-chk" id="policy-contents">(필수) 펀딩 진행에 대한 새소식 및 결제 관련 안내를 받습니다.</label>
											</div>
											
										</div>
										
									</td>
									
									<td></td>
												
									<td class="supporter-info shipping-space">
									
										<!-- PurhcaseInfo VO -->
										<div class="input-shipping-info">
											<div class="shipping-info" id="buyer-name-title">이름</div>
											<input type="text" name="buyer_name" class="shipping-txt" id="buyer-name" required="required">
										</div>
	
										<div class="input-shipping-info">
											<div class="shipping-info" id="buyer-tel-title">휴대폰 번호</div>
											<input type="text" name="buyer_tel" class="shipping-txt" id="buyer-tel" required="required">
										</div>
										
										<div class="input-shipping-info">
											<div class="shipping-info" id="buyer-addr-title">주소</div>
											<button type="button" id="postcode-btn" >우편번호 검색</button>
											<input type="hidden" name="buyer_postcode" id="buyer-postcode">
											<input type="hidden" name="buyer_addr" id="buyer-addr">
											<input type="text" name="doro_addr" class="shipping-txt custom-txt" id="doro-addr" placeholder="주소 입력" readonly="readonly" required="required">
											<input type="text" name="detail_addr" class="shipping-txt custom-txt" id="detail-addr" placeholder="상세주소" >
										</div>
										
										<div class="input-shipping-info">
											<div class="shipping-info" id="custom-data-title">배송 시 요청사항 (선택)</div>
											<input type="text" name="custom_data" class="shipping-txt custom-txt" id="custom-data" placeholder="ex) 부재시 경비실에 보관해주세요.">
											<div id="custom-data-description">
												<span>해당 요청사항은 배송에 관련된 내용만 적어주세요.</span>
											</div>
										</div>
										
									</td>
									
								</tr>
							
							</tbody>
							
						</table>
						<!-- fin: shipping info table -->
						
					</div>
					<!-- fin: shipping info area -->
					
					<!-- buyer policy -->
					<div class="order_list-area" id="buyer-chk-policy">
					
						<span id="policy-title">약관 동의</span>
					
						<!-- policy chk table -->
						<table class="policy-chk-table">
						
							<thead style="border: 1px solid #EAEAEA;">
								<tr>
									<td>
										<label for="total-chk" id="total-chk-label" >
											<input type="checkbox" id="total-chk" required="required">
											 <span class="policy-title" id="total-chk_span">전체 동의하기</span>
										</label>
									</td>
								</tr>
							</thead>
							
							<tbody>
							
								<tr>
									<td>
										<label for="first-chk" id="total-chk-label" >
											<input type="checkbox" id="first-chk" class="sub_policy" required="required">
											 <span class="policy-title sub-title">제 3자에 대한 개인정보 제공 동의</span>
											<span class="policy-description">보기</span>
										</label>
									</td>
								</tr>
	
								<tr>
									<td>
										<label for="second-chk" id="total-chk-label">
											<input type="checkbox" id="second-chk" class="sub_policy" required="required">
											 <span class="policy-title sub-title">책임 규정에 대한 동의</span>
											<span class="policy-description" >보기</span>
										</label>
									</td>
								</tr>							
							
							</tbody>
						
						</table>
						<!-- fin: policy chk table -->
					
					</div>
					<!-- fin: buyer policy -->
					
					
					<div class="order_list-area btn-area">
					
						<button id="pay-reservation_btn" type="button">결제 예약하기</button>
					
					</div>

				</form>

			</div>
		
		</main>
				
	</body>
	
	<c:import url="../common/postcode.jsp"></c:import>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript" src="/js/common/postcode.js"></script>
	
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
	<script type="text/javascript">

		$("#pay-reservation_btn").click(function(){
			payReservation();
		});
		
		var IMP = window.IMP; // 생략해도 괜찮습니다.
		IMP.init("imp35382026"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
		  
		// 정기결제 빌링키 발급
		function payReservation(){

			var payDate = '${voList.payDate}';
			payDate = new Date(payDate).getTime();
			
			var buyer_name = $("#buyer-name").val();
			var buyer_tel = $("#buyer-tel").val();
			var buyer_addr = $("#doro-addr").val() + " " + $("#detail-addr").val();
			var buyer_postcode = $("#buyer-postcode").val();

			var randomNum = Math.floor( Math.random() * (10000 - 1) + 1 ) + 1;
			var merchant_uid = 'merchant_' + new Date().getTime();
			var customer_uid = '${login.memberNum}' + "_" + randomNum;
			
			// IMP.request_pay(param, callback) 호출
			IMP.request_pay({ // param
				
				pg: "jtnet",
			    pay_method: "card", // "card"만 지원됩니다
			    merchant_uid: merchant_uid, // 빌링키 발급용 주문번호
			    customer_uid: customer_uid, // 카드(빌링키)와 1:1로 대응하는 값
			    name: "최초인증결제",
			    amount: 0, // 0 으로 설정하여 빌링키 발급만 진행합니다.
			    buyer_email: '${login.email}',
			    buyer_name: buyer_name,
			    buyer_tel: buyer_tel,
			    buyer_addr: buyer_addr,
			    buyer_postcode: buyer_postcode
			    
				}, function (rsp) { // callback

			    	if (rsp.success) {
				    	
				    	alert("빌링키 발급 성공");

				    	$("#buyer_addr").val(buyer_addr);
				    	$("#merchant_uid").val(merchant_uid);
				    	$("#customer_uid").val(customer_uid);

						$("#buy-frm").submit();
						
      		 	   		/*
      		 	   		
      		 	   		주문정보 전달하기
      		 	   		
      		 	   		DB에 저장할 데이터 서버로 보내기
      		 	   		jQuery.ajax({
							url: "https://www.myservice.com/billings/", // 서비스 웹서버
							method: "POST",
							headers: { "Content-Type": "application/json" },
							data: {
								customer_uid: customer_uid, // 카드(빌링키)와 1:1로 대응하는 값
							}
						}); 
						
						*/
			      		
			    	} else {

						alert("빌링키 발급 실패");
			      		
			    	}
			    	
				
			});
			
		}
					
		// 우편번호 가져오기
		$("#doro-addr").click(function() {
 			sample2_execDaumPostcode();
		});

		$("#postcode-btn").click(function() {
 			sample2_execDaumPostcode();
		});
	
		// 전체 동의 체크
		$("#total-chk").click(function(){
			totalPolicyChk($(this).prop("checked"));
		});

		$(".sub_policy").click(function(){
			policyChk();
		});

		function policyChk(){
			
			var is_checked = true;

		    $(".sub_policy").each(function(){
		        is_checked = is_checked && $(this).is(":checked");
		    });

			$("#total-chk").prop("checked", is_checked);
		    
		}
		
		function totalPolicyChk(totalChk){
			$(".sub_policy").prop("checked", totalChk);
		}

	</script>
	
</html>