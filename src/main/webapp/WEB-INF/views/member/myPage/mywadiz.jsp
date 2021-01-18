<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 - 마이하디즈</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.container{
				border: 1px solid red;
				width: 68%;
				padding: 0px;
			}
			
			/* Left wrapper */
			.left-wrapper{
				border-right: 1px solid #EAEAEA;
				width: 25%;
				padding: 2rem;
				float: left;
			}
			
			.left-header{
				text-align: center;
				padding: 2rem 0px 3rem;
				margin-bottom: 2rem;
				border-bottom: 1px solid #EAEAEA;
			}
			
			#member-name{
				color: #5D5D5D;
				font-size: 1.7rem;
			}
			
			#member-name span{
				color: black !important;
				font-weight: bold;
			}
			
			#member-name i{
				font-weight: 300;
			}
			
			.left-header div:nth-child(2){
				color: #A6A6A6;
				font-size: 1.2rem;
				font-weight: 300;
			}
			
			.ul-stlye{
				padding: 0px;
				list-style: none;
			}
			
			.menu-list li{
				padding: 1rem;
				border-radius: 5px;
				cursor: pointer;
			}
			
			.menu-list li:hover{
				color: #00c4c4;
				box-shadow: 5px 5px 5px #EAEAEA;
			}
			
			.activate{
				color: #00c4c4;
				box-shadow: 5px 5px 5px #EAEAEA;
			}
			/* Fin: left wrapper */
			
			.right-wrapper{
				width: 75%;
				float: left;
				padding: 2rem;
				border: 1px solid blue;
			}
			
			.funding-cards{
			
				width: 100%;
			
				display: table;
				padding: 2rem 0px;
				
				border: 1px solid #D5D5D5;
				border-radius: 8px;
				
				text-align: center;
				box-shadow: 1px 1px 3px 2px #EAEAEA;
			
			}
			
			.funding-cards li{
				width: 28%;
				display:inline-table;
				margin: 0px 1rem;
				padding: 1.2rem 0px;
			}
			
			.funding-cards li:nth-child(2){
				width: 33%;
				margin: 0px;
				border-left: 1px solid #D5D5D5;
				border-right: 1px solid #D5D5D5;
			}

			a:hover{
				text-decoration: none;
			}
			
			.funding-cards li a{
				color: #353535;
			}			
			
			.card-title{
				display: block;
				margin: 0.5rem 0px;
			}
			
			.title-count{
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			.title-count b{
				font-size: 2.5rem;
			}
			
			.funding-summary-title{
				
				padding-left: 0.5rem;
				margin-bottom: 1.3rem;	
			
				font-size: 1.75rem;
				font-weight: 700;
			
			}
		
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>
		
		<div class="container">	
		
			<div class="contents-wrapper">
			
				<div class="left-wrapper">
				
					<div class="left-header">
						<div id="member-name">
							<span>sky</span> 님 <i class="glyphicon glyphicon-menu-right" style="font-size: 1.4rem;"></i>
						</div>
						<div>
							서포터 ・ 개인 회원
						</div>
					</div>
					
					<div>
						<div>
							<ul class="ul-stlye menu-list">
								<li>서포터</li>
								<li>메이커</li>
							</ul>
						</div>
					</div>
				
				</div>
			
				<div class="right-wrapper">
				
					<!-- 서포터 영역 -->
					<div class="funding-summary">
					
						<div class="funding-summary-title">나의 프로젝트</div>
					
						<ul class="ul-stlye funding-cards">
							
							<li>
								<a href="">
									<span class="card-title title-count">펀딩하기</span>
									<span class="title-count"><b>0</b> 회</span>
								</a>
							</li>
							
								
							<li>
								<a href="">
									<span class="card-title title-count">좋아요</span>
									<span class="title-count"><b>0</b> 회</span>
								</a>
							</li>
							
								
							<li>
								<a href="">
									<span class="card-title title-count">지지서명</span>
									<span class="title-count"><b>0</b> 회</span>
								</a>
							</li>
						
						</ul>
						
					</div>
				
				</div>
			
			</div>
			
		</div>
		
	</body>
	
	<script type="text/javascript">


	
	</script>
	
</html>