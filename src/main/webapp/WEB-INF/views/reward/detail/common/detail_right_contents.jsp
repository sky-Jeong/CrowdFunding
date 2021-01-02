<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>				
<div>
						
	<c:choose>
	
		<c:when test="${info.countDown > 0}">
			<div id="div__countDown">${info.countDown}일 남음</div>
		</c:when>
		
		<c:otherwise>
		
			<c:choose>
			
				<c:when test="${info.achievePercent >= 100}">
					<div id="div__countDown" style="color:#00c4c4;">펀딩 성공</div>
				</c:when>
				
				<c:otherwise>
					<div id="div__countDown" style="color:#00c4c4;">펀딩 실패</div>
				</c:otherwise>
			
			</c:choose>
			
		</c:otherwise>
		
	</c:choose>
	
	<div style="margin: 3rem 0px;">
		<span style="height: 3px; width:${info.showPercent}%; background-color: #00c4c4; display: block;"></span>
	</div>
	<div class="div__funding-data"><span class="span__funding-data">${info.achievePercent}</span> % 달성</div>
	<div class="div__funding-data"><span class="span__funding-data">${info.achieveAmount}</span> 원 펀딩</div>
	<div class="div__funding-data"><span class="span__funding-data">${info.supporter}</span> 명의 서포터</div>
	
</div>

<div class="btn-area">

	<c:choose>
	
		<c:when test="${info.countDown > 0}">
			<button class="right-btn funding-btn" id="funding_btn">펀딩하기</button>
		</c:when>
		
		<c:otherwise>
			<button class="right-btn encore-btn" id="funding_btn">앵콜 펀딩 요청하기</button>
		</c:otherwise>
		
	</c:choose>
	
	<div class="sub-btn-wrapper">
		<button class="btn btn-default right-btn add-btn" id="like_btn">
			<i class="glyphicon glyphicon-heart icon"></i><span id="span_like">${info.peopleLike}</span>
		</button>
		
		<button class="btn btn-default right-btn add-btn" id="inquire_btn">
			<i class="glyphicon glyphicon-comment icon"></i><span id="span_like">문의</span>
		</button>
		
		<button class="btn btn-default right-btn add-btn" id="share_btn">
			<span>공유하기</span>
		</button>						
	</div>
	
</div>

<div class="funding-description">
	<span>
		<i class="glyphicon glyphicon-exclamation-sign"></i>
		펀딩하기는 쇼핑하기가 아닙니다!
		<a href="#" id="a__more-info">자세히 알아보기</a>	
	</span>
</div>

<!-- maker info area -->
<div class="div__maker-wrapper m-wrapper">

	<div id="div__maker-header">메이커 정보</div>
	
	<div class="div__maker-info">
		
		<div id="maker__company-name">${info.makerVO.company}</div>
		
		<div class="maker__btn-wrapper">
			<div class="maker__btn-title">메이커에게 문의해보세요!</div>
			<button class="maker__inquire-btn">
				<i class="glyphicon glyphicon-comment maker__icon"></i>메이커에게 문의하기
			</button>
		</div>
		
		<div class="maker__info-wrapper">
			
			<div class="maker__btn-title m-title m-title-bold maker-info-show" style="margin-bottom:0px;">
				<span>메이커 정보<i style="float: right;" class="glyphicon glyphicon-menu-down" id="menu-icon"></i></span>
			</div>
			
			<div class="maker-info__wrapper">
				
				<div class="maker__info-title title m-title-bold">메이커 연락처</div>
				<div class="maker__info-title">${info.email}</div>
				<div class="maker__info-title">${info.makerVO.tel}</div>
				<div class="maker__info-title">${info.makerVO.kakaoPlus}</div>
				
				<div class="maker__info-title sns-title m-title-bold">SNS</div>
				<div class="maker__info-title"><a href="${info.makerVO.homepage}">${info.makerVO.homepage}</a></div>
				
			</div>
		
		</div>
		
	</div>
	
</div>

<div id="div__maker-header">리워드 선택</div>
<!-- reward wrapper -->
<c:forEach items="${info.rewardVOs}" var="vo">

	<div class="div__maker-wrapper reward-wrapper">
		
		<div class="div__maker-info reward-info" title="${vo.productNum}">
			
			<div class="reward__info-detail" id="reward__amount">${vo.amountStr}원 펀딩</div>
			
			<div class="reward__info-detail">
			
				<div id="reward__product-title" class="reward__info-detail">${vo.title}</div>
				<div id="reward__product-name" class="reward__info-detail">${vo.product}</div>
				
				<div id="reward__product-name">배송비</div>
				<div id="reward__product-add-info" class="reward__info-detail">${vo.shippingFeeStr}원</div>
				
				<div id="reward__product-name">리워드 발송 시작일</div>
				<div id="reward__product-add-info" class="reward__info-detail">${vo.shippingDate}</div>
				
				<div class="reward__quantity quantity-color">
					<span>제한수량 ${vo.limitedQuantity}개</span>
					<span id="reward__quantity">현재 ${vo.remainder}개 남음!</span>
				</div>
				
				<div class="reward__quantity">
					총 ${vo.quantity}개 펀딩완료
				</div>
				
			</div>
			
		</div>
		
	</div>
	
</c:forEach>
