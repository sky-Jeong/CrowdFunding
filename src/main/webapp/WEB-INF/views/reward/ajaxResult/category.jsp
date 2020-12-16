<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${category.first != true}">
	<button class="main__button--paging" id="main__button--before-btn" onclick="setPage('minus')">◁</button>
</c:if>
<c:forEach items="${category.content}" var="vo">
	<a href="#" class="main__a--category">
		<span class="main__span--category-area">
			<span class="main__span--category-circle"
				  style="background-image: url(http://static.wadiz.kr${vo.categoryImage});"></span>
			<span class="main__span--category-name">${vo.categoryName}</span>
		</span>
	</a>
</c:forEach>
<c:if test="${category.last != true}">
	<button class="main__button--paging" id="main__button--next-btn" onclick="setPage('plus')">▹</button>
</c:if>