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
			
			.modal-address {
				display: none;
				position: fixed;
				z-index: 20000;
				left: 25%;
				width: 50%;
				padding: 20px;
				border: 1px solid #333;
				background-color: white;
				border-radius: 20px;
			}
			
			.popup-wrap {
				border: 1px solid #333;
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
				
				<form action="" method="post">
																	
					<!-- row data -->	
					<!-- PurchaseInfo VO -->
					<input type="hidden" id="totalAmount" name="amount" value="${totalAmount}">
					<input type="hidden" id="shippingFee" name="shippingFee" value="${shippingFee}">
					<input type="hidden" id="finalAmount" name="totalAmount" value="${finalAmount}">
					
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
											<input type="text" name="buyer_addr" class="shipping-txt custom-txt" id="buyer-addr" placeholder="상세주소" required="required">
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
					
						<button id="pay-reservation_btn" type="submit">결제 예약하기</button>
					
					</div>

				</form>

			</div>
		
		</main>
				
	</body>
	
	<!-- 우편번호 찾기 modal -->
	<!-- https://enfanthoon.tistory.com/163 -->
	<div class="modal-address" id="modal-address">
		
		<div>주소찾기</div>
		<div id="popup-wrap"> 

		</div> 
		
		<button type="button" onclick=""> 주소찾기 </button>
	
	</div>
	
	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">

		$("#postcode-btn").click(function() {
			getPostCode();
			//execDaumPostcode();
		});
		
		function getPostCode(){
			// 우편번호 API
		    new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
		            /* alert(data.zonecode) */
		        }
		    }).open();
		}
		
		// 체크 요함
		function execDaumPostcode() { // 현재 scroll 위치를 저장해놓는다.

			var element_wrap = document.getElementById('popup-wrap');
			var address_modal = document.getElemeentById('modal-address');
			var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
			
			new daum.Postcode({ oncomplete: function(data) { 
				// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 
				// 각 주소의 노출 규칙에 따라 주소를 조합한다. 
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. 
				var addr = ''; 
				// 주소 변수 
				var extraAddr = ''; 
				// 참고항목 변수 
				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다. 
				if (data.userSelectedType === 'R') { 
					// 사용자가 도로명 주소를 선택했을 경우 
					addr = data.roadAddress; 
				} else { 
					// 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}
				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if(data.userSelectedType === 'R'){ 
					// 법정동명이 있을 경우 추가한다. (법정리는 제외) 
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다. 
					if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){ 
						extraAddr += data.bname;
					} 
					// 건물명이 있고, 공동주택일 경우 추가한다. 
					if(data.buildingName !== '' && data.apartment === 'Y'){ 
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName); 
					} 
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다. 
					if(extraAddr !== ''){ 
						extraAddr = ' (' + extraAddr + ')'; 
					} 
					// 조합된 참고항목을 해당 필드에 넣는다. 
					document.getElementById("sample3_extraAddress").value = extraAddr; 
				} else { 
					document.getElementById("sample3_extraAddress").value = ''; 
				} 

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('postcode').value = data.zonecode; document.getElementById("address").value = addr; 
				// 커서를 상세주소 필드로 이동한다. 
				document.getElementById("detailAddress").focus(); 
				// iframe을 넣은 element를 안보이게 한다. 
				// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.) 
				element_wrap.style.display = 'none'; 
				address_modal.style.display = 'none'; 
				// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다. 
				document.body.scrollTop = currentScroll; 
				}, 
				// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다. 
				onresize : function(size) { element_wrap.style.height = size.height+'px'; }, width : '100%', height : '100%' }).embed(element_wrap);
				// iframe을 넣은 element를 보이게 한다. 
				element_wrap.style.display = 'block'; address_modal.style.display = 'block'; }
					
	
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