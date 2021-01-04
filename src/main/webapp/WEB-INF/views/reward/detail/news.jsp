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

			.main__news-wrapper{
				width: 100%;
				padding: 2rem 0px 0px;
			}
			
			.news-header-wrapper{
				padding: 0.5rem 0px;
				margin: 1rem 0px;
				border-bottom: 1px solid #6F6F6F;
			}
			
			.news-header{
				display: inline-block;
				font-size: 2rem;
				font-weight: bold;
			}
			
			#news__total-count{
				color: #00b2b2;
			}
			
			.news-header-select{
				float:right;
				display: inline-block;
			}
			
			.dropdown{
				margin-top: -0.2rem;
				display: inline-block;
			}
			
			.dropdown-toggle{
				color: #5D5D5D;
				font-size: 1.5rem;
				font-weight: 250;
				border: none;
				background-color: white;
			}
			
			.dropdown-toggle:hover{
				color: #5D5D5D;
				background-color: white;
			}
			
			.dropdown-menu a{
				cursor: pointer;
			}

			#news-category{
				color: #5D5D5D;
				margin: 0.3rem 0px;
				font-size: 1.2rem;
				font-weight: bold;
			}

			#news-title{
				font-size: 2rem;
				font-weight: 200;
			}
			
			#news-reg-date{
				font-size: 1.2rem;
				font-weight: 200;
			}
			
			#news-list td{
				cursor: pointer;
				border-top: none;
				border-bottom: 1px solid #EAEAEA;
			}
			
		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			
			<div class="container">
			
				<div class="contents-area left-contents">
				
					<div class="main__news-wrapper">
						
						<!-- news wrapper -->
						<div class="news-header-wrapper">
						
							<div class="news-header">
								<span>새소식</span><span id="news__total-count"> 1</span>
							</div>
							
							<div class="news-header-select">
							
								<div class="dropdown">
									<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">구분
										<span class="caret"></span></button>
									<ul class="dropdown-menu select-menu">
										<li class="li_select-menu" value=""><a>전체</a></li>
										<li class="li_select-menu" value="F"><a>FAQ</a></li>
										<li class="li_select-menu" value="P"><a>결제</a></li>
										<li class="li_select-menu" value="C"><a>교환/펀딩금 반환/AS</a></li>
										<li class="li_select-menu" value="A"><a>달성률</a></li>
										<li class="li_select-menu" value="S"><a>리워드 발송</a></li>
										<li class="li_select-menu" value="M"><a>메이킹스토리</a></li>
										<li class="li_select-menu" value="E"><a>이벤트</a></li>
										<li class="li_select-menu" value="R"><a>리워드 안내</a></li>
										<li class="li_select-menu" value="etc"><a>기타</a></li>
									</ul>
								</div>
								
								<div class="dropdown">								
									<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">정렬
										<span class="caret"></span></button>
									<ul class="dropdown-menu order-menu">
										<li class="li_order-menu" value="C"><a>최신순</a></li>
										<li class="li_order-menu" value="P"><a>과거순</a></li>
									</ul>
								</div>
								
							</div>
							
						</div>
						
					</div>
					<!-- finish: new wrapper -->
					
					<div id="div__list-result">
					
					</div>
					
				
				</div>
				
				<div class="contents-area right-contents">
					<c:import url="./common/detail_right_contents.jsp"></c:import>
				</div>
			
			</div>
		
		</main>
	
	</body>
	
	<script type="text/javascript">

		var order = "";
		var menu = "";
		var projectNum = $("#h2__project-num").attr("title");

		getNewsList(menu, order);
		
		$(".li_select-menu").click(function(){
			menu = $(this).attr("value");
			getNewsList(menu, order);
		});
		
		$(".li_order-menu").click(function(){
			order = $(this).attr("value");
			getNewsList(menu, order);
		});

		// get news list method
		function getNewsList(menu, order){

			$.ajax({
				url: "/news/list",
				type: "get",
				data:{
					tmpNum:projectNum,
					menu:menu,
					order:order
				},
				success: function(data){
					
					$("#div__list-result").empty();
					$("#div__list-result").append(data);

					$(".td_news-detail").click(function(){
						getNewsDetail($(this).attr("title"));
					});
					
				}
			});
			
		}

		function getNewsDetail(title){
			location.href = "/news/detail/"+title;
		}
	
	</script>
	
	<script type="text/javascript" src="/js/detail/select.js"></script>
	<script type="text/javascript" src="/js/detail/detail_right_contents.js"></script>
	
</html>