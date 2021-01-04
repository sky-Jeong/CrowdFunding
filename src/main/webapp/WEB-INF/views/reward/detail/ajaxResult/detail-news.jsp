<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-hover" id="news-list">
	<c:forEach items="${newsVOs}" var="vo">
		<tr>
			<td>
				<div class="td_news-detail" title="${vo.newsNum}">
					<div id="news-category">${vo.category}</div>
					<div>
						<span id="news-title">${vo.title}</span>
						<p><span id="news-reg-date">${vo.uploadDate}일전</span></p>
					</div>
				</div>
			</td>
		</tr>
	</c:forEach>
</table>