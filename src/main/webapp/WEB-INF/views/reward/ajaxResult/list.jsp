<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${funding.content}" var="vo">
	<div class="main__div--project-card-item">
		<a href="#">
			<span class="main__span--project-card-item"
					style="background-image: url(${vo.image});"></span>
		</a>
		<div>
			<div class="main__div--project-card-title">
				<a>${vo.title}</a>
			</div>
			<div style="margin-bottom: 1.2rem;">
				<span class="main__span--project-summary">${vo.categoryVO.categoryName} | ${vo.makerVO.company}</span>
			</div>
			<div style="margin-bottom: 0.2rem;">
				<span style="height: 3px; width:${vo.showPercent}%; background-color: #00b2b2; display: block;"></span>
			</div>
			<div>
				<span class="main__span--project-achieve">
					<span style="font-weight: bold;">${vo.achievePercent}</span><span style="font-size: 1.6rem;">%</span>
					<span class="main__span--project-summary-2">
						<span style="font-weight: 400;">${vo.achieveAmount}</span>원
					</span>
				</span>
				<span class="main__span--project-summary-2" style="float: right;">
					${vo.countDown}일 남음
				</span>
			</div>
		</div>
	</div>
</c:forEach>
<input type="hidden" title="${funding.hasNext()}" class="hasNextChk"/>