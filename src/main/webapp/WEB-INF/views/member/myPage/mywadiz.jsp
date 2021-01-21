<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 - 마이하디즈</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.container{
				width: 68%;
				padding: 0px;
				margin-top: 5rem;
			}
			
			/* Left wrapper */
			.left-wrapper{
				width: 25%;
				padding: 2rem;
				float: left;
			}
			
			.left-header{
				text-align: center;
				padding: 2rem 0px 3rem;
				margin-bottom: 2rem;
				border-bottom: 1px solid #EAEAEA;
			}
			
			#member-name{
				color: #5D5D5D;
				font-size: 1.7rem;
			}
			
			#member-name span{
				color: black !important;
				font-weight: bold;
			}
			
			#member-name i{
				font-weight: 300;
			}
			
			.left-header div:nth-child(2){
				color: #A6A6A6;
				font-size: 1.2rem;
				font-weight: 300;
			}
			
			.ul-stlye{
				padding: 0px;
				list-style: none;
			}
			
			.menu-list li{
				padding: 1rem;
				border-radius: 5px;
				cursor: pointer;
			}
			
			.menu-list li:hover{
				color: #00c4c4;
				box-shadow: 5px 5px 5px #EAEAEA;
			}
			
			#activate{
				color: #00c4c4;
				box-shadow: 5px 5px 5px #EAEAEA;
			}
			/* Fin: left wrapper */
			
			.right-wrapper{
				width: 75%;
				float: left;
				padding: 2rem 0px 15rem 3rem;
				border-left: 1px solid #EAEAEA;
			}
			
			/* right wrapper: supporter */	
			.funding-summary{
				margin-bottom: 4rem;
			}
			
			.funding-cards{
			
				width: 100%;
			
				display: table;
				padding: 2rem 0px;
				
				border: 1px solid #D5D5D5;
				border-radius: 8px;
				
				text-align: center;
				box-shadow: 1px 1px 3px 2px #EAEAEA;
			
			}
			
			.funding-cards li{
				width: 28%;
				display:inline-table;
				margin: 0px 1rem;
				padding: 1.2rem 0px;
				cursor: pointer;
			}
			
			.funding-cards li:nth-child(2){
				width: 33%;
				margin: 0px;
				border-left: 1px solid #D5D5D5;
				border-right: 1px solid #D5D5D5;
			}

			a:hover{
				text-decoration: none;
			}
			
			.funding-cards li a{
				color: #353535;
			}			
			
			.card-title{
				display: block;
				margin: 0.5rem 0px;
			}
			
			.title-count{
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			.title-count b{
				font-size: 2.5rem;
			}
			
			.funding-summary-title{
				
				padding-left: 0.5rem;
				margin-bottom: 1.3rem;	
			
				font-size: 1.75rem;
				font-weight: 700;
			
			}
			
			.message-icon{
				color: #5D5D5D;
			}
			
			.info-wrapper{
				width: 100%;
				margin: 2.5rem 0px 1rem;
			}
			
			.info-contents{
	
				display: inline-block;
			
				width: 50%;
				padding: 1.5rem 1rem;
				
				border-top: 1px solid #EAEAEA;
				border-bottom: 1px solid #EAEAEA;
				
				cursor: pointer;

			}
			
			.info-contents:nth-child(1), .info-contents:nth-child(3){
				float: left;
			}
			
			.info-contents:nth-child(3), .info-contents:nth-child(4){
				border-top: none;
			}
			
			.info-contents *{
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			.contents-span{
				display: inline-block;
			}
			
			.contents-span:nth-child(2){
				float: right;
				color: #EAEAEA;
			}
			
			#info-title{
				margin-left: 1.5rem;
			}
			
			.info-wrapper:nth-child(2){
				margin: 1rem 0px;
			}
			/* fin: right wrapper: supporter */
		
			/* right wrapper : maker */
			
			.maker-category{
				width: 100%;
				display: table;
				margin: 0px;
			}
			
			.maker-category li{
			
				margin: 0px 1rem;
				padding: 0.8rem 1.5rem;
				
				text-align: center;
				
				font-size: 1.5rem;
				
				display: inline-table;
				
			}
			
			.member-category_wrapper{
				border-bottom: 1px solid #EAEAEA;
			}
			
			.maker-select{
				cursor: pointer;
			}
			
			#maker-activate{
				
				font-weight: bold;
				
				border-bottom: 2px solid black;
				box-sizing: border-box;
				
			}
			
			.funding-area{
				padding: 4rem 0px 1rem;
			}
			
			.maker_info-contents{
				width: 100%;
				color: #8C8C8C;
				text-align: center;
			}
			
			.maker_info-contents div:nth-child(1){
				
				color: #353535;
				margin-bottom: 1rem;
				
				font-size: 1.5rem;
				font-weight: 700;

			}
			
			.maker_info-contents > span{
				font-size: 1.3rem;
				font-weight: 200;
			}
			
			.make-btn-area{
				margin: 2rem 0px 1rem;
			}
			
			#funding-open-btn{
				
				width: 100%;
				color: white;
					
				border: none;
				border-radius: 3px;
				background-color: #00c4c4;
				
				padding: 0.9rem;
				
				font-size: 1.6rem;
				font-weight: 300;
				
			}
			
			.maker-funding-info{
				margin-bottom: 1rem !important;
			}
			
			/* fin: right wrapper : maker */
		
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>
		
		<div class="container">	
		
			<div class="contents-wrapper">
			
				<div class="left-wrapper">
				
					<div class="left-header">
						<div id="member-name">
							<span>${login.memberName}</span> 님 <i class="glyphicon glyphicon-menu-right" style="font-size: 1.4rem;"></i>
						</div>
						<div>
							서포터 ・ 개인 회원
						</div>
					</div>
					
					<div>
						<div>
							<ul class="ul-stlye menu-list">
								<li class="member-select" data-index="0">서포터</li>
								<li class="member-select" data-index="1">메이커</li>
							</ul>
						</div>
					</div>
				
				</div>
			
				<div class="right-wrapper">
				
					<div class="member-contents contents-0">
						<c:import url="./right/right-supporter.jsp"></c:import>
					</div>
				
					<!-- maker 영역 -->
					<div class="member-contents contents-1">
					
						<div class="funding-summary maker-funding-info">
							
							<div class="member-category_wrapper">
								<ul class="ul-stlye maker-category">
									<li class="maker-select" data-index="0">펀딩하기</li>
									<li class="maker-select" data-index="1">투자하기</li>
								</ul>
							</div>
						
						</div>
						
						<!-- 펀딩하기 -->
						<div class="funding-contents funding-0">
						
							<div class="funding-summary">
							
								<div class="funding-area">
								
									<!-- 펀딩 내역이 없을 경우 -->
									<c:import url="./right/maker/none-funding.jsp"></c:import>
								
									<!-- 펀딩 내역이 있을 경우 -->
									
									<!-- 공통 부분 -->	
									<div class="make-btn-area">
										<button id="funding-open-btn"></button>
									</div>
									
								</div>
								
							</div>
							
							<!-- 이동 버튼 모음 -->
							<c:import url="./right/maker/funding-category.jsp"></c:import>

						</div>
						<!-- fin: 펀딩하기 끝 -->
						
					</div>
					<!-- fin: maker -->

				</div>
			
			</div>
			
		</div>
		
	</body>
	
	<script type="text/javascript">

		// 개수 카운트
		$("#purchase-count_b").text('${count.purchase}');

		// 좋아요 카운트
		$("#like-count_b").text('${count.like}');

		// 메이커 카테고리 기능
		var makerIndex = 0;
		makerSelectCss();

		$(".maker-select").click(function(){
			makerIndex = $(this).attr("data-index");
			makerSelectCss();
		});

		function makerSelectCss(){

			$(".maker-select").each(function(){
			    
				var index = $(this).attr("data-index");
	
				if (index == makerIndex){
					$(this).attr("id","maker-activate");
					infoText(index);
				} else {
					$(this).attr("id","");
				}
				
		    });
			
		}

		function infoText(makerIndex){

			var onClickFnc = "fundingMoveFuntion()";
			var btnText = "펀딩 오픈 신청하기";
			var prText = "와디즈 펀딩을 처음으로 만들어보세요";
			var description = "펀딩한 서포터에게 제품이나<br>서비스를 제공합니다.";
			
			if (makerIndex == 1){
				onClickFnc = "investMoveFuntion()";
				btnText = "투자 유치 신청하기";
				prText = "와디즈에서 투자유치를 시작하세요";
				description = "투자자에게 기업의 주식이나<br>채권을 발행합니다";
			}

			$(".description").eq(0).html(description);
			$(".description").eq(1).html(prText);
			
			$("#funding-open-btn").text(btnText);
			$("#funding-open-btn").attr("onclick", onClickFnc);

		}

		function fundingMoveFuntion(){
			location.href="/studio/rewardRegistration";
		}
		
		function investMoveFuntion(){
			alert("투자유치는 현재 준비 중입니다.");
		}

		// 멤버모드 선택
		var dataIndex = 0;
		memberSelectCss();

		$(".member-select").click(function(){
			dataIndex = $(this).attr("data-index");
			memberSelectCss();
		});

		function memberSelectCss(){
			
		    $(".member-select").each(function(){
			    
				var index = $(this).attr("data-index");
	
				if (index == dataIndex){
					$(this).attr("id","activate");
					rightContents(index);
				} else {
					$(this).attr("id","");
				}
				
		    });

		}

		function rightContents(index){
			$(".member-contents").css("display","none");
			$(".contents-" + index).css("display","block");		
		}
	    
	</script>
	
</html>