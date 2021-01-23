<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${comment}" var="cmt">

	<div style="margin-bottom: 3rem;">
	
		<!-- c:forEach 사용 -->
		<!-- step: 0 경우 comment -->
		<div class="comment-header">
			<span id="comment-writer">${cmt.memberVO.memberName}</span> <span id="comment-summary">${cmt.category} ・ ${cmt.regTime}</span>
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

</c:forEach>