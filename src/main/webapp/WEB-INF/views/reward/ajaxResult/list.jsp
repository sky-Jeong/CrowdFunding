<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${funding.content}" var="vo">
	<div class="main__div--project-card-item">
		<a href="./detail/main/${vo.num}">
			<span class="main__span--project-card-item"
					style="background-image: url(${vo.image});"></span>
		</a>
		<div>
			<div class="main__div--project-card-title">
				<a href="./detail/main/${vo.num}">${vo.title}</a>
			</div>
			<div style="margin-bottom: 1.2rem;">
				<span class="main__span--project-summary">${vo.categoryVO.categoryName} | ${vo.makerVO.company}</span>
			</div>
			<div style="margin-bottom: 0.2rem;">
				<span style="height: 3px; width:${vo.showPercent}%; background-color: #00c4c4; display: block;"></span>
			</div>
			<div>
				<span class="main__span--project-achieve">
					<span style="font-weight: bold;">${vo.achievePercent}</span><span style="font-size: 1.6rem;">%</span>
					<span class="main__span--project-summary-2">
						<span style="font-weight: 400;">${vo.achieveAmount}</span>원
					</span>
				</span>
				<span class="main__span--project-summary-2" style="float: right;">
					<c:choose>
						<c:when test="${vo.countDown > 0}">${vo.countDown}일 남음</c:when>
						<c:otherwise>종료・
							<c:choose>
								<c:when test="${vo.achievePercent >= 100}"><span style="color: #00c4c4;">성공</span></c:when>
								<c:otherwise><span>실패</span></c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</span>
			</div>
		</div>
	</div>
</c:forEach>
<input type="hidden" title="${funding.hasNext()}" class="hasNextChk"/>