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
			
			#btn_move-new-list{
				color: #8C8C8C;
			}
			
			.div_news-area{
				padding: 2.3rem 0px 0px;
				border-bottom: 1px solid #EAEAEA;
			}
			
			#news-category{
				color: #5D5D5D;
				margin: 0.3rem 0px;
				font-size: 1.2rem;
				font-weight: bold;
			}
			
			#news-title{
				font-size: 2rem;
				font-weight: bold;
			}
			
			#news-reg-date{
				font-size: 1.2rem;
				font-weight: 200;
			}
			
			#div_share-btn{
				margin: 2rem 0px;
			}
			
			#btn_share-link{
				color: #8C8C8C;
			}
			
		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			<div class="container">
							
				<div class="contents-area left-contents">
				
					<div>
						<button class="btn btn-default" id="btn_move-new-list">
							<i class="glyphicon glyphicon-menu-left"></i> 목록으로 이동
						</button>
					</div>
					
					<div class="div_news-area" id="div_title-area">
						<div>
							<div id="news-category">${news.category}</div>
							<div>
								<span id="news-title">${news.title}</span>
								<p style="margin-top: 0.5rem;"><span id="news-reg-date">${news.writeDate}</span></p>
							</div>
						</div>
					</div>
				
					<div class="div_news-area" id="div_contents-area">
						<div id="news-contents">${news.contents}</div>
						<div id="div_share-btn">
							<button class="btn btn-default" id="btn_share-link">
								<i class="glyphicon glyphicon-paperclip"></i> 공유
							</button>
						</div>
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
	
	<script type="text/javascript">

		var like = '${like}';
		var projectNum = '${info.num}';
		var login = '${login.memberName}';
	
		likeChk(like);
		
		$("#btn_move-new-list").click(function(){
			location.href = "/funding/detail/news/"+projectNum;
		});

		$("#btn_share-link").click(function(){
			copyURL(location.href);
		});
		
	</script>
	
</html>