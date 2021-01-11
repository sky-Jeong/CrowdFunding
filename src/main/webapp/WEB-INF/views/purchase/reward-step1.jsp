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
			
			.div_contents-header > span, .open-header div:nth-child(2) span{
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
			
			.order-qty-txt{
				width: 7rem;
				color: #353535;
				font-weight: 400;
				padding-right: 0.8rem;
				border: 1px solid #00c4c4;
				text-align: right;
			}
			
			.option{
				width: 40%;
			}
			
			.order-opt{
				width: 100%;
			}
						
			.span_option{
				color: #00c4c0;
				margin-left: 1rem;
			}
			
			.checked-area{
				display: none;
			}
			
			.sub-wrapper{
				display: inline-block;
			}
			
			.open-header > div:nth-child(1){
				
				margin-right: 3rem;
				
				font-size: 1.6rem;
				font-weight: bold;
				
			}
			
			.open-header > div:nth-child(2) > div:nth-child(1) span:nth-child(1){
				font-size: 1.4rem;
			}
	
			.open-header > div:nth-child(2) > div:nth-child(1) span:nth-child(2) {
				color: #8C8C8C;
				font-size: 1.3rem;
			}
			
			.chk-wrapper{
				padding: 2rem 0px 0.8rem;
				text-align: center;
			}
			
			.chk-label{
			    display: inline-block;
			    height: 3rem;
			    font-weight: 300;
			    font-size: 2rem;
			}
			
			.open-chk{
				margin-left: 1rem;
			}
			
			.div_order-footer{
				padding: 2rem 0px;
			}
			
			.order-summary{
				text-align: center;
				font-size: 1.7rem;
				font-weight: 500;
				margin-bottom: 1.8rem;
			}
			
			#order-total{
				color: #00c4c4;
				text-decoration: underline;
			}
			
			.order-btn-wrapper{
				text-align: center;
			}
			
			#next-step-btn{
			
				color: white;
				font-size: 1.8rem;
			
				border: none;
				border-radius: 3px;
				background-color:#00c4c4;
			
				padding: 1.5rem 2.1rem;
			
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
				
				<!-- 주문 넣기 폼 -->
				<form method="post" name="orderFrm">
									
					<div class="div_contents-wrapepr">
					
						<div class="div_contents-header">
							<span>
								<span id="sub-title">리워드 선택</span> 펀딩해주시는 금액에 따라 감사의 의미로 리워드를 제공해 드립니다.
							</span>
						</div>
					
						<!-- reward list -->
						<div class="div_reward-list">
	
							<ul class="ul_reward-list">
							
								<c:forEach items="${voList.rewardVOs}" var="vo">
								
									<!--  반복문 돌릴 부분 -->
									<li class="div_reward" title="${vo.productNum}">
	
										<dl class="dl_reward-box" title="${vo.productNum}">
											<dt>
												<label>
													<input type="checkbox" class="reward-chk" id="chk_reward-${vo.productNum}" name="productNum" value="${vo.productNum}">
												</label>
											</dt>
											<dd>
												<input type="hidden" id="amount-${vo.productNum}" value="${vo.amount}">
												<input type="hidden" id="remains-${vo.productNum}" value="${vo.limitedQuantity}">
												<label for="chk_reward-${vo.productNum}" style="width: 99%;">
													<p class="amount">${vo.amountStr}원 펀딩합니다.</p>
													<p class="contents">
														<span class="title">${vo.title}</span>
														<span class="remains"> (${vo.limitedQuantity - vo.quantity}개 남음)</span>
													</p>
													<p class="reward-contents reward-name">
														${vo.product}
													</p>
													<p class="reward-contents">
														<span class="shipping">${vo.shippingFeeStr} | 리워드 제공 예상일: ${vo.shippingDate} </span>
													</p>
												</label>
												
												<!-- 클릭시 수량 체크를 보이기 위함 -->
												<div class="checked-area checked-area-${vo.productNum}" style="width: 100%;">
												
													<div class="quantity">
														<p class="reward-contents">수량</p>
														<p class="input-area">
															<button type="button" class="qty_btn qty_minus-btn" onclick="quantity('minus', ${vo.productNum})">
																<i class="glyphicon glyphicon-menu-left qty-btn-icon"></i>
															</button>
															<input type="text" name="orderQuantity" title="3" class="order-qty-txt order-qty-${vo.productNum}" value="1">
															<button type="button" class="qty_btn qty_plus-btn" onclick="quantity('plus', ${vo.productNum})">
																<i class="glyphicon glyphicon-menu-right qty-btn-icon"></i>
															</button>
														</p>
													</div>
													
													<c:if test="${not empty vo.option}">
														<div class="option">
															<p class="reward-contents">옵션<span class="span_option">예시) 주황, 노랑</span></p>
															<p class="input-area">
																<input type="text" name="option" class="order-opt order-opt-${vo.productNum}" value="">
															</p>
														</div>
													</c:if>
	
												</div>
												<!-- fin: 수량 및 옵션 체크 범위 -->
												
											</dd>
										</dl>
									
									</li>
									<!-- fin: 반복문 부분 -->
									
								</c:forEach>
								
							</ul>
	
						</div>
						<!-- fin: reward list -->
					
					</div>
					<!-- fin: contents wrapper -->
					
					<!-- 공개여부 선택 -->
					<div class="div_open-wrapper">
					
						<div class="open-header">
						
							<div class="sub-wrapper" style="float: left;">공개여부 (선택)</div>
							<div class="sub-wrapper">
							
								<div>
									<span>서포터 목록에 서포터 이름과 펀딩 금액이 공개됩니다. 조용히 펀딩하고 싶으시다면, 비공개로 선택해주세요.</span>
									<br>
									<span>커뮤니티, 새소식 댓글 작성 시에는 비공개 여부와 상관없이 펀딩 참여자 표시가 노출됩니다.</span>
								</div>
								
								<div class="chk-wrapper">
									<label for="name-open-chk" class="chk-label" style="margin-right: 15rem;"><input type="checkbox" name="nameYN" id="name-open-chk"><span class="open-chk" >이름 비공개</span></label>
									<label for="amount-open-chk" class="chk-label"><input type="checkbox" name="amountYN" id="amount-open-chk"><span class="open-chk" >금액 비공개</span></label>				
								</div>
								
							</div>
						
						</div>
					
					</div>
					<!-- fin: 공개여부 선택 -->
					
					<!-- order footer -->
					<div class="div_order-footer">
						<div class="order-summary">
							${voList.title}에 <span id="order-total">159,000</span> 원을 펀딩합니다.
						</div>
						<div class="order-btn-wrapper">
							<button id="next-step-btn" type="button" onclick="goToStep2()">다음 단계로 <i class="glyphicon glyphicon-menu-right"></i></button>
						</div>
					</div>
					<!-- fin: order footer -->
					
				</form>
				<!-- 주문 넣기 -->

			</div>
			<!-- fin: container -->
		
		</main>
				
	</body>
	
	<script type="text/javascript" src="/js/purchase/step-chk.js"></script>
	<script type="text/javascript">

		priceCal();

		function getCheckData(){

			var chkArray = new Array();
			
			$('input:checkbox[name=productNum]:checked').each(function(){

				var data = new Object();
				var productNum = this.value;

				data.productNum = productNum;
				data.orderQuantity = $(".order-qty-" + productNum).val();
				data.option = $(".order-opt-" + productNum).val();
				
				data.nameYN = $("#name-open-chk").prop("checked");
				data.amountYN = $("#amount-open-chk").prop("checked");

				chkArray.push(data);
				
			});

			var jsonData = JSON.stringify(chkArray);
			return jsonData;
			
		}

		function goToStep2(){

			var num = '${voList.num}';
			var jsonData = getCheckData();
			alert(jsonData);
						
			$.ajax({
				url:"/purchase/order/"+num,
				type: "post",
				contentType: "application/json; charset=UTF-8",
				dataType:'json',
				data: jsonData,
				async: false,
				success: function(data){
					alert('success');
				}
			});
			
		}
	
		/* 주문 토탈금액 계산 */
		function priceCal(){

			var sum = 0;
			var reward = $(".reward-chk");

			for(i = 0; i < reward.length; i++){

				var rewardNum = $(".reward-chk").eq(i).val();

				if($(".reward-chk").eq(i).prop("checked") == true){

					var qty = $( ".order-qty-" + rewardNum ).val();
					var price = $( "#amount-" + rewardNum ).val();

					sum = sum + (qty * price);
					
				}
				
			}

		    sum = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");		    
			$("#order-total").text(sum);
			
		}
	
		/**
		* 클릭한 reward 보여주기
		*/
		$(".div_reward").click(function(){

			var rewardNum = $(this).attr("title");
			var check = $("#chk_reward-" + rewardNum).prop("checked");

			if (check == true){
				
				$(this).css("background-color","#E7F9F9");
				$(".checked-area-"+rewardNum).css("display","block");
				
			} else {

				$(this).css("background-color","#F6F6F6");
				$(".checked-area-"+rewardNum).css("display","none");
				
			}

			priceCal();
			
		});

		/**
		* 최소 주문 수량 및 최대 주문수량 체크
		*/
		$(".order-qty-txt").on("change", function(){
			
			var qty = parseInt($(this).val());
			var remain = parseInt($(this).attr("title"));
			
			qty = quantityChk(qty, remain);
			$(this).val(qty);

			priceCal();
			
		});

		function quantity(cal, rewardNum){

			var remain = parseInt($("#remains-" + rewardNum).val()); 
			var qty = parseInt($(".order-qty-"  + rewardNum).val());

			if(cal == 'plus'){

				qty = qty + 1;
				qty = quantityChk(qty, remain);

			} else if(cal == 'minus'){

				qty = qty - 1;
				qty = quantityChk(qty, remain);

			}

			$(".order-qty-" + rewardNum).val(qty);
			priceCal();
			
		}

		function quantityChk(qty, remain){

			remain = parseInt(remain);

			if( qty > remain ){
				alert("남은 수량보다 많이 주문하는 것은 불가능합니다.");
				qty = remain;
			} else if (qty < 1){
				qty = 1;
				alert("한 개 이상만 주문이 가능합니다.");
			}
			
			return qty;
			
		}

	</script>
	
</html>