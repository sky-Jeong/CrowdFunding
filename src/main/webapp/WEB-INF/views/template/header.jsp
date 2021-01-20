<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">Hadiz</a>
		</div>
		<ul class="nav navbar-nav">
      		<li><a href="${pageContext.request.contextPath}/funding/main">펀딩하기</a></li>
      		<li><a href="#">투자하기</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
	      		<form class="navbar-form navbar-left" action="#">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="검색할 프로젝트를 입력하세요.">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</li>
			
			<c:if test="${login == null}">
				<li><a href="${pageContext.request.contextPath}/member/login"><span class="glyphicon glyphicon-user"></span> 로그인</a></li>
				<li><a href="${pageContext.request.contextPath}/member/sign"><span class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
			</c:if>
			
			<c:if test="${login != null}">
				<li><a href="${pageContext.request.contextPath}/mypage/mywadiz"><span class="glyphicon glyphicon-user"></span> 마이페이지</a></li>
				<li><a href="${pageContext.request.contextPath}/member/logout"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
			</c:if>
			
			<c:if test="${login != null}">
				<li>
					<a href="${pageContext.request.contextPath}/studio/rewardRegistration"><span class="header__span--project">프로젝트 오픈 신청</span></a>
				</li>
			</c:if>
			
		</ul>
	</div>
</nav>