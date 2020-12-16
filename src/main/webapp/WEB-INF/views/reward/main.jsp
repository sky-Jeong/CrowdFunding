<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈펀딩 - 크라우드펀딩</title>
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
		    	padding: 5rem 20rem;
		    }
		    
		    .main__div--category-wrap{
		    	width: 100%; 
		    	border: 1px solid blue;
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
					<div class="main__div--category-wrap">
						
					</div>
				</div>
			</div>

		</main>
		
		<script type="text/javascript">
		
			var page = 0;
			var size = 10;
			getCategory(page);

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
						$(".main__div--category-wrap").empty();
						$(".main__div--category-wrap").append(data);
					}
					
				})
			}
		
		</script>
		
	</body>
	
</html>