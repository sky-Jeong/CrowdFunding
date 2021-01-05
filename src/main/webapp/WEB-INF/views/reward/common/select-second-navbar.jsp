<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>		
<div class="contents__div-header contents-header">
	<div class="contents_category-name">
		<span>${info.categoryVO.categoryName}</span>
		<h2 title="${info.num}" id="h2__project-num">${info.title}</h2>
	</div>
</div>

<div class="container-fluid">
	<div class="main__div--menu-wrap">
		<ul class="nav navbar-nav second-navbar">
			<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/detail/main/${info.num}" id="menu">스토리</a></li>
			<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/detail/policy/${info.num}" id="menu">반환.정책</a></li>
			<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/detail/news/${info.num}" id="menu">새소식</a></li>
			<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/detail/community/${info.num}" id="menu">커뮤니티</a></li>
			<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/detail/supporter/${info.num}" id="menu">서포터</a></li>
		</ul>
	</div>
</div>