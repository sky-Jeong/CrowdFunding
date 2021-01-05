<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>${info.title}</title>
		
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/reward/second-navbar.css">
		<link rel="stylesheet" href="/css/detail/select.css">
		<link rel="stylesheet" href="/css/detail/modal-css.css">
		
		<style type="text/css">
			
			#project-image{
				width: 100%; height: 35rem;
				background-size: cover;
			}
			
			#div__project-summary{
				padding: 3rem 1.5rem;
			}
			
			#div__project-summary span{
				line-height: 2.5rem;
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			#div__project-summary-info {
			    padding: 2rem;
			    background: rgba(0, 196, 196, 0.1);
			}
			
			#div__fuding-info{
				color: #00b2b2;
				font-size: 1.3rem;
				font-weight: 300;
				margin-bottom: 1rem;
			}
			
			#span__funding-info{
				color: #4C4C4C;
				font-size: 1.2rem;
			}
			
			.div__project-title{
				border-left: 2px solid #D5D5D5;
				margin: 3rem 0px 2rem;
				padding-left: 1rem;
				font-size: 2rem;
				font-weight: bold;
			}
			
			.ol__info li{
				margin: 1rem 0px;
				font-size: 1.7rem;
			}
			
			#ol__date-info li{
				font-weight: 200;
			}
			
			#ol__policy-info{
				list-style-type:circle;
			}
			
			#ol__policy-info li{
				font-weight: 150;
			}
			
			.contents-faq{
				font-size: 1.7rem;
				font-weight: 190;
			}
			
			.div__faq-area{
				margin: 3rem 0px;
			}
			
			.div__project-que{
				margin: 1rem 0px;
			}

		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			
			<div class="container">
			
				<div class="contents-area left-contents">
				
					<div>
						<div id="project-image" style="background-image: url('${info.image}');"></div>
						<div id="div__project-summary">
							<span id="span__project-summary">${info.summary}</span>
						</div>
					</div>
					
					<div style="margin-top: 2rem;">
						
						<div id="div__project-summary-info">
							<div id="div__fuding-info">
								<div>목표 금액 ${info.achieveAmount}원</div>
								<div>펀딩 기간 ${info.startDate}-${info.deadline}</div>
							</div>
							<div>
								<span id="span__funding-info">100% 이상 모이면 펀딩이 성공되며, 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.</span>
							</div>
						</div>
						
					</div>
					
					<div style="margin-top: 4rem;">
						
						<!-- Project Story -->
						<div class="div__project-title">프로젝트 스토리</div>
						<div class="div__project-contents">
							<div>${info.contents}</div>
						</div>
						
						<!-- Project Goal -->
						<div class="div__project-title">프로젝트 진행 동기 및 목적</div>
						<div class="div__project-contents">
							<div>${info.projectGoal}</div>
						</div>
						
						<!-- Project schedule Area -->
						<div class="div__project-title">프로젝트 일정</div>
						<div class="div__project-contents">
							<div>
								<ol class="ol__info" id="ol__date-info">
									<li>펀딩 오픈일: ${info.startDate}</li>
									<li>펀딩 종료일: ${info.deadline}</li>
									<li>결제 진행일: ${info.payDate}</li>
									<li>배송 시작일: ${info.sendDate}</li>
								</ol>
							</div>
						</div>
						
						<!-- FAQ Area -->
						<div class="div__project-title">FAQ</div>
						<div class="div__project-contents contents-faq">
							<c:forEach items="${info.faqVOs}" var="vo">
								<div class="div__faq-area">
									<div class="div__project-que">
										<span style="font-weight: bold;">Q. ${vo.question}</span>
									</div>
									<div class="div__project-answer">
										<span>A. ${vo.answer}</span>
									</div>
								</div>
							</c:forEach>
						</div>
						
						<!-- Common Policy -->
						<div class="div__project-title">A/S 정책</div>
						<div class="div__project-contents">
							<div>
								<ul class="ol__info" id="ol__policy-info">
									<li>제품 하자시 교환이 가능합니다.</li>
									<li>서포터 부주의로 인한 손상은 교환/환불이 불가능 합니다.</li>
									<li>교환 요청시 ${info.makerVO.company} 공식 홈페이지 (${info.makerVO.homepage}) 또는 고객센터 ${info.makerVO.tel}으로 문의부탁드립니다.</li>
									<li>이 외 모든 다른 사항은 와디즈 운영 정책에 따릅니다.</li>
								</ul>
							</div>
						</div>
						
						<div class="div__project-title">교환</div>
						<div class="div__project-contents">
							<div>
								<ul class="ol__info" id="ol__policy-info">
									<li>리워드 수령 후 개봉시에는 교환이 불가능 합니다.</li>
									<li>제품이 파손된 채로 배송되었을 경우 교환 가능합니다.</li>
									<li>단순 변심으로 인한 교환은 불가능 합니다.</li>
									<li>제품하자로 인한 교환시, 발생하는 비용은 전액 메이커가 부담합니다.</li>
									<li>서포터님의 부주의로 인한 교환 시 왕복배송비(5,000원)을 부담하셔야 합니다.</li>
								</ul>
							</div>
						</div>
						
						<div class="div__project-title">펀딩금 반환</div>
						<div class="div__project-contents">
							<div>
								<ul class="ol__info" id="ol__policy-info">
									<li>펀딩금 반환 신청은 서포터가 직접 ‘My 메뉴 > 나의 펀딩’에서 직접 진행합니다.</li>
									<li>펀딩금 반환은 마이와디즈 서포터 탭의 [펀딩하기] 메뉴 선택하여 [펀딩 내역] 페이지에서 펀딩금 반환 신청을 원하는 프로젝트를 클릭해 신청할 수 있습니다.</li>
									<li>프로젝트 페이지 상단 '반환/정책' 탭에서 자세한 내용 확인 가능합니다.</li>
									<li>단순변심 또는 제품하자가 아닌 서포터님의 부주의로 인한 제품 손상은 교환 및 펀딩금 반환이 불가합니다.</li>
									<li>리워드 교환을 원하는 경우, 메이커에게 문의하기를 통해 직접 문의 해주시기 바랍니다.</li>
									<li>반환 신청 후, 신청 취소가 불가하니 신중하게 신청해주세요.</li>
									<li>카드 결제 취소는 카드사에 따라 약 2 - 5영업일 소요됩니다.</li>
									<li>펀딩시, 쿠폰 / 포인트를 사용하고 일부 리워드만 펀딩금 반환되는 경우, 사용한 전액이 우선 반환됩니다.</li>
								</ul>
							</div>
						</div>
						
					</div>
					
				</div>
				
				<!-- 오른쪽 콘텐츠 -->
				<div class="contents-area right-contents">
					<c:import url="./common/detail_right_contents.jsp"></c:import>
				</div>
				
			</div>
			
		</main>
		
		<c:import url="../../common/modal-login-YN.jsp"></c:import>
		
	</body>
	
	<script type="text/javascript" src="/js/detail/modal-event.js"></script>
	<script type="text/javascript" src="/js/detail/select.js"></script>
	<script type="text/javascript" src="/js/detail/detail_right_contents.js"></script>
	
	<script type="text/javascript">

		var like = '${like}';
		var projectNum = '${info.num}';
		var login = '${login.memberName}';

		likeChk(like);

		$("#like_btn").click(function(){
			
			if(login == ''){
				openLoginModal();
			} else {
				if(like == 'true'){
					setLike(projectNum, -1);
				} else {
					setLike(projectNum, +1);
				}
			}
			
		});

		function likeChk(like){
			alert(like);
			if(like == 'true'){
				$("#heart-icon").css("color","#FF5A5A");
			} else {
				$("#heart-icon").css("color","#DCDCDC");
			}
			
		}

		function setLike(projectNum, plus){
			location.href = "/like/save?projectNum="+projectNum+"&like="+plus;
		}
	
	</script>
	
</html>