<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div>
				<span class="main__span--project-achieve">
					<span style="font-weight: 500;">${vo.openDate}&nbsp;&nbsp;00시 00분 오픈예정</span>
				</span>
			</div>
			<div>
				<span>${vo.makerNum}</span>
			</div>
		</div>
	</div>
</c:forEach>
<input type="hidden" title="${funding.hasNext()}" class="hasNextChk"/>