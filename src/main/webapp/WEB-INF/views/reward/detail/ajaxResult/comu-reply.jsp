<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${reply}" var="cmt">

	<div class="div_reply-wrapper">
	
		<div class="comment-header">
			<span id="comment-writer">${cmt.fundingVO.makerVO.company}</span> <span id="comment-summary">${cmt.regTime}시간 전</span>
		</div>
		
		<div id="comment-contents">
			${cmt.contents}
		</div>
		
	</div>

</c:forEach>
<!-- reply 달기 텍스트 -->
<div class="div_reply-txt-area">
	<form method="post" action="/comu/reply/enter">
		<div class="input-group">
			<textarea class="form-control reply-txt reply-enter" placeholder="답글을 입력하세요" name="contents"></textarea>
			<span class="input-group-addon reply-enter reply-btn">입력</span>
		</div>
	</form>
</div>