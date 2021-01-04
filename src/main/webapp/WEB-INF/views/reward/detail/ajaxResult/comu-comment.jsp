<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${comment}" var="cmt">

	<div style="margin-bottom: 3rem;">
	
		<!-- c:forEach 사용 -->
		<!-- step: 0 경우 comment -->
		<div class="comment-header">
			<span id="comment-writer">${cmt.writer}</span> <span id="comment-summary">${cmt.category} ・ ${cmt.regTime}시간 전</span>
		</div>
		
		<div id="comment-contents">
			${cmt.contents}
		</div>
		
		<div style="margin-bottom: 1rem;">
			<button class="btn_comment-reply" title="${cmt.writeNum}">답글</button>
		</div>
		<!-- fin: comment -->
		
		<div class="div_reply-area reply-${cmt.writeNum}" title="${cmt.writeNum}">
			
		</div>
	
		
	</div>

<%-- 	<!-- step: 1 경우 -->
		<!-- reply ajax로 제어? 다 긁어오고 감췄다가 보여주기? -->
		<div class="div_reply-area">
		
			<c:if test="${cmt.step == 1}">
		
				<!-- for문 돌려서 reply 표기 -->

		
			</c:if>
			
		</div>
				
		<!-- reply 달기 텍스트 -->
		<div class="div_reply-area">
			<input type="text" placeholder="답글을 입력하세요" id="reply-txt">
		</div> --%>

</c:forEach>