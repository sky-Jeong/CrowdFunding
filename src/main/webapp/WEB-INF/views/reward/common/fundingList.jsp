<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
	<div class="main__div--container">
		<div class="main__div--category-wrap" id="category-wrap">
			
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="main__div--container" id="category-wrap">
		<div class="main__div--category-wrap">
			<!-- sort area -->
			<div class="main__div--main-content-area">
				<h3 style="display: inline-block;" id="main__div--categoryName">전체보기</h3>
				<div class="main__span--select-area">
					<select name="status" id="status">
						<option value="">전체</option>
						<option value="Y">진행중</option>
						<option value="F">종료된</option>
					</select>
					<select name="order">
						<option value="recommend">추천순</option>
						<option value="popular">인기순</option>
						<option value="amount">펀딩액순</option>
						<option value="closing">마감임박순</option>
						<option value="recent">최신순</option>
						<option value="support">응원참여자순</option>
					</select>
				</div>
			</div>
			<!-- fin: sort area -->
			
			<!-- contents area -->
			<div id="reward-list" style="padding: 2rem 0rem;">
			
			</div>

			<div id="main__div--btn-area">
				<button class="btn btn-default" id="btn__show-more" style="width:100%; border: none;">더 보기</button>
			</div>
			
		</div>
	</div>
</div>