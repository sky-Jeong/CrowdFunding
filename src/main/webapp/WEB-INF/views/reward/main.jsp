<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 펀딩 - 크라우드펀딩</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<style type="text/css">
			/* 메인 색상 : rgba(0,178,178,.99) select color: #00B2B2 default: #353535*/
			/*border: 2px solid #00B2B2;*/
			.main__div--menu-wrap{
				margin: 0px auto;
				width: 100%;
				float: left;
				display: flex;
				justify-content: center;
			}
			.second-navbar{
				text-align: center;
			}
			.second-navbar li{
				margin: 0px 2.5rem;
				text-align: center;
			}
			.second-navbar li a{
				font-size: 1.7rem;
				color:#5D5D5D;
			}
			.slide-image{
				width: 100%;
				height: 50rem;
			}
			.main__div--slide-image{
				width:100%;
			}
			
		    ul,li{
		    	list-style:none;
		    }
		    
		    .slide-image{
		    	height:380px;
		    	overflow:hidden;
		    }
		    
		    .slide-image ul{
		    	padding-left: 0px;
		    	width:calc(100% * 6);
		    	display:flex;
		    	animation:slide 25s infinite;
		    } /* slide를 8초동안 진행하며 무한반복 함 */
		    
		    .slide-image li{
		    	width:calc(100% / 6);
		    	height: 380px;
		    	cursor: pointer;
		    }
		    
		    .slide-image li:nth-child(1){
		    	background:#aaa;	    
		    	background-image: url("https://cdn1.wadiz.kr/images/20201214/1607924855906.png/wadiz/optimize/");	
		    	background-size: cover;
		    }
		    
		    .slide-image li:nth-child(2){
		    	background:#faa;
		    	background-image: url("https://cdn.wadiz.kr/ft/images/green001/2020/1113/20201113125745274_503.jpg/wadiz/optimize/");
		    	background-size: cover;
		    }
		    
		    .slide-image li:nth-child(3){
		    	background:#afa;
		    	background-image: url("https://cdn1.wadiz.kr/images/20201214/1607924808118.png/wadiz/optimize");
		    	background-size: cover;
		    }
		    
		    .slide-image li:nth-child(4){
		    	background:#aaf;
		    	background-image: url("https://cdn.wadiz.kr/ft/images/green001/2020/1210/20201210143226033_1050.png/wadiz/optimize/");
		   		background-size: cover;
		    }
		    
   		    .slide-image li:nth-child(5){
		    	background:#faf;
		    	background-image: url("https://cdn.wadiz.kr/ft/images/green001/2020/1211/20201211184134072_1122.jpg/wadiz/optimize/");
		    	background-size: cover;
		    }
		    
   		    .slide-image li:nth-child(6){
		    	background:#aff;
		    	background-image: url("https://cdn.wadiz.kr/ft/images/green001/2020/1113/20201113125722896_632.jpg/wadiz/optimize/");
		    	background-size: cover;
		    }
		    
		    @keyframes slide{
		    	0% {margin-left:0;}
		    	6% {margin-left:0;}
		    	16% {margin-left:-100%;}
		    	21% {margin-left:-100%;}
		    	31% {margin-left:-200%;}
		    	37% {margin-left:-200%;}
		    	47% {margin-left:-300%;}
		    	53% {margin-left:-300%;}
		    	63% {margin-left:-400%;}
		    	69% {margin-left:-400%;}
		    	79% {margin-left:-500%;}
		    	85% {margin-left:-500%;}
		    	100% {maring-left:0;}
		    }

		    .main__div--slide-show-info{
		    	color: white;
		    	width: 80%;
		    	margin: 0px auto;
		    	padding: 22rem 0px 0px;
		    }
		    
		    .main__div--container{
		    	width: 100%;
		    	padding: 5rem 19rem 2rem;
		    }
		    
		    .main__div--category-wrap{
		    	width: 100%; 
		    }
		    
		    .main__a--category{
		    	padding: 1rem 0.5rem;
		    	display: inline-block;
		    	margin-right: 0.5rem;
		    	text-decoration: none;
		    }
		    
		    .main__span--category-area{
		    	text-align: center;
		    	box-sizing: border-box;
		    	padding: 0px 1rem;
		    }
		    
		    .main__span--category-circle{
		    	display: inline-block;
		    	border-radius: 50%;
		    	width: 5.5rem; height: 5.5rem;
		    	background-size: cover;
		    }
		    
		    .main__span--category-name{
		    	display: block;
		    	padding-top: 0.5rem;
		    	font-size: 1.3rem;
		    	text-decoration: none;
		    	color: #353535;
		    }
		   
		   .main__button--paging{
 			    width: 5rem; height: 11rem;
		    	font-size: 2rem;
				border: none;
				background: none;
		   }
		   
		    #main__button--next-btn{
		    	float: right;
		    }
		    
		    #main__button--before-btn{
		    	float: left;
		    }
		    
		    a:hover{
		    	text-decoration: none;
		    }
		    
		    a:hover .main__span--category-circle{
		    	border: 3px solid #00B2B2;
		    }
		    
		    .main__div--main-content-area{
		    	border-bottom: 1px solid #BDBDBD;
		    }
		    
			.main__span--select-area {
			    display: inline-block;
			    float: right;
			    margin-top: 2.5rem;
			}
		    
		    .main__div--project-card-item{
		    	display: inline-block;
		    	margin: 0px 0.98rem 6rem;
		    }
		    
		    .main__span--project-card-item{
		    	display: block;
		    	width: 32rem; height: 18rem;
		    	border-radius: 3px;
		    	background-size: cover;
		    }
		    
		    .main__div--project-card-title{
		    	margin: 1rem 0px 0.5rem;
		    	width: 32rem;
		    }
		    
		    .main__div--project-card-title a{
		    	color: #000000;
		    	font-size: 1.6rem;
		    }
		    
		    .main__span--project-summary{
		    	color: #A1A1A1;
		    	font-size: 1.3rem;
		    	letter-spacing: 0.1rem;
		    }
		    
		    .main__span--project-summary-2{
		    	color: #A1A1A1;
		    	font-size: 1.4rem;
		    }
		    
		    .main__span--project-achieve{
		    	color: #00B2B2;
		    	font-size: 1.8rem;
		    }
		    
		    #category-wrap{
		    	padding-top: 0.2rem;
		    }
		    
		</style>

	</head>
	
	<body>
	
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
			<div class="container-fluid">
				<div class="main__div--menu-wrap">
					<ul class="nav navbar-nav second-navbar">
						<li><a href="#">펀딩 홈</a></li>
						<li><a href="#">카테고리</a></li>
						<li><a href="#">오픈예정</a></li>
					</ul>
				</div>
			</div>
			
			<!-- main page slide -->
			<div class="main__div--slide-image">
				<div class="slide-image">
					<ul class="main__ul--slide-wrap">
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 1</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 2</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 3</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 4</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 5</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
						<li class="main__li--slide-item">
							<div class="main__div--slide-show-info">
								<h1>슬라이드 테스트 6</h1>
								<span>슬라이드 내용을 작성해주세요.</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- fin: main page slide -->

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
							<h3 style="display: inline-block;">전체보기</h3>
							<div class="main__span--select-area">
								<select name="status">
									<option value="all">전체</option>
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
							<button onclick="setRewardPage()" class="btn btn-default" id="btn__show-more" style="width:100%; border: none;">더 보기</button>
						</div>
						
					</div>
				</div>
			</div>

		</main>
		
		<script type="text/javascript">
		
			var page = 0;
			var size = 10;
			var rewardPage = 0;
			var btnLastChk;
			
			getCategory(page);
			getRewardList();

			function setRewardPage(){
				rewardPage++;
				getRewardList();
			}

			function getRewardList(){
				
				$.ajax({
					url:"/funding/list",
					type:"get",
					data:{
						rewardPage:rewardPage
					},
					success:function(data){
						$("#reward-list").append(data);
					}
				});
				
			}

			function setPage(cal){
				if(cal == 'plus'){
					page++;
				} else if (cal == 'minus'){
					page--;
				}
				getCategory(page);
			}
		
			function getCategory(page){
				$.ajax({
					url:"/category/list",
					type:"post",
					data:{
						page:page,
						size:size
					},
					success:function(data){
						$("#category-wrap").empty();
						$("#category-wrap").append(data);
					}
					
				})
			}
		
		</script>
		
	</body>
	
</html>