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
		
		<style type="text/css">

			.contents-header{
				color: #474747;
				font-size: 2.5rem;
				font-weight: 200;
			}
			
			#surporter-count{
				color: #00b2b2;
				font-weight: 350;
			}
			
			.div_supporter-wrapper{
				margin: 3rem 0px 2rem;
			}
			
			.support-summary{
				color: #4C4C4C;
				font-size: 1.7rem;
				font-weight: 300;
				padding: 2.5rem 0px;
				border-bottom: 1px solid #EAEAEA;
			}
			
			.supporter-info{
				font-weight: 500;
			}
			
			.support-regTime{
				color: #8C8C8C;
				font-size: 1.3rem;
			}

		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			<div class="container">
				
				<div class="contents-area left-contents">
					
					<div class="contents-header">
						<span>
							현재 이 프로젝트에<br>
							<span id="surporter-count">${supporterCount}명</span>의 참여가 이루어졌습니다.
						</span>
					</div>
					
					<div class="div_supporter-wrapper">
						
						<!-- supporter list 반복문 -->
						<c:forEach items="${info.supporterVOs}" var="vo">
						
							<div class="support-summary">
							
								<c:choose>
									<c:when test="${vo.nameYN == 'Y'}">
										<span class="supporter-info supporter-name">${vo.memberVO.memberName}</span>님이 
									</c:when>
									<c:otherwise>
										<span class="supporter-info supporter-name">익명의 서포터</span>님이
									</c:otherwise>
								</c:choose>
								
								<c:choose>
									<c:when test="${vo.amountYN == 'Y'}">
										<span class="supporter-info supporter-funding">${vo.amountStr} ${vo.division}</span>으로 참여하셨습니다. 
									</c:when>
									<c:otherwise>
										<span class="supporter-info supporter-funding">${vo.division}</span>으로 참여하셨습니다.
									</c:otherwise>
								</c:choose>
								
								<div class="support-regTime">${vo.regTimeCal}</div>
								
							</div>
							
						</c:forEach>
					
					</div>
					
				</div>
				
				<div class="contents-area right-contents">
					<c:import url="./common/detail_right_contents.jsp"></c:import>
				</div>
				
			</div>
		
		</main>
	
	</body>
	
	<script type="text/javascript">
		
	</script>
	
	<script type="text/javascript" src="/js/detail/select.js"></script>
	<script type="text/javascript" src="/js/detail/detail_right_contents.js"></script>
	
</html>